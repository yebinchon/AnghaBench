
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uath_softc {int dummy; } ;
 int UATH_STAT_INC (struct uath_softc*,int ) ;
 int st_crcerr ;
 int st_decomperr ;
 int st_decrypt_crcerr ;
 int st_decrypt_micerr ;
 int st_err ;
 int st_keyerr ;
 int st_phyerr ;
 int st_stopinprogress ;

__attribute__((used)) static void
uath_update_rxstat(struct uath_softc *sc, uint32_t status)
{

 switch (status) {
 case 128:
  UATH_STAT_INC(sc, st_stopinprogress);
  break;
 case 135:
  UATH_STAT_INC(sc, st_crcerr);
  break;
 case 129:
  UATH_STAT_INC(sc, st_phyerr);
  break;
 case 133:
  UATH_STAT_INC(sc, st_decrypt_crcerr);
  break;
 case 132:
  UATH_STAT_INC(sc, st_decrypt_micerr);
  break;
 case 134:
  UATH_STAT_INC(sc, st_decomperr);
  break;
 case 130:
  UATH_STAT_INC(sc, st_keyerr);
  break;
 case 131:
  UATH_STAT_INC(sc, st_err);
  break;
 default:
  break;
 }
}
