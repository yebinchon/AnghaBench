
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int aic_softc; } ;


 int aic_lock (int ) ;
 int aic_timeout (struct scb*) ;
 int aic_unlock (int ) ;

void
aic_platform_timeout(void *arg)
{
 struct scb *scb;

 scb = (struct scb *)arg;
 aic_lock(scb->aic_softc);
 aic_timeout(scb);
 aic_unlock(scb->aic_softc);
}
