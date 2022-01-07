
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {size_t count; size_t sz; char const** fns; } ;


 char const** sort_realloc (char const**,int) ;
 char const* sort_strdup (char const*) ;

void
file_list_add(struct file_list *fl, const char *fn, bool allocate)
{

 if (fl && fn) {
  if (fl->count >= fl->sz || (fl->fns == ((void*)0))) {
   fl->sz = (fl->sz) * 2 + 1;
   fl->fns = sort_realloc(fl->fns, fl->sz *
       sizeof(char *));
  }
  fl->fns[fl->count] = allocate ? sort_strdup(fn) : fn;
  fl->count += 1;
 }
}
