
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_3__ {int pool; } ;



void
vm_phys_set_pool(int pool, vm_page_t m, int order)
{
 vm_page_t m_tmp;

 for (m_tmp = m; m_tmp < &m[1 << order]; m_tmp++)
  m_tmp->pool = pool;
}
