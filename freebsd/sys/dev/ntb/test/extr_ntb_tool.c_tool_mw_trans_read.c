
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_mw {long long widx; long long mm_base; long long size; long long xlat_align; long long xlat_align_size; long long phys_size; scalar_t__ dma_base; int pidx; TYPE_1__* tc; } ;
struct sysctl_req {int dummy; } ;
struct sbuf {int s_error; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 int ntb_peer_port_number (int ,int ) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_for_sysctl (int *,int *,int,struct sysctl_req*) ;
 int sbuf_printf (struct sbuf*,char*,long long,...) ;

__attribute__((used)) static int
tool_mw_trans_read(struct tool_mw *inmw, struct sysctl_req *req)
{
 ssize_t buf_size = 512;
 struct sbuf *sb;
 int rc = 0;

 sb = sbuf_new_for_sysctl(((void*)0), ((void*)0), buf_size, req);
 if (sb == ((void*)0)) {
  rc = sb->s_error;
  return (rc);
 }

 sbuf_printf(sb, "\nInbound MW     \t%d\n", inmw->widx);
 sbuf_printf(sb, "Port           \t%d (%d)\n",
     ntb_peer_port_number(inmw->tc->dev, inmw->pidx), inmw->pidx);
 sbuf_printf(sb, "Window Address \t%p\n", inmw->mm_base);
 sbuf_printf(sb, "DMA Address    \t0x%016llx\n", (long long)inmw->dma_base);
 sbuf_printf(sb, "Window Size    \t0x%016zx[p]\n", inmw->size);
 sbuf_printf(sb, "Alignment      \t0x%016zx[p]\n", inmw->xlat_align);
 sbuf_printf(sb, "Size Alignment \t0x%016zx[p]\n",
     inmw->xlat_align_size);
 sbuf_printf(sb, "Size Max       \t0x%016zx[p]\n", inmw->phys_size);

 rc = sbuf_finish(sb);
 sbuf_delete(sb);

 return (rc);
}
