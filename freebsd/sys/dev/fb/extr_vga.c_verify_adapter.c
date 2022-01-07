
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_3__ {int va_window; int va_type; char* va_name; int va_flags; int va_crtc_addr; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;


 scalar_t__ BIOS_PADDRTOVADDR (int) ;
 int BIOS_SADDRTOLADDR (int) ;
 int ENXIO ;
 int ISMAPPED (int,int) ;



 int KD_VGA ;
 int V_ADP_BORDER ;
 int V_ADP_COLOR ;
 int V_ADP_PALETTE ;
 int V_ADP_STATELOAD ;
 int V_ADP_STATESAVE ;
 int V_MODE_PARAM_SIZE ;
 int inb (int ) ;
 int outb (int ,int) ;
 int readw (scalar_t__) ;
 int * video_mode_ptr ;
 int * video_mode_ptr2 ;
 int writew (scalar_t__,int) ;

__attribute__((used)) static int
verify_adapter(video_adapter_t *adp)
{
    vm_offset_t buf;
    u_int16_t v;

    u_int32_t p;


    buf = BIOS_PADDRTOVADDR(adp->va_window);
    v = readw(buf);
    writew(buf, 0xA55A);
    if (readw(buf) != 0xA55A)
 return ENXIO;
    writew(buf, v);

    switch (adp->va_type) {

    case 129:
 outb(adp->va_crtc_addr, 7);
 if (inb(adp->va_crtc_addr) == 7) {
     adp->va_type = KD_VGA;
     adp->va_name = "vga";
     adp->va_flags |= V_ADP_STATESAVE | V_ADP_PALETTE;
 }
 adp->va_flags |= V_ADP_STATELOAD | V_ADP_BORDER;




 p = *(u_int32_t *)BIOS_PADDRTOVADDR(0x4a8);
 p = BIOS_SADDRTOLADDR(p);
 if (ISMAPPED(p, sizeof(u_int32_t))) {
     p = *(u_int32_t *)BIOS_PADDRTOVADDR(p);
     p = BIOS_SADDRTOLADDR(p);
     if (ISMAPPED(p, V_MODE_PARAM_SIZE))
  video_mode_ptr = (u_char *)BIOS_PADDRTOVADDR(p);
 }

 break;

    case 130:
 adp->va_flags |= V_ADP_COLOR | V_ADP_BORDER;



 p = *(u_int32_t *)BIOS_PADDRTOVADDR(0x1d*4);
 p = BIOS_SADDRTOLADDR(p);
 video_mode_ptr2 = (u_char *)BIOS_PADDRTOVADDR(p);

 break;

    case 128:


 p = *(u_int32_t *)BIOS_PADDRTOVADDR(0x1d*4);
 p = BIOS_SADDRTOLADDR(p);
 video_mode_ptr2 = (u_char *)BIOS_PADDRTOVADDR(p);

 break;
    }

    return 0;
}
