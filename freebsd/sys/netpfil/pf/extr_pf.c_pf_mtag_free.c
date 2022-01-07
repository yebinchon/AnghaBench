
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_tag {int dummy; } ;


 int pf_mtag_z ;
 int uma_zfree (int ,struct m_tag*) ;

__attribute__((used)) static void
pf_mtag_free(struct m_tag *t)
{

 uma_zfree(pf_mtag_z, t);
}
