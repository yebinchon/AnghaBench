
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
struct TYPE_3__ {int local_seq; int node; int handle; scalar_t__ liv_per_full; scalar_t__ livs; scalar_t__ seq_retries; scalar_t__ remote_seq; } ;


 int LMI_ticker ;
 int hz ;
 int ng_callout (int *,int ,int *,int ,int ,int *,int ) ;

__attribute__((used)) static void
nglmi_startup(sc_p sc)
{
 sc->remote_seq = 0;
 sc->local_seq = 1;
 sc->seq_retries = 0;
 sc->livs = sc->liv_per_full - 1;

 ng_callout(&sc->handle, sc->node, ((void*)0), hz, LMI_ticker, ((void*)0), 0);
}
