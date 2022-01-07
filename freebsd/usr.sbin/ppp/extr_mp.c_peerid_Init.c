
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* address; scalar_t__ len; scalar_t__ class; } ;
struct peerid {char* authname; TYPE_1__ enddisc; } ;



void
peerid_Init(struct peerid *peer)
{
  peer->enddisc.class = 0;
  *peer->enddisc.address = '\0';
  peer->enddisc.len = 0;
  *peer->authname = '\0';
}
