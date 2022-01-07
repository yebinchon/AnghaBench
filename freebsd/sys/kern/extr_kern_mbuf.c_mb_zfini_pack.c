
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_buf; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 int MCLBYTES ;
 int trash_dtor (void*,int,int *) ;
 int trash_fini (int ,int ) ;
 int uma_zfree_arg (int ,int ,int *) ;
 int zone_clust ;

__attribute__((used)) static void
mb_zfini_pack(void *mem, int size)
{
 struct mbuf *m;

 m = (struct mbuf *)mem;



 uma_zfree_arg(zone_clust, m->m_ext.ext_buf, ((void*)0));



}
