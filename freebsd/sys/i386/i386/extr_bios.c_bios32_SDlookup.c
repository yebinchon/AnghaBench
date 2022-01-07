
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bios_regs {int eax; scalar_t__ edx; scalar_t__ ecx; scalar_t__ ebx; } ;
struct TYPE_2__ {int id; } ;
struct bios32_SDentry {scalar_t__ entry; scalar_t__ base; int ventry; scalar_t__ len; TYPE_1__ ident; } ;


 int BIOS_PADDRTOVADDR (scalar_t__) ;
 int GCODE_SEL ;
 int GSEL (int ,int ) ;
 int SEL_KPL ;
 int bios32 (struct bios_regs*,scalar_t__,int ) ;
 scalar_t__ bios32_SDCI ;

int
bios32_SDlookup(struct bios32_SDentry *ent)
{
    struct bios_regs args;

    if (bios32_SDCI == 0)
 return (1);

    args.eax = ent->ident.id;
    args.ebx = args.ecx = args.edx = 0;
    bios32(&args, bios32_SDCI, GSEL(GCODE_SEL, SEL_KPL));
    if ((args.eax & 0xff) == 0) {
 ent->base = args.ebx;
 ent->len = args.ecx;
 ent->entry = args.edx;
 ent->ventry = BIOS_PADDRTOVADDR(ent->base + ent->entry);
 return (0);
    }
    return (1);
}
