
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vi_flags; int vi_buffer_size; int vi_planes; int vi_buffer; } ;
struct TYPE_7__ {int va_buffer_size; int va_window_size; int va_window_gran; TYPE_1__ va_info; int va_buffer; int va_window; } ;
typedef TYPE_2__ video_adapter_t ;
struct s3pci_softc {int mem_base; } ;
typedef int device_t ;
struct TYPE_8__ {int (* set_mode ) (TYPE_2__*,int) ;} ;


 int ENXIO ;
 int M_VESA_BASE ;
 int S3_CRTC_ADDR ;
 int S3_CRTC_VALUE ;
 int V_INFO_GRAPHICS ;
 int V_INFO_LINEAR ;
 scalar_t__ device_get_softc (int ) ;
 int inb_enh (int ) ;
 int inb_p (int ) ;
 int outb_enh (int,int) ;
 int outb_p (int,int ) ;
 TYPE_5__* prevvidsw ;
 int s3lfb_map_buffer (int ,int) ;
 int s3pci_dev ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static int
s3lfb_set_mode(video_adapter_t *adp, int mode)
{
 device_t dev = s3pci_dev;
 struct s3pci_softc *sc = (struct s3pci_softc *)device_get_softc(dev);



 int error;



 if ((error = (*prevvidsw->set_mode)(adp, mode)))
  return error;
 if ((mode <= M_VESA_BASE) ||
  !(adp->va_info.vi_flags & V_INFO_GRAPHICS) ||
  (adp->va_info.vi_flags & V_INFO_LINEAR))
  return 0;



 outb_p(0x38, S3_CRTC_ADDR); outb_p(0x48, S3_CRTC_VALUE);
 outb_p(0x39, S3_CRTC_ADDR); outb_p(0xa5, S3_CRTC_VALUE);
 outb_p(0x40, S3_CRTC_ADDR);
 outb_p(inb_p(S3_CRTC_VALUE) | 1, S3_CRTC_VALUE);



 outb_enh(inb_enh(0) | 1, 0x0);



 outb_p(0x31, S3_CRTC_ADDR);
 outb_p(inb_p(S3_CRTC_VALUE) | 8, S3_CRTC_VALUE);



 outb_p(0x58, S3_CRTC_ADDR);
 outb_p(inb_p(S3_CRTC_VALUE) | 0x13, S3_CRTC_VALUE);



 outb_p(0x40, S3_CRTC_ADDR);
 outb_p(inb_p(S3_CRTC_VALUE) & ~1, S3_CRTC_VALUE);



 outb_p(0x39, S3_CRTC_ADDR); outb_p(0x5a, S3_CRTC_VALUE);
 outb_p(0x38, S3_CRTC_ADDR); outb_p(0x00, S3_CRTC_VALUE);

 adp->va_info.vi_flags |= V_INFO_LINEAR;
 adp->va_info.vi_buffer = sc->mem_base;
 adp->va_buffer = s3lfb_map_buffer(adp->va_info.vi_buffer,
    adp->va_info.vi_buffer_size);
 adp->va_buffer_size = adp->va_info.vi_buffer_size;
 adp->va_window = adp->va_buffer;
 adp->va_window_size = adp->va_info.vi_buffer_size/adp->va_info.vi_planes;
 adp->va_window_gran = adp->va_info.vi_buffer_size/adp->va_info.vi_planes;

 return 0;
}
