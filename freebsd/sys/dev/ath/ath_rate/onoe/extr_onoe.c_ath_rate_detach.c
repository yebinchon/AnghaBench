
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onoe_softc {int dummy; } ;
struct ath_ratectrl {int dummy; } ;


 int M_DEVBUF ;
 int free (struct onoe_softc*,int ) ;

void
ath_rate_detach(struct ath_ratectrl *arc)
{
 struct onoe_softc *osc = (struct onoe_softc *) arc;

 free(osc, M_DEVBUF);
}
