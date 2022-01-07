
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_mtag {int dummy; } ;
struct m_tag {int dummy; } ;


 int UMA_ALIGN_PTR ;
 int pf_mtag_uminit ;
 int pf_mtag_z ;
 int uma_zcreate (char*,int,int *,int *,int ,int *,int ,int ) ;

void
pf_mtag_initialize()
{

 pf_mtag_z = uma_zcreate("pf mtags", sizeof(struct m_tag) +
     sizeof(struct pf_mtag), ((void*)0), ((void*)0), pf_mtag_uminit, ((void*)0),
     UMA_ALIGN_PTR, 0);
}
