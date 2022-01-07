
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcp {int dummy; } ;
struct TYPE_2__ {struct lcp* owner; } ;
struct hdlc {TYPE_1__ lqm; } ;


 int memset (struct hdlc*,char,int) ;

void
hdlc_Init(struct hdlc *hdlc, struct lcp *lcp)
{
  memset(hdlc, '\0', sizeof(struct hdlc));
  hdlc->lqm.owner = lcp;
}
