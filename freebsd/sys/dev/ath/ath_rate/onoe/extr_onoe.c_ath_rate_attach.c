
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ratectrl {int arc_space; } ;
struct onoe_softc {struct ath_ratectrl arc; } ;
struct onoe_node {int dummy; } ;
struct ath_softc {int dummy; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ath_rate_sysctlattach (struct ath_softc*) ;
 struct onoe_softc* malloc (int,int ,int) ;

struct ath_ratectrl *
ath_rate_attach(struct ath_softc *sc)
{
 struct onoe_softc *osc;

 osc = malloc(sizeof(struct onoe_softc), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (osc == ((void*)0))
  return ((void*)0);
 osc->arc.arc_space = sizeof(struct onoe_node);
 ath_rate_sysctlattach(sc);

 return &osc->arc;
}
