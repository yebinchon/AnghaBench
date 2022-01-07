
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {int dummy; } ;


 int file_list_add (struct file_list*,char*,int) ;

void
file_list_populate(struct file_list *fl, int argc, char **argv, bool allocate)
{

 if (fl && argv) {
  int i;

  for (i = 0; i < argc; i++)
   file_list_add(fl, argv[i], allocate);
 }
}
