
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {int tmp; int * fns; scalar_t__ sz; scalar_t__ count; } ;



void
file_list_init(struct file_list *fl, bool tmp)
{

 if (fl) {
  fl->count = 0;
  fl->sz = 0;
  fl->fns = ((void*)0);
  fl->tmp = tmp;
 }
}
