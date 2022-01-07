
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct grehdr {int gre_flags; int * gre_opts; } ;
struct gre_softc {int gre_options; int gre_hlen; scalar_t__ gre_key; scalar_t__ gre_oseq; } ;


 int GRE_ENABLE_CSUM ;
 int GRE_ENABLE_SEQ ;
 int GRE_FLAGS_CP ;
 int GRE_FLAGS_KP ;
 int GRE_FLAGS_SP ;
 int SA_XLOCKED ;
 int gre_ioctl_sx ;
 scalar_t__ htonl (scalar_t__) ;
 int htons (int ) ;
 int sx_assert (int *,int ) ;

void
gre_update_hdr(struct gre_softc *sc, struct grehdr *gh)
{
 uint32_t *opts;
 uint16_t flags;

 sx_assert(&gre_ioctl_sx, SA_XLOCKED);

 flags = 0;
 opts = gh->gre_opts;
 if (sc->gre_options & GRE_ENABLE_CSUM) {
  flags |= GRE_FLAGS_CP;
  sc->gre_hlen += 2 * sizeof(uint16_t);
  *opts++ = 0;
 }
 if (sc->gre_key != 0) {
  flags |= GRE_FLAGS_KP;
  sc->gre_hlen += sizeof(uint32_t);
  *opts++ = htonl(sc->gre_key);
 }
 if (sc->gre_options & GRE_ENABLE_SEQ) {
  flags |= GRE_FLAGS_SP;
  sc->gre_hlen += sizeof(uint32_t);
  *opts++ = 0;
 } else
  sc->gre_oseq = 0;
 gh->gre_flags = htons(flags);
}
