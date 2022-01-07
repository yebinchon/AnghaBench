
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct stat {scalar_t__ st_mtime; int st_size; int st_mode; } ;
typedef int off_t ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ fflag ;
 int fstat (int ,struct stat*) ;
 int gz_compress (int ,int ,int*,char*,scalar_t__) ;
 int infile_set (char*,int ) ;
 scalar_t__ isatty (int ) ;
 int maybe_warn (char*) ;
 int maybe_warnx (char*) ;
 int print_verbage (int *,int *,int,int) ;
 int tflag ;
 int time (int *) ;
 scalar_t__ vflag ;

__attribute__((used)) static void
handle_stdout(void)
{
 off_t gsize;

 off_t usize;
 struct stat sb;
 time_t systime;
 uint32_t mtime;
 int ret;

 infile_set("(stdout)", 0);

 if (fflag == 0 && isatty(STDOUT_FILENO)) {
  maybe_warnx("standard output is a terminal -- ignoring");
  return;
 }


 ret = fstat(STDIN_FILENO, &sb);
 if (ret < 0) {
  maybe_warn("Can't stat stdin");
  return;
 }

 if (S_ISREG(sb.st_mode)) {
  infile_set("(stdout)", sb.st_size);
  mtime = (uint32_t)sb.st_mtime;
 } else {
  systime = time(((void*)0));
  if (systime == -1) {
   maybe_warn("time");
   return;
  }
  mtime = (uint32_t)systime;
 }

 usize =

  gz_compress(STDIN_FILENO, STDOUT_FILENO, &gsize, "", mtime);

        if (vflag && !tflag && usize != -1 && gsize != -1)
  print_verbage(((void*)0), ((void*)0), usize, gsize);

}
