
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned long uint16_t ;
struct blockif_ctxt {scalar_t__ bc_magic; unsigned long bc_size; unsigned long bc_sectsz; } ;
typedef unsigned long off_t ;


 scalar_t__ BLOCKIF_SIG ;
 int assert (int) ;

void
blockif_chs(struct blockif_ctxt *bc, uint16_t *c, uint8_t *h, uint8_t *s)
{
 off_t sectors;
 off_t hcyl;
 uint16_t secpt;
 uint8_t heads;

 assert(bc->bc_magic == BLOCKIF_SIG);

 sectors = bc->bc_size / bc->bc_sectsz;


 if (sectors > 65535UL*16*255)
  sectors = 65535UL*16*255;

 if (sectors >= 65536UL*16*63) {
  secpt = 255;
  heads = 16;
  hcyl = sectors / secpt;
 } else {
  secpt = 17;
  hcyl = sectors / secpt;
  heads = (hcyl + 1023) / 1024;

  if (heads < 4)
   heads = 4;

  if (hcyl >= (heads * 1024) || heads > 16) {
   secpt = 31;
   heads = 16;
   hcyl = sectors / secpt;
  }
  if (hcyl >= (heads * 1024)) {
   secpt = 63;
   heads = 16;
   hcyl = sectors / secpt;
  }
 }

 *c = hcyl / heads;
 *h = heads;
 *s = secpt;
}
