
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_entry {char* name; struct path_entry* next; } ;
struct input_file {int dummy; } ;
typedef int path ;
typedef int FILE ;


 int PATH_MAX ;
 struct path_entry* first ;
 int * fopen (char*,char*) ;
 int set_input (struct input_file*,int *,char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static
struct input_file *
dopath(struct input_file *i, const char *filename)
{
 char path[PATH_MAX];
 struct path_entry *pe;
 FILE *f;

 for (pe = first; pe; pe = pe->next) {
  snprintf(path, sizeof(path), "%s/%s", pe->name, filename);
  if ((f = fopen(path, "r")) != ((void*)0)) {
   set_input(i, f, path);
   return i;
  }
 }
 return ((void*)0);
}
