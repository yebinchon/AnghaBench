
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtap_vap {int id; int av_md; } ;
struct mbuf {int dummy; } ;


 int medium_transmit (int ,int ,struct mbuf*) ;

__attribute__((used)) static int
wtap_medium_enqueue(struct wtap_vap *avp, struct mbuf *m)
{

 return medium_transmit(avp->av_md, avp->id, m);
}
