
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_file {int dummy; } ;
typedef int FILE ;


 struct input_file* dopath (struct input_file*,char const*) ;
 int ensure_m4path () ;
 int * fopen (char const*,char*) ;
 int set_input (struct input_file*,int *,char const*) ;

struct input_file *
fopen_trypath(struct input_file *i, const char *filename)
{
 FILE *f;

 f = fopen(filename, "r");
 if (f != ((void*)0)) {
  set_input(i, f, filename);
  return i;
 }
 if (filename[0] == '/')
  return ((void*)0);

 ensure_m4path();

 return dopath(i, filename);
}
