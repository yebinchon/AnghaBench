
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int* dc_srom; } ;
struct dc_leaf_hdr {int dc_mcnt; } ;
struct dc_eblock_sym {int dummy; } ;
struct dc_eblock_sia {int dummy; } ;
struct dc_eblock_mii {int dummy; } ;
struct dc_eblock_hdr {int dc_type; int dc_len; } ;





 int dc_decode_leaf_mii (struct dc_softc*,struct dc_eblock_mii*) ;
 int dc_decode_leaf_sia (struct dc_softc*,struct dc_eblock_sia*) ;
 int dc_decode_leaf_sym (struct dc_softc*,struct dc_eblock_sym*) ;

__attribute__((used)) static int
dc_parse_21143_srom(struct dc_softc *sc)
{
 struct dc_leaf_hdr *lhdr;
 struct dc_eblock_hdr *hdr;
 int error, have_mii, i, loff;
 char *ptr;

 have_mii = 0;
 loff = sc->dc_srom[27];
 lhdr = (struct dc_leaf_hdr *)&(sc->dc_srom[loff]);

 ptr = (char *)lhdr;
 ptr += sizeof(struct dc_leaf_hdr) - 1;



 for (i = 0; i < lhdr->dc_mcnt; i++) {
  hdr = (struct dc_eblock_hdr *)ptr;
  if (hdr->dc_type == 130)
      have_mii++;

  ptr += (hdr->dc_len & 0x7F);
  ptr++;
 }





 ptr = (char *)lhdr;
 ptr += sizeof(struct dc_leaf_hdr) - 1;
 error = 0;
 for (i = 0; i < lhdr->dc_mcnt; i++) {
  hdr = (struct dc_eblock_hdr *)ptr;
  switch (hdr->dc_type) {
  case 130:
   error = dc_decode_leaf_mii(sc, (struct dc_eblock_mii *)hdr);
   break;
  case 129:
   if (! have_mii)
    error = dc_decode_leaf_sia(sc,
        (struct dc_eblock_sia *)hdr);
   break;
  case 128:
   if (! have_mii)
    error = dc_decode_leaf_sym(sc,
        (struct dc_eblock_sym *)hdr);
   break;
  default:

   break;
  }
  ptr += (hdr->dc_len & 0x7F);
  ptr++;
 }
 return (error);
}
