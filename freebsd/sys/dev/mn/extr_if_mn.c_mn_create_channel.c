
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct schan {int chan; int name; int state; struct mn_softc* sc; } ;
struct mn_softc {char* name; struct schan** ch; } ;


 int DOWN ;
 int M_MN ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ malloc (int,int ,int) ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static void
mn_create_channel(struct mn_softc *sc, int chan)
{
 struct schan *sch;

 sch = sc->ch[chan] = (struct schan *)malloc(sizeof *sc->ch[chan],
     M_MN, M_WAITOK | M_ZERO);
 sch->sc = sc;
 sch->state = DOWN;
 sch->chan = chan;
 sprintf(sch->name, "%s%d", sc->name, chan);
 return;
}
