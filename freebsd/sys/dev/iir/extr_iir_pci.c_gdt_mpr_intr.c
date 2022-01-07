
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {scalar_t__* event_string; void* severity; } ;
struct gdt_softc {int sc_fw_vers; int sc_dpmem; TYPE_1__ sc_dvr; } ;
struct gdt_intr_ctx {int istatus; scalar_t__ service; void* info2; void* info; void* cmd_status; } ;


 int GDT_ASYNCINDEX ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_INTR ;
 scalar_t__ GDT_EVT_BUF ;
 int GDT_MPR_EDOOR ;
 scalar_t__ GDT_MPR_INFO ;
 int GDT_MPR_SEMA1 ;
 int GDT_MPR_SERVICE ;
 int GDT_MPR_STATUS ;
 scalar_t__ GDT_SCREENSERVICE ;
 scalar_t__ GDT_SEVERITY ;
 void* GDT_S_OK ;
 void* bus_read_1 (int ,scalar_t__) ;
 void* bus_read_2 (int ,int ) ;
 void* bus_read_4 (int ,scalar_t__) ;
 int bus_write_1 (int ,int ,int) ;

void
gdt_mpr_intr(struct gdt_softc *gdt, struct gdt_intr_ctx *ctx)
{
    int i;

    GDT_DPRINTF(GDT_D_INTR, ("gdt_mpr_intr(%p) ", gdt));

    bus_write_1(gdt->sc_dpmem, GDT_MPR_EDOOR, 0xff);

    if (ctx->istatus & 0x80) {
        ctx->istatus &= ~0x80;
        ctx->cmd_status = bus_read_2(gdt->sc_dpmem, GDT_MPR_STATUS);
    } else
        ctx->cmd_status = GDT_S_OK;

    ctx->info = bus_read_4(gdt->sc_dpmem, GDT_MPR_INFO);
    ctx->service = bus_read_2(gdt->sc_dpmem, GDT_MPR_SERVICE);
    ctx->info2 = bus_read_4(gdt->sc_dpmem, GDT_MPR_INFO + sizeof (u_int32_t));


    if (ctx->istatus == GDT_ASYNCINDEX) {
        if (ctx->service != GDT_SCREENSERVICE &&
            (gdt->sc_fw_vers & 0xff) >= 0x1a) {
            gdt->sc_dvr.severity = bus_read_1(gdt->sc_dpmem, GDT_SEVERITY);
            for (i = 0; i < 256; ++i) {
                gdt->sc_dvr.event_string[i] = bus_read_1(gdt->sc_dpmem,
      GDT_EVT_BUF + i);
                if (gdt->sc_dvr.event_string[i] == 0)
                    break;
            }
        }
    }
    bus_write_1(gdt->sc_dpmem, GDT_MPR_SEMA1, 0);
}
