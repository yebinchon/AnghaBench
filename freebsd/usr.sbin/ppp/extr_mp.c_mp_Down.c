
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fsm; } ;
struct TYPE_4__ {TYPE_1__ ccp; } ;
struct mp {scalar_t__ active; int peer; struct mbuf* inbufs; TYPE_2__ link; int server; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int fsm2initial (int *) ;
 int m_freem (struct mbuf*) ;
 int mp_StopAutoloadTimer (struct mp*) ;
 int mpserver_Close (int *) ;
 int peerid_Init (int *) ;

void
mp_Down(struct mp *mp)
{
  if (mp->active) {
    struct mbuf *next;


    mp_StopAutoloadTimer(mp);


    mpserver_Close(&mp->server);


    fsm2initial(&mp->link.ccp.fsm);


    while (mp->inbufs) {
      next = mp->inbufs->m_nextpkt;
      m_freem(mp->inbufs);
      mp->inbufs = next;
    }

    peerid_Init(&mp->peer);
    mp->active = 0;
  }
}
