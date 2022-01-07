
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fwq; } ;
struct adapter {TYPE_1__ sge; } ;


 int free_iq_fl (int *,int *,int *) ;

__attribute__((used)) static int
free_fwq(struct adapter *sc)
{
 return free_iq_fl(((void*)0), &sc->sge.fwq, ((void*)0));
}
