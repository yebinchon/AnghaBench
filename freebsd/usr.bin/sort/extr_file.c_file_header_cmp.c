
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_header {scalar_t__ file_pos; int si; int * fr; } ;


 int list_coll (int *,int *) ;

__attribute__((used)) static int
file_header_cmp(struct file_header *f1, struct file_header *f2)
{

 if (f1 == f2)
  return (0);
 else {
  if (f1->fr == ((void*)0)) {
   return ((f2->fr == ((void*)0)) ? 0 : +1);
  } else if (f2->fr == ((void*)0))
   return (-1);
  else {
   int ret;

   ret = list_coll(&(f1->si), &(f2->si));
   if (!ret)
    return ((f1->file_pos < f2->file_pos) ? -1 : +1);
   return (ret);
  }
 }
}
