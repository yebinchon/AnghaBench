
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_list {int dummy; } ;


 int EXIT_FAILURE ;
 int STAILQ_INSERT_TAIL (int *,struct file_list*,int ) ;
 scalar_t__ calloc (int,int) ;
 int err (int ,char*) ;
 int f_next ;
 int ftab ;

__attribute__((used)) static struct file_list *
new_fent(void)
{
 struct file_list *fp;

 fp = (struct file_list *) calloc(1, sizeof *fp);
 if (fp == ((void*)0))
  err(EXIT_FAILURE, "calloc");
 STAILQ_INSERT_TAIL(&ftab, fp, f_next);
 return (fp);
}
