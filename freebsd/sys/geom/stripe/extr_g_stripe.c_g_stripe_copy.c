
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct g_stripe_softc {int sc_stripesize; int sc_ndisks; } ;
typedef int off_t ;
typedef int intmax_t ;


 int KASSERT (int,char*) ;
 int bcopy (char*,char*,size_t) ;

__attribute__((used)) static void
g_stripe_copy(struct g_stripe_softc *sc, char *src, char *dst, off_t offset,
    off_t length, int mode)
{
 off_t stripesize;
 size_t len;

 stripesize = sc->sc_stripesize;
 len = (size_t)(stripesize - (offset & (stripesize - 1)));
 do {
  bcopy(src, dst, len);
  if (mode) {
   dst += len + stripesize * (sc->sc_ndisks - 1);
   src += len;
  } else {
   dst += len;
   src += len + stripesize * (sc->sc_ndisks - 1);
  }
  length -= len;
  KASSERT(length >= 0,
      ("Length < 0 (stripesize=%ju, offset=%ju, length=%jd).",
      (uintmax_t)stripesize, (uintmax_t)offset, (intmax_t)length));
  if (length > stripesize)
   len = stripesize;
  else
   len = length;
 } while (length > 0);
}
