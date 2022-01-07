
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_medium {int md_mtx; int md_pktbuf; } ;
struct packet {int dummy; } ;


 struct packet* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pf_list ;

struct packet *
medium_get_next_packet(struct wtap_medium *md)
{
 struct packet *p;

 mtx_lock(&md->md_mtx);
 p = STAILQ_FIRST(&md->md_pktbuf);
 if (p == ((void*)0)){
  mtx_unlock(&md->md_mtx);
  return ((void*)0);
 }

 STAILQ_REMOVE_HEAD(&md->md_pktbuf, pf_list);
 mtx_unlock(&md->md_mtx);
 return p;
}
