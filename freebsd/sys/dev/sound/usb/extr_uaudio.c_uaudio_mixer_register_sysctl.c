
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uaudio_softc {struct uaudio_mixer_node* sc_mixer_root; } ;
struct uaudio_mixer_node {int nchan; char* name; int desc; int maxval; int minval; int * wValue; struct uaudio_mixer_node* next; } ;
struct sysctl_oid {int dummy; } ;
typedef int device_t ;
typedef int buf ;


 int CTLFLAG_RD ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int ,int ,char*) ;
 struct sysctl_oid* SYSCTL_ADD_NODE (int ,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct uaudio_softc*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_STRING (int ,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int snprintf (char*,int,char*,char*,int,...) ;
 int uaudio_mixer_sysctl_handler ;

__attribute__((used)) static void
uaudio_mixer_register_sysctl(struct uaudio_softc *sc, device_t dev)
{
 struct uaudio_mixer_node *pmc;
 struct sysctl_oid *mixer_tree;
 struct sysctl_oid *control_tree;
 char buf[32];
 int chan;
 int n;

 mixer_tree = SYSCTL_ADD_NODE(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO, "mixer",
     CTLFLAG_RD, ((void*)0), "");

 if (mixer_tree == ((void*)0))
  return;

 for (n = 0, pmc = sc->sc_mixer_root; pmc != ((void*)0);
     pmc = pmc->next, n++) {

  for (chan = 0; chan < pmc->nchan; chan++) {

   if (pmc->nchan > 1) {
    snprintf(buf, sizeof(buf), "%s_%d_%d",
        pmc->name, n, chan);
   } else {
    snprintf(buf, sizeof(buf), "%s_%d",
        pmc->name, n);
   }

   control_tree = SYSCTL_ADD_NODE(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(mixer_tree), OID_AUTO, buf,
       CTLFLAG_RD, ((void*)0), "Mixer control nodes");

   if (control_tree == ((void*)0))
    continue;

   SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(control_tree),
       OID_AUTO, "val", CTLTYPE_INT | CTLFLAG_RWTUN, sc,
       pmc->wValue[chan],
       uaudio_mixer_sysctl_handler, "I", "Current value");

   SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(control_tree),
       OID_AUTO, "min", CTLFLAG_RD, 0, pmc->minval,
       "Minimum value");

   SYSCTL_ADD_INT(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(control_tree),
       OID_AUTO, "max", CTLFLAG_RD, 0, pmc->maxval,
       "Maximum value");

   SYSCTL_ADD_STRING(device_get_sysctl_ctx(dev),
       SYSCTL_CHILDREN(control_tree),
       OID_AUTO, "desc", CTLFLAG_RD, pmc->desc, 0,
       "Description");
  }
 }
}
