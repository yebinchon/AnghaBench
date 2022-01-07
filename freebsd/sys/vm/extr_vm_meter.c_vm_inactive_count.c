
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int PQ_INACTIVE ;
 int vm_pagequeue_count (int ) ;

u_int
vm_inactive_count(void)
{

 return (vm_pagequeue_count(PQ_INACTIVE));
}
