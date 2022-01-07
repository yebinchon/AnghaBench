
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;
struct ath_ratectrl {int arc_space; } ;
struct amrr_softc {struct ath_ratectrl arc; } ;
struct amrr_node {int dummy; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ath_rate_sysctlattach (struct ath_softc*) ;
 struct amrr_softc* malloc (int,int ,int) ;

struct ath_ratectrl *
ath_rate_attach(struct ath_softc *sc)
{
 struct amrr_softc *asc;

 asc = malloc(sizeof(struct amrr_softc), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (asc == ((void*)0))
  return ((void*)0);
 asc->arc.arc_space = sizeof(struct amrr_node);
 ath_rate_sysctlattach(sc);

 return &asc->arc;
}
