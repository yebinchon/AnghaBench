
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; int st_mtime; int st_mode; } ;
typedef int ssize_t ;
typedef int off_t ;
typedef int header1 ;
typedef enum filetype { ____Placeholder_filetype } filetype ;
typedef int FILE ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ S_ISREG (int ) ;
 int cat_fd (unsigned char*,int,int*,int ) ;
 int fclose (int *) ;
 scalar_t__ fflag ;
 int file_gettype (unsigned char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int gz_uncompress (int ,int ,char*,int,int*,char*) ;
 int infile ;
 int infile_clear () ;
 int infile_set (char*,size_t) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ lflag ;
 int maybe_warn (char*) ;
 int maybe_warnx (char*) ;
 int print_list (int ,size_t,int ,int ) ;
 int print_test (char*,int) ;
 int print_verbage (int *,int *,int,int) ;
 int read_retry (int ,unsigned char*,int) ;
 int stdout ;
 scalar_t__ tflag ;
 int unbzip2 (int ,int ,char*,int,int*) ;
 int unlz (int ,int ,char*,int,int*) ;
 int unpack (int ,int ,char*,int,int*) ;
 int unxz (int ,int ,char*,int,int*) ;
 scalar_t__ vflag ;
 int * zdopen (int ) ;
 int zuncompress (int *,int ,char*,int,int*) ;

__attribute__((used)) static void
handle_stdin(void)
{
 struct stat isb;
 unsigned char header1[4];
 size_t in_size;
 off_t usize, gsize;
 enum filetype method;
 ssize_t bytes_read;

 FILE *in;



 if (fflag == 0 && lflag == 0 && isatty(STDIN_FILENO)) {
  maybe_warnx("standard input is a terminal -- ignoring");
  goto out;
 }


 if (fstat(STDIN_FILENO, &isb) < 0) {
  maybe_warn("fstat");
  goto out;
 }
 if (S_ISREG(isb.st_mode))
  in_size = isb.st_size;
 else
  in_size = 0;
 infile_set("(stdin)", in_size);

 if (lflag) {
  print_list(STDIN_FILENO, in_size, infile, isb.st_mtime);
  goto out;
 }

 bytes_read = read_retry(STDIN_FILENO, header1, sizeof header1);
 if (bytes_read == -1) {
  maybe_warn("can't read stdin");
  goto out;
 } else if (bytes_read != sizeof(header1)) {
  maybe_warnx("(stdin): unexpected end of file");
  goto out;
 }

 method = file_gettype(header1);
 switch (method) {
 default:

  if (fflag == 0) {
   maybe_warnx("unknown compression format");
   goto out;
  }
  usize = cat_fd(header1, sizeof header1, &gsize, STDIN_FILENO);
  break;

 case 132:
  usize = gz_uncompress(STDIN_FILENO, STDOUT_FILENO,
         (char *)header1, sizeof header1, &gsize, "(stdin)");
  break;

 case 133:
  usize = unbzip2(STDIN_FILENO, STDOUT_FILENO,
    (char *)header1, sizeof header1, &gsize);
  break;


 case 128:
  if ((in = zdopen(STDIN_FILENO)) == ((void*)0)) {
   maybe_warnx("zopen of stdin");
   goto out;
  }

  usize = zuncompress(in, stdout, (char *)header1,
      sizeof header1, &gsize);
  fclose(in);
  break;


 case 130:
  usize = unpack(STDIN_FILENO, STDOUT_FILENO,
          (char *)header1, sizeof header1, &gsize);
  break;


 case 129:
  usize = unxz(STDIN_FILENO, STDOUT_FILENO,
        (char *)header1, sizeof header1, &gsize);
  break;


 case 131:
  usize = unlz(STDIN_FILENO, STDOUT_FILENO,
        (char *)header1, sizeof header1, &gsize);
  break;

 }


        if (vflag && !tflag && usize != -1 && gsize != -1)
  print_verbage(((void*)0), ((void*)0), usize, gsize);
 if (vflag && tflag)
  print_test("(stdin)", usize != -1);




out:
 infile_clear();
}
