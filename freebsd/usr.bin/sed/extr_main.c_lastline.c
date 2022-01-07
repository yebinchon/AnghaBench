
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 scalar_t__ feof (int ) ;
 int getc (int ) ;
 int infile ;
 int * inplace ;
 scalar_t__ ispan ;
 scalar_t__ next_files_have_lines () ;
 int ungetc (int,int ) ;

int
lastline(void)
{
 int ch;

 if (feof(infile)) {
  return !(
      (inplace == ((void*)0) || ispan) &&
      next_files_have_lines());
 }
 if ((ch = getc(infile)) == EOF) {
  return !(
      (inplace == ((void*)0) || ispan) &&
      next_files_have_lines());
 }
 ungetc(ch, infile);
 return (0);
}
