
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {TYPE_1__* atid_tab; } ;
struct adapter {struct tid_info tids; } ;
struct TYPE_2__ {void* data; } ;



void *
lookup_atid(struct adapter *sc, int atid)
{
 struct tid_info *t = &sc->tids;

 return (t->atid_tab[atid].data);
}
