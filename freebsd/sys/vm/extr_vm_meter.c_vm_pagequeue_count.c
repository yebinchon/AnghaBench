
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_4__ {TYPE_1__* vmd_pagequeues; } ;
struct TYPE_3__ {scalar_t__ pq_cnt; } ;


 TYPE_2__* vm_dom ;
 int vm_ndomains ;

__attribute__((used)) static u_int
vm_pagequeue_count(int pq)
{
 u_int v;
 int i;

 v = 0;
 for (i = 0; i < vm_ndomains; i++)
  v += vm_dom[i].vmd_pagequeues[pq].pq_cnt;

 return (v);
}
