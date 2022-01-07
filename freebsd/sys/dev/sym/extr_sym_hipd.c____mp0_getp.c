
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nump; } ;
typedef TYPE_1__ m_pool_s ;
typedef scalar_t__ m_addr_t ;


 int get_pages () ;

__attribute__((used)) static m_addr_t ___mp0_getp(m_pool_s *mp)
{
 m_addr_t m = (m_addr_t) get_pages();
 if (m)
  ++mp->nump;
 return m;
}
