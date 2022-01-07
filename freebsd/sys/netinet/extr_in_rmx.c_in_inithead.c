
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rib_head {int rnh_addaddr; } ;


 int _in_rt_was_here ;
 int in_addroute ;
 struct rib_head* rt_table_init (int) ;

int
in_inithead(void **head, int off)
{
 struct rib_head *rh;

 rh = rt_table_init(32);
 if (rh == ((void*)0))
  return (0);

 rh->rnh_addaddr = in_addroute;
 *head = (void *)rh;

 if (_in_rt_was_here == 0 ) {
  _in_rt_was_here = 1;
 }
 return 1;
}
