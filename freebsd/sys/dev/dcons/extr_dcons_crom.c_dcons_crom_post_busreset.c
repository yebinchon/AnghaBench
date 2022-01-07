
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* fc; } ;
struct dcons_crom_softc {int unit; int ver; int spec; TYPE_2__ fd; } ;
struct crom_src {int dummy; } ;
struct crom_chunk {int dummy; } ;
struct TYPE_3__ {struct crom_chunk* crom_root; struct crom_src* crom_src; } ;


 int ADDR_HI (int ) ;
 int ADDR_LO (int ) ;
 int CROM_UDIR ;
 int CSRKEY_SPEC ;
 int CSRKEY_VER ;
 int CSRVAL_VENDOR_PRIVATE ;
 int DCONS_CSR_KEY_HI ;
 int DCONS_CSR_KEY_LO ;
 int DCONS_CSR_VAL_VER ;
 int bzero (int *,int) ;
 int crom_add_chunk (struct crom_src*,struct crom_chunk*,int *,int ) ;
 int crom_add_entry (int *,int ,int ) ;
 int crom_add_simple_text (struct crom_src*,int *,int *,char*) ;
 int dcons_crom_expose_idt (struct dcons_crom_softc*) ;
 int dcons_paddr ;

__attribute__((used)) static void
dcons_crom_post_busreset(void *arg)
{
 struct dcons_crom_softc *sc;
 struct crom_src *src;
 struct crom_chunk *root;

 sc = (struct dcons_crom_softc *) arg;
 src = sc->fd.fc->crom_src;
 root = sc->fd.fc->crom_root;

 bzero(&sc->unit, sizeof(struct crom_chunk));

 crom_add_chunk(src, root, &sc->unit, CROM_UDIR);
 crom_add_entry(&sc->unit, CSRKEY_SPEC, CSRVAL_VENDOR_PRIVATE);
 crom_add_simple_text(src, &sc->unit, &sc->spec, "FreeBSD");
 crom_add_entry(&sc->unit, CSRKEY_VER, DCONS_CSR_VAL_VER);
 crom_add_simple_text(src, &sc->unit, &sc->ver, "dcons");
 crom_add_entry(&sc->unit, DCONS_CSR_KEY_HI, ADDR_HI(dcons_paddr));
 crom_add_entry(&sc->unit, DCONS_CSR_KEY_LO, ADDR_LO(dcons_paddr));

 dcons_crom_expose_idt(sc);

}
