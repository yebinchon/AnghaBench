
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_DEVBUF ;
 int VESA_BIOS_OFFSET ;
 scalar_t__ VESA_PALETTE_SIZE ;
 int free (int *,int ) ;
 int * vesa_adp_info ;
 int * vesa_bios ;
 int vesa_bios_int10 ;
 int vesa_bios_offs ;
 scalar_t__ vesa_bios_size ;
 int * vesa_oemstr ;
 int * vesa_palette ;
 int * vesa_prodstr ;
 int * vesa_revstr ;
 scalar_t__ vesa_state_buf_size ;
 int * vesa_venderstr ;
 int * vesa_vmode ;
 int x86bios_free (int *,scalar_t__) ;
 int x86bios_set_intr (int,int ) ;

__attribute__((used)) static void
vesa_bios_uninit(void)
{

 if (vesa_bios != ((void*)0)) {
  x86bios_set_intr(0x10, vesa_bios_int10);
  vesa_bios_offs = VESA_BIOS_OFFSET;
  x86bios_free(vesa_bios, vesa_bios_size);
  vesa_bios = ((void*)0);
 }
 if (vesa_adp_info != ((void*)0)) {
  free(vesa_adp_info, M_DEVBUF);
  vesa_adp_info = ((void*)0);
 }
 if (vesa_oemstr != ((void*)0)) {
  free(vesa_oemstr, M_DEVBUF);
  vesa_oemstr = ((void*)0);
 }
 if (vesa_venderstr != ((void*)0)) {
  free(vesa_venderstr, M_DEVBUF);
  vesa_venderstr = ((void*)0);
 }
 if (vesa_prodstr != ((void*)0)) {
  free(vesa_prodstr, M_DEVBUF);
  vesa_prodstr = ((void*)0);
 }
 if (vesa_revstr != ((void*)0)) {
  free(vesa_revstr, M_DEVBUF);
  vesa_revstr = ((void*)0);
 }
 if (vesa_vmode != ((void*)0)) {
  free(vesa_vmode, M_DEVBUF);
  vesa_vmode = ((void*)0);
 }
 if (vesa_palette != ((void*)0)) {
  x86bios_free(vesa_palette,
      VESA_PALETTE_SIZE + vesa_state_buf_size);
  vesa_palette = ((void*)0);
 }
}
