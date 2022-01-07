
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct physical {int dummy; } ;
struct mbuf {int dummy; } ;
struct link {int dummy; } ;
struct TYPE_4__ {int active; } ;
struct TYPE_3__ {TYPE_2__ mp; } ;
struct bundle {TYPE_1__ ncp; } ;


 int LogWARN ;
 int MB_MPIN ;
 struct physical* link2physical (struct link*) ;
 int log_Printf (int ,char*) ;
 int m_freem (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;
 int mp_Assemble (TYPE_2__*,struct mbuf*,struct physical*) ;

struct mbuf *
mp_Input(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  struct physical *p = link2physical(l);

  if (!bundle->ncp.mp.active)

    return bp;

  if (p == ((void*)0)) {
    log_Printf(LogWARN, "DecodePacket: Can't do MP inside MP !\n");
    m_freem(bp);
  } else {
    m_settype(bp, MB_MPIN);
    mp_Assemble(&bundle->ncp.mp, bp, p);
  }

  return ((void*)0);
}
