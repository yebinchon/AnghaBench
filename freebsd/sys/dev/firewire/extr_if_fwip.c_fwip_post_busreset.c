
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fwip_ifp; } ;
struct TYPE_7__ {scalar_t__ lo; scalar_t__ hi; } ;
struct TYPE_6__ {TYPE_1__* fc; } ;
struct fwip_softc {TYPE_4__ fw_softc; TYPE_3__ last_dest; int ver6; int unit6; int spec6; int ver4; int unit4; int spec4; TYPE_2__ fd; } ;
struct crom_src {int dummy; } ;
struct crom_chunk {int dummy; } ;
struct TYPE_5__ {struct crom_chunk* crom_root; struct crom_src* crom_src; } ;


 int CROM_UDIR ;
 int CSRKEY_SPEC ;
 int CSRKEY_VER ;
 int CSRVAL_IETF ;
 int bzero (int *,int) ;
 int crom_add_chunk (struct crom_src*,struct crom_chunk*,int *,int ) ;
 int crom_add_entry (int *,int ,int) ;
 int crom_add_simple_text (struct crom_src*,int *,int *,char*) ;
 int firewire_busreset (int ) ;

__attribute__((used)) static void
fwip_post_busreset(void *arg)
{
 struct fwip_softc *fwip = arg;
 struct crom_src *src;
 struct crom_chunk *root;

 src = fwip->fd.fc->crom_src;
 root = fwip->fd.fc->crom_root;


 bzero(&fwip->unit4, sizeof(struct crom_chunk));
 crom_add_chunk(src, root, &fwip->unit4, CROM_UDIR);
 crom_add_entry(&fwip->unit4, CSRKEY_SPEC, CSRVAL_IETF);
 crom_add_simple_text(src, &fwip->unit4, &fwip->spec4, "IANA");
 crom_add_entry(&fwip->unit4, CSRKEY_VER, 1);
 crom_add_simple_text(src, &fwip->unit4, &fwip->ver4, "IPv4");


 bzero(&fwip->unit6, sizeof(struct crom_chunk));
 crom_add_chunk(src, root, &fwip->unit6, CROM_UDIR);
 crom_add_entry(&fwip->unit6, CSRKEY_SPEC, CSRVAL_IETF);
 crom_add_simple_text(src, &fwip->unit6, &fwip->spec6, "IANA");
 crom_add_entry(&fwip->unit6, CSRKEY_VER, 2);
 crom_add_simple_text(src, &fwip->unit6, &fwip->ver6, "IPv6");

 fwip->last_dest.hi = 0;
 fwip->last_dest.lo = 0;
 firewire_busreset(fwip->fw_softc.fwip_ifp);
}
