
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ext_buf; int ext_type; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 int ENOMEM ;
 int EXT_PACKET ;
 int MCLBYTES ;
 int trash_init (int *,int ,int) ;
 int * uma_zalloc_arg (int ,struct mbuf*,int) ;
 int zone_clust ;

__attribute__((used)) static int
mb_zinit_pack(void *mem, int size, int how)
{
 struct mbuf *m;

 m = (struct mbuf *)mem;
 if (uma_zalloc_arg(zone_clust, m, how) == ((void*)0) ||
     m->m_ext.ext_buf == ((void*)0))
  return (ENOMEM);
 m->m_ext.ext_type = EXT_PACKET;



 return (0);
}
