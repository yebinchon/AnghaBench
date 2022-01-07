
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int num; scalar_t__ mode; int arphys; int brphys; int atphys; int btphys; scalar_t__ rts; scalar_t__ dtr; int port; TYPE_1__* board; } ;
typedef TYPE_2__ cx_chan_t ;
struct TYPE_5__ {int num; } ;


 int ARBADRL (int ) ;
 int ARBADRU (int ) ;
 int ATBADRL (int ) ;
 int ATBADRU (int ) ;
 int BRBADRL (int ) ;
 int BRBADRU (int ) ;
 int BTBADRL (int ) ;
 int BTBADRU (int ) ;
 int CAR (int ) ;
 int CCR_CLRCH ;
 int LIVR (int ) ;
 int MSVR_DTR (int ) ;
 int MSVR_RTS (int ) ;
 int MSV_TXCOUT ;
 scalar_t__ M_ASYNC ;
 int cx_cmd (int ,int ) ;
 int cx_update_chan (TYPE_2__*) ;
 int outb (int ,int) ;
 int outw (int ,unsigned short) ;

void cx_setup_chan (cx_chan_t *c)
{

 outb (CAR(c->port), c->num & 3);


 cx_cmd (c->port, CCR_CLRCH);


 outb (LIVR(c->port), c->board->num << 6 | c->num << 2);


 outb (MSVR_RTS(c->port), 0);
 outb (MSVR_DTR(c->port), c->mode==M_ASYNC ? 0 : MSV_TXCOUT);


 outw (ARBADRU(c->port), (unsigned short) (c->arphys>>16));
 outw (ARBADRL(c->port), (unsigned short) c->arphys);


 outw (BRBADRU(c->port), (unsigned short) (c->brphys>>16));
 outw (BRBADRL(c->port), (unsigned short) c->brphys);


 outw (ATBADRU(c->port), (unsigned short) (c->atphys>>16));
 outw (ATBADRL(c->port), (unsigned short) c->atphys);


 outw (BTBADRU(c->port), (unsigned short) (c->btphys>>16));
 outw (BTBADRL(c->port), (unsigned short) c->btphys);

 c->dtr = 0;
 c->rts = 0;

 cx_update_chan (c);
}
