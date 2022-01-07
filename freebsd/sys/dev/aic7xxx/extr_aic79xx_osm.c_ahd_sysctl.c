
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ahd_softc {void** sysctl_tree; int * sysctl_ctx; int * summerr; int dev_softc; } ;


 size_t AHD_ERRORS_CORRECTABLE ;
 size_t AHD_ERRORS_NUMBER ;
 size_t AHD_SYSCTL_DEBUG ;
 size_t AHD_SYSCTL_NUMBER ;
 size_t AHD_SYSCTL_ROOT ;
 size_t AHD_SYSCTL_SUMMARY ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 void* SYSCTL_ADD_NODE (int *,int ,int ,int ,int ,int ,int ) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct ahd_softc*,size_t,int ,char*,char*) ;
 int SYSCTL_ADD_UINT (int *,int ,int ,char*,int ,int *,size_t,char*) ;
 int SYSCTL_CHILDREN (void*) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _hw ;
 int ahd_clear_allcounters ;
 int ahd_set_debugcounters ;
 char** ahd_sysctl_errors_descriptions ;
 char** ahd_sysctl_errors_elements ;
 int * ahd_sysctl_node_descriptions ;
 int * ahd_sysctl_node_elements ;
 int device_get_nameunit (int ) ;
 int sysctl_ctx_init (int *) ;

void
ahd_sysctl(struct ahd_softc *ahd)
{
 u_int i;

 for (i = 0; i < AHD_SYSCTL_NUMBER; i++)
  sysctl_ctx_init(&ahd->sysctl_ctx[i]);

 ahd->sysctl_tree[AHD_SYSCTL_ROOT] =
     SYSCTL_ADD_NODE(&ahd->sysctl_ctx[AHD_SYSCTL_ROOT],
       SYSCTL_STATIC_CHILDREN(_hw), OID_AUTO,
       device_get_nameunit(ahd->dev_softc), CTLFLAG_RD, 0,
       ahd_sysctl_node_descriptions[AHD_SYSCTL_ROOT]);
     SYSCTL_ADD_PROC(&ahd->sysctl_ctx[AHD_SYSCTL_ROOT],
       SYSCTL_CHILDREN(ahd->sysctl_tree[AHD_SYSCTL_ROOT]),
       OID_AUTO, "clear", CTLTYPE_UINT | CTLFLAG_RW, ahd,
       0, ahd_clear_allcounters, "IU",
       "Clear all counters");

 for (i = AHD_SYSCTL_SUMMARY; i < AHD_SYSCTL_NUMBER; i++)
  ahd->sysctl_tree[i] =
      SYSCTL_ADD_NODE(&ahd->sysctl_ctx[i],
        SYSCTL_CHILDREN(ahd->sysctl_tree[AHD_SYSCTL_ROOT]),
        OID_AUTO, ahd_sysctl_node_elements[i],
        CTLFLAG_RD, 0,
        ahd_sysctl_node_descriptions[i]);

 for (i = AHD_ERRORS_CORRECTABLE; i < AHD_ERRORS_NUMBER; i++) {
  SYSCTL_ADD_UINT(&ahd->sysctl_ctx[AHD_SYSCTL_SUMMARY],
    SYSCTL_CHILDREN(ahd->sysctl_tree[AHD_SYSCTL_SUMMARY]),
    OID_AUTO, ahd_sysctl_errors_elements[i],
    CTLFLAG_RD, &ahd->summerr[i], i,
    ahd_sysctl_errors_descriptions[i]);
  SYSCTL_ADD_PROC(&ahd->sysctl_ctx[AHD_SYSCTL_DEBUG],
    SYSCTL_CHILDREN(ahd->sysctl_tree[AHD_SYSCTL_DEBUG]),
    OID_AUTO, ahd_sysctl_errors_elements[i],
    CTLFLAG_RW | CTLTYPE_UINT, ahd, i,
    ahd_set_debugcounters, "IU",
    ahd_sysctl_errors_descriptions[i]);
 }
}
