
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int dummy; } ;
struct ath_node {int an_node; } ;


 int ath_rate_ctl_reset (struct ath_softc*,int *) ;

void
ath_rate_newassoc(struct ath_softc *sc, struct ath_node *an, int isnew)
{
 if (isnew)
  ath_rate_ctl_reset(sc, &an->an_node);
}
