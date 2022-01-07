
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union descriptor {int sd; } ;
struct soft_segment_descriptor {int member_4; int member_7; int ssd_limit; int ssd_base; int ssd_type; scalar_t__ ssd_def32; int member_8; int member_6; int member_5; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_10__ {int limit; int base; } ;
struct TYPE_9__ {int limit; int base; } ;
struct TYPE_8__ {int limit; int base; } ;
struct TYPE_7__ {int limit; int base; } ;
struct TYPE_6__ {int limit; int base; } ;
struct bios_segments {TYPE_5__ args; TYPE_4__ util; TYPE_3__ data; TYPE_2__ code16; TYPE_1__ code32; } ;


 int BIOSARGS_FLAG ;
 int BIOSCODE_FLAG ;
 int BIOSDATA_FLAG ;
 int BIOSUTIL_FLAG ;
 size_t GBIOSARGS_SEL ;
 size_t GBIOSCODE16_SEL ;
 size_t GBIOSCODE32_SEL ;
 size_t GBIOSDATA_SEL ;
 size_t GBIOSUTIL_SEL ;
 size_t NGDT ;
 size_t PCPU_GET (int ) ;
 int SDT_MEMERA ;
 int SDT_MEMRWA ;
 int cpuid ;
 union descriptor* gdt ;
 int ssdtosd (struct soft_segment_descriptor*,int *) ;

void
set_bios_selectors(struct bios_segments *seg, int flags)
{
    struct soft_segment_descriptor ssd = {
 0,
 0,
 SDT_MEMERA,
 0,
 1,
 0, 0,
 1,
 0
    };
    union descriptor *p_gdt;




    p_gdt = gdt;


    ssd.ssd_base = seg->code32.base;
    ssd.ssd_limit = seg->code32.limit;
    ssdtosd(&ssd, &p_gdt[GBIOSCODE32_SEL].sd);

    ssd.ssd_def32 = 0;
    if (flags & BIOSCODE_FLAG) {
 ssd.ssd_base = seg->code16.base;
 ssd.ssd_limit = seg->code16.limit;
 ssdtosd(&ssd, &p_gdt[GBIOSCODE16_SEL].sd);
    }

    ssd.ssd_type = SDT_MEMRWA;
    if (flags & BIOSDATA_FLAG) {
 ssd.ssd_base = seg->data.base;
 ssd.ssd_limit = seg->data.limit;
 ssdtosd(&ssd, &p_gdt[GBIOSDATA_SEL].sd);
    }

    if (flags & BIOSUTIL_FLAG) {
 ssd.ssd_base = seg->util.base;
 ssd.ssd_limit = seg->util.limit;
 ssdtosd(&ssd, &p_gdt[GBIOSUTIL_SEL].sd);
    }

    if (flags & BIOSARGS_FLAG) {
 ssd.ssd_base = seg->args.base;
 ssd.ssd_limit = seg->args.limit;
 ssdtosd(&ssd, &p_gdt[GBIOSARGS_SEL].sd);
    }
}
