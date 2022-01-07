
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cis1_major; int cis1_minor; scalar_t__ error; int pf_head; int product; int manufacturer; int ** cis1_info; } ;
struct pccard_softc {int dev; TYPE_1__ card; } ;
struct cis_state {TYPE_1__* card; int * pf; } ;


 int PCMCIA_PRODUCT_INVALID ;
 int PCMCIA_VENDOR_INVALID ;
 int STAILQ_INIT (int *) ;
 int bzero (struct cis_state*,int) ;
 int device_get_parent (int ) ;
 int hz ;
 int pause (char*,int) ;
 int pccard_parse_cis_tuple ;
 int pccard_scan_cis (int ,int ,int ,struct cis_state*) ;

void
pccard_read_cis(struct pccard_softc *sc)
{
 struct cis_state state;

 bzero(&state, sizeof state);
 state.card = &sc->card;
 state.card->error = 0;
 state.card->cis1_major = -1;
 state.card->cis1_minor = -1;
 state.card->cis1_info[0] = ((void*)0);
 state.card->cis1_info[1] = ((void*)0);
 state.card->cis1_info[2] = ((void*)0);
 state.card->cis1_info[3] = ((void*)0);
 state.card->manufacturer = PCMCIA_VENDOR_INVALID;
 state.card->product = PCMCIA_PRODUCT_INVALID;
 STAILQ_INIT(&state.card->pf_head);
 state.pf = ((void*)0);
 pause("pccard", hz / 10);
 if (pccard_scan_cis(device_get_parent(sc->dev), sc->dev,
     pccard_parse_cis_tuple, &state) == -1)
  state.card->error++;
}
