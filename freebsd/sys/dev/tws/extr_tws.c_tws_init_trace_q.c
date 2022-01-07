
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tws_trace_rec {int dummy; } ;
struct TYPE_2__ {int depth; int q; scalar_t__ overflow; scalar_t__ tail; scalar_t__ head; } ;
struct tws_softc {TYPE_1__ trace_q; } ;


 int M_TWS ;
 int M_WAITOK ;
 int M_ZERO ;
 int SUCCESS ;
 int malloc (int,int ,int) ;

__attribute__((used)) static int
tws_init_trace_q(struct tws_softc *sc)
{
    sc->trace_q.head=0;
    sc->trace_q.tail=0;
    sc->trace_q.depth=256;
    sc->trace_q.overflow=0;
    sc->trace_q.q = malloc(sizeof(struct tws_trace_rec)*sc->trace_q.depth,
                              M_TWS, M_WAITOK | M_ZERO);
    return(SUCCESS);
}
