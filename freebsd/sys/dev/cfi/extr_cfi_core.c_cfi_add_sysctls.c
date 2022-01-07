
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct cfi_softc {scalar_t__ sc_maxbuf; int * sc_mto_counts; int * sc_tto_counts; int sc_dev; } ;


 size_t CFI_TIMEOUT_BUFWRITE ;
 size_t CFI_TIMEOUT_ERASE ;
 size_t CFI_TIMEOUT_WRITE ;
 int CTLFLAG_RD ;
 int OID_AUTO ;
 int SYSCTL_ADD_UINT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int *,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
cfi_add_sysctls(struct cfi_softc *sc)
{
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children;

 ctx = device_get_sysctl_ctx(sc->sc_dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->sc_dev));

 SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
     "typical_erase_timout_count",
     CTLFLAG_RD, &sc->sc_tto_counts[CFI_TIMEOUT_ERASE],
     0, "Number of times the typical erase timeout was exceeded");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
     "max_erase_timout_count",
     CTLFLAG_RD, &sc->sc_mto_counts[CFI_TIMEOUT_ERASE], 0,
     "Number of times the maximum erase timeout was exceeded");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
     "typical_write_timout_count",
     CTLFLAG_RD, &sc->sc_tto_counts[CFI_TIMEOUT_WRITE], 0,
     "Number of times the typical write timeout was exceeded");
 SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
     "max_write_timout_count",
     CTLFLAG_RD, &sc->sc_mto_counts[CFI_TIMEOUT_WRITE], 0,
     "Number of times the maximum write timeout was exceeded");
 if (sc->sc_maxbuf > 0) {
  SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
      "typical_bufwrite_timout_count",
      CTLFLAG_RD, &sc->sc_tto_counts[CFI_TIMEOUT_BUFWRITE], 0,
      "Number of times the typical buffered write timeout was "
      "exceeded");
  SYSCTL_ADD_UINT(ctx, children, OID_AUTO,
      "max_bufwrite_timout_count",
      CTLFLAG_RD, &sc->sc_mto_counts[CFI_TIMEOUT_BUFWRITE], 0,
      "Number of times the maximum buffered write timeout was "
      "exceeded");
 }
}
