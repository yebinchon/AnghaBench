
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ratectrl {int arc_space; } ;
struct sample_softc {int smoothing_rate; int smoothing_minpackets; int sample_rate; int max_successive_failures; int stale_failure_timeout; int min_switch; struct ath_ratectrl arc; } ;
struct sample_node {int dummy; } ;
struct ath_softc {int dummy; } ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int ath_rate_sysctlattach (struct ath_softc*,struct sample_softc*) ;
 int hz ;
 struct sample_softc* malloc (int,int ,int) ;

struct ath_ratectrl *
ath_rate_attach(struct ath_softc *sc)
{
 struct sample_softc *ssc;

 ssc = malloc(sizeof(struct sample_softc), M_DEVBUF, M_NOWAIT|M_ZERO);
 if (ssc == ((void*)0))
  return ((void*)0);
 ssc->arc.arc_space = sizeof(struct sample_node);
 ssc->smoothing_rate = 75;
 ssc->smoothing_minpackets = 100 / (100 - ssc->smoothing_rate);
 ssc->sample_rate = 10;
 ssc->max_successive_failures = 3;
 ssc->stale_failure_timeout = 10 * hz;
 ssc->min_switch = hz;
 ath_rate_sysctlattach(sc, ssc);
 return &ssc->arc;
}
