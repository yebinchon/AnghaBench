
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int chip; int unpause; int pause; int * scb_data; } ;


 int AHC_PCI ;
 int ENOMEM ;
 int HCNTRL ;
 int IRQMS ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PAUSE ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int * malloc (int,int ,int ) ;
 int memset (int *,int ,int) ;

int
ahc_softc_init(struct ahc_softc *ahc)
{


 if ((ahc->chip & AHC_PCI) == 0)
  ahc->unpause = ahc_inb(ahc, HCNTRL) & IRQMS;
 else
  ahc->unpause = 0;
 ahc->pause = ahc->unpause | PAUSE;

 if (ahc->scb_data == ((void*)0)) {
  ahc->scb_data = malloc(sizeof(*ahc->scb_data),
           M_DEVBUF, M_NOWAIT);
  if (ahc->scb_data == ((void*)0))
   return (ENOMEM);
  memset(ahc->scb_data, 0, sizeof(*ahc->scb_data));
 }

 return (0);
}
