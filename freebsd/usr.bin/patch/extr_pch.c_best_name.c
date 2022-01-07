
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_name {char* path; } ;


 size_t NEW_FILE ;
 char* compare_names (struct file_name const*,int) ;
 scalar_t__ ok_to_create_file ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
best_name(const struct file_name *names, bool assume_exists)
{
 char *best;

 best = compare_names(names, assume_exists);


 if (best == ((void*)0) && ok_to_create_file)
  best = names[NEW_FILE].path;

 return best ? xstrdup(best) : ((void*)0);
}
