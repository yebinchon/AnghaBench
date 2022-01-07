
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct physical {TYPE_1__ cfg; int link; } ;


 int LogWARN ;
 int MODEM_SPEED ;
 int PHYSICAL_FORCE_ASYNC ;
 int PHYSICAL_FORCE_SYNC ;
 int PHYSICAL_FORCE_SYNCNOACF ;
 int PHYSICAL_NOFORCE ;
 int acflayer ;
 int asynclayer ;
 int ccplayer ;
 int hdlclayer ;
 int link_EmptyStack (int *) ;
 int link_Stack (int *,int *) ;
 int log_Printf (int ,char*,char const*) ;
 int lqrlayer ;
 int natlayer ;
 scalar_t__ physical_IsSync (struct physical*) ;
 int physical_SetSync (struct physical*) ;
 int protolayer ;
 int synclayer ;
 int tcpmsslayer ;
 int vjlayer ;

void
physical_SetupStack(struct physical *p, const char *who, int how)
{
  link_EmptyStack(&p->link);
  if (how == PHYSICAL_FORCE_SYNC || how == PHYSICAL_FORCE_SYNCNOACF ||
      (how == PHYSICAL_NOFORCE && physical_IsSync(p)))
    link_Stack(&p->link, &synclayer);
  else {
    link_Stack(&p->link, &asynclayer);
    link_Stack(&p->link, &hdlclayer);
  }
  if (how != PHYSICAL_FORCE_SYNCNOACF)
    link_Stack(&p->link, &acflayer);
  link_Stack(&p->link, &protolayer);
  link_Stack(&p->link, &lqrlayer);
  link_Stack(&p->link, &ccplayer);
  link_Stack(&p->link, &vjlayer);
  link_Stack(&p->link, &tcpmsslayer);

  link_Stack(&p->link, &natlayer);

  if (how == PHYSICAL_FORCE_ASYNC && physical_IsSync(p)) {
    log_Printf(LogWARN, "Sync device setting ignored for ``%s'' device\n", who);
    p->cfg.speed = MODEM_SPEED;
  } else if (how == PHYSICAL_FORCE_SYNC && !physical_IsSync(p)) {
    log_Printf(LogWARN, "Async device setting ignored for ``%s'' device\n",
               who);
    physical_SetSync(p);
  }
}
