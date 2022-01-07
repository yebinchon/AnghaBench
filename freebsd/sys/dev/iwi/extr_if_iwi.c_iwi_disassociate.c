
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_associate {int chan; int bssid; int type; } ;
struct iwi_softc {int flags; struct iwi_associate assoc; } ;


 int DPRINTF (char*) ;
 int IWI_CMD_ASSOCIATE ;
 int IWI_FLAG_ASSOCIATED ;
 int IWI_FW_DISASSOCIATING ;
 int IWI_HC_DISASSOC ;
 int IWI_HC_DISASSOC_QUIET ;
 int IWI_STATE_BEGIN (struct iwi_softc*,int ) ;
 int iwi_cmd (struct iwi_softc*,int ,struct iwi_associate*,int) ;

__attribute__((used)) static int
iwi_disassociate(struct iwi_softc *sc, int quiet)
{
 struct iwi_associate *assoc = &sc->assoc;

 if ((sc->flags & IWI_FLAG_ASSOCIATED) == 0) {
  DPRINTF(("Not associated\n"));
  return (-1);
 }

 IWI_STATE_BEGIN(sc, IWI_FW_DISASSOCIATING);

 if (quiet)
  assoc->type = IWI_HC_DISASSOC_QUIET;
 else
  assoc->type = IWI_HC_DISASSOC;

 DPRINTF(("Trying to disassociate from %6D channel %u\n",
     assoc->bssid, ":", assoc->chan));
 return iwi_cmd(sc, IWI_CMD_ASSOCIATE, assoc, sizeof *assoc);
}
