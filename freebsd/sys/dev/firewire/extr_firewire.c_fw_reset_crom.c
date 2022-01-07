
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firewire_comm {struct crom_chunk* crom_root; struct crom_src* crom_src; struct crom_src_buf* crom_src_buf; } ;
struct crom_src_buf {int hw; int vendor; } ;
struct crom_src {int chunk_list; } ;
struct crom_chunk {int dummy; } ;
struct TYPE_2__ {char* pr_hostname; int pr_mtx; } ;


 int CSRKEY_HW ;
 int CSRKEY_NCAP ;
 int CSRKEY_VENDOR ;
 int CSRVAL_VENDOR_PRIVATE ;
 int STAILQ_INIT (int *) ;
 int __FreeBSD_version ;
 int bzero (struct crom_chunk*,int) ;
 int crom_add_chunk (struct crom_src*,int *,struct crom_chunk*,int ) ;
 int crom_add_entry (struct crom_chunk*,int ,int) ;
 int crom_add_simple_text (struct crom_src*,struct crom_chunk*,int *,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__ prison0 ;

__attribute__((used)) static void
fw_reset_crom(struct firewire_comm *fc)
{
 struct crom_src_buf *buf;
 struct crom_src *src;
 struct crom_chunk *root;

 buf = fc->crom_src_buf;
 src = fc->crom_src;
 root = fc->crom_root;

 STAILQ_INIT(&src->chunk_list);

 bzero(root, sizeof(struct crom_chunk));
 crom_add_chunk(src, ((void*)0), root, 0);
 crom_add_entry(root, CSRKEY_NCAP, 0x0083c0);

 crom_add_entry(root, CSRKEY_VENDOR, CSRVAL_VENDOR_PRIVATE);
 crom_add_simple_text(src, root, &buf->vendor, "FreeBSD Project");
 crom_add_entry(root, CSRKEY_HW, __FreeBSD_version);
 mtx_lock(&prison0.pr_mtx);
 crom_add_simple_text(src, root, &buf->hw, prison0.pr_hostname);
 mtx_unlock(&prison0.pr_mtx);
}
