
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int outfile ;
typedef int off_t ;


 int PATH_MAX ;
 scalar_t__ cflag ;
 scalar_t__ dflag ;
 int file_compress (char*,char*,int) ;
 int file_uncompress (char*,char*,int) ;
 int infile_clear () ;
 int infile_set (char*,int) ;
 int print_test (char*,int) ;
 int print_verbage (char*,char*,int,int) ;
 scalar_t__ tflag ;
 scalar_t__ vflag ;

__attribute__((used)) static void
handle_file(char *file, struct stat *sbp)
{
 off_t usize, gsize;
 char outfile[PATH_MAX];

 infile_set(file, sbp->st_size);
 if (dflag) {
  usize = file_uncompress(file, outfile, sizeof(outfile));

  if (vflag && tflag)
   print_test(file, usize != -1);

  if (usize == -1)
   return;
  gsize = sbp->st_size;
 } else {
  gsize = file_compress(file, outfile, sizeof(outfile));
  if (gsize == -1)
   return;
  usize = sbp->st_size;
 }
 infile_clear();


 if (vflag && !tflag)
  print_verbage(file, (cflag) ? ((void*)0) : outfile, usize, gsize);

}
