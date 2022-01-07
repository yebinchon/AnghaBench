
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mpt_softc {int dummy; } ;


 int mpt_prt (struct mpt_softc*,char*,char const*) ;
 int mpt_prtc (struct mpt_softc*,char*,...) ;

void
mpt_dump_data(struct mpt_softc *mpt, const char *msg, void *addr, int len)
{
 int offset;
 uint8_t *cp = addr;

 mpt_prt(mpt, "%s:", msg);
 for (offset = 0; offset < len; offset++) {
  if ((offset & 0xf) == 0) {
   mpt_prtc(mpt, "\n");
  }
  mpt_prtc(mpt, " %02x", cp[offset]);
 }
 mpt_prtc(mpt, "\n");
}
