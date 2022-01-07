
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vr_rxdesc {struct vr_desc* desc; } ;
struct vr_desc {void* vr_status; void* vr_ctl; } ;


 int MCLBYTES ;
 int VR_RXCTL ;
 int VR_RXSTAT_OWN ;
 void* htole32 (int) ;

__attribute__((used)) static __inline void
vr_discard_rxbuf(struct vr_rxdesc *rxd)
{
 struct vr_desc *desc;

 desc = rxd->desc;
 desc->vr_ctl = htole32(VR_RXCTL | (MCLBYTES - sizeof(uint64_t)));
 desc->vr_status = htole32(VR_RXSTAT_OWN);
}
