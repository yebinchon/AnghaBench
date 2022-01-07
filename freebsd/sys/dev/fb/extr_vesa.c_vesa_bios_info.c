
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct vesa_mode {int v_modeattr; int v_width; int v_height; int v_bpp; int v_planes; int v_cwidth; int v_cheight; int v_ipages; int v_memmodel; int v_lfb; int v_offscreen; int v_offscreensize; int v_waseg; int v_waattr; int v_wbseg; int v_wbattr; int v_wsize; int v_wgran; } ;
struct TYPE_2__ {int v_version; int v_memsize; int v_flags; int v_modetable; } ;


 int M_NOWAIT ;
 int M_VESA_BASE ;
 int M_VESA_MODE_MAX ;
 int V_MODEGRAPHICS ;
 int V_MODELFB ;
 int V_MODEOPTINFO ;
 scalar_t__ bootverbose ;
 int printf (char*,...) ;
 TYPE_1__* vesa_adp_info ;
 scalar_t__ vesa_bios_get_mode (int,struct vesa_mode*,int ) ;
 char* vesa_oemstr ;
 char* vesa_prodstr ;
 char* vesa_revstr ;
 char* vesa_venderstr ;
 int* vesa_vmodetab ;

__attribute__((used)) static int
vesa_bios_info(int level)
{




 uint16_t vers;

 vers = vesa_adp_info->v_version;

 if (bootverbose) {

  printf(
 "VESA: v%d.%d, %dk memory, flags:0x%x, mode table:%p (%x)\n",
      (vers >> 12) * 10 + ((vers & 0x0f00) >> 8),
      ((vers & 0x00f0) >> 4) * 10 + (vers & 0x000f),
      vesa_adp_info->v_memsize * 64, vesa_adp_info->v_flags,
      vesa_vmodetab, vesa_adp_info->v_modetable);


  if (vesa_oemstr != ((void*)0))
   printf("VESA: %s\n", vesa_oemstr);
 }

 if (level <= 0)
  return (0);

 if (vers >= 0x0200 && bootverbose) {

  printf("VESA: %s %s %s\n",
   (vesa_venderstr != ((void*)0)) ? vesa_venderstr : "unknown",
   (vesa_prodstr != ((void*)0)) ? vesa_prodstr : "unknown",
   (vesa_revstr != ((void*)0)) ? vesa_revstr : "?");
 }
 return (0);
}
