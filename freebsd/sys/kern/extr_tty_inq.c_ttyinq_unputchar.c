
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttyinq {int ti_linestart; int ti_end; TYPE_1__* ti_lastblock; } ;
struct TYPE_2__ {struct TYPE_2__* tib_prev; } ;


 int MPASS (int) ;
 int TTYINQ_DATASIZE ;

void
ttyinq_unputchar(struct ttyinq *ti)
{

 MPASS(ti->ti_linestart < ti->ti_end);

 if (--ti->ti_end % TTYINQ_DATASIZE == 0) {

  ti->ti_lastblock = ti->ti_lastblock->tib_prev;




  MPASS((ti->ti_lastblock == ((void*)0)) == (ti->ti_end == 0));
 }
}
