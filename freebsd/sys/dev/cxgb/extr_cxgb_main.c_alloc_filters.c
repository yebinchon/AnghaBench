
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct filter_info {int vlan; int pass; int rss; int valid; int locked; int vlan_prio; } ;
struct TYPE_3__ {unsigned int nfilters; } ;
struct TYPE_4__ {TYPE_1__ mc5; } ;
struct adapter {struct filter_info* filters; TYPE_2__ params; } ;


 int FILTER_NO_VLAN_PRI ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct filter_info* malloc (int,int ,int) ;

__attribute__((used)) static int
alloc_filters(struct adapter *sc)
{
 struct filter_info *p;
 unsigned int nfilters = sc->params.mc5.nfilters;

 if (nfilters == 0)
  return (0);

 p = malloc(sizeof(*p) * nfilters, M_DEVBUF, M_WAITOK | M_ZERO);
 sc->filters = p;

 p = &sc->filters[nfilters - 1];
 p->vlan = 0xfff;
 p->vlan_prio = FILTER_NO_VLAN_PRI;
 p->pass = p->rss = p->valid = p->locked = 1;

 return (0);
}
