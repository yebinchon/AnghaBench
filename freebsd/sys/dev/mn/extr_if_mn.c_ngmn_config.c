
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mn_softc {int framing; scalar_t__ nhooks; char* nodename; } ;
typedef int node_p ;
typedef enum framing { ____Placeholder_framing } framing ;


 int E1 ;
 int E1U ;
 struct mn_softc* NG_NODE_PRIVATE (int ) ;
 int f54_init (struct mn_softc*) ;
 int mn_reset (struct mn_softc*) ;
 int printf (char*,char*,char*) ;
 int sprintf (char*,char*,scalar_t__) ;
 int strcat (char*,char*) ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void
ngmn_config(node_p node, char *set, char *ret)
{
 struct mn_softc *sc;
 enum framing wframing;

 sc = NG_NODE_PRIVATE(node);

 if (set != ((void*)0)) {
  if (!strncmp(set, "line ", 5)) {
   wframing = sc->framing;
   if (!strcmp(set, "line e1")) {
    wframing = E1;
   } else if (!strcmp(set, "line e1u")) {
    wframing = E1U;
   } else {
    strcat(ret, "ENOGROK\n");
    return;
   }
   if (wframing == sc->framing)
    return;
   if (sc->nhooks > 0) {
    sprintf(ret, "Cannot change line when %d hooks open\n", sc->nhooks);
    return;
   }
   sc->framing = wframing;

   f54_init(sc);



  } else {
   printf("%s CONFIG SET [%s]\n", sc->nodename, set);
   strcat(ret, "ENOGROK\n");
   return;
  }
 }

}
