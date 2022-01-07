
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouplist {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 int out_of_mem () ;

__attribute__((used)) static struct grouplist *
get_grp(void)
{
 struct grouplist *gp;

 gp = (struct grouplist *)calloc(1, sizeof (struct grouplist));
 if (gp == (struct grouplist *)((void*)0))
  out_of_mem();
 return (gp);
}
