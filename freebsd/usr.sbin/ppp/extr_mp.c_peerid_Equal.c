
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ class; scalar_t__ len; int address; } ;
struct peerid {TYPE_1__ enddisc; int authname; } ;


 int memcmp (int ,int ,scalar_t__) ;
 int strcmp (int ,int ) ;

int
peerid_Equal(const struct peerid *p1, const struct peerid *p2)
{
  return !strcmp(p1->authname, p2->authname) &&
         p1->enddisc.class == p2->enddisc.class &&
         p1->enddisc.len == p2->enddisc.len &&
         !memcmp(p1->enddisc.address, p2->enddisc.address, p1->enddisc.len);
}
