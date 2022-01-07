
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uath_softc {int dummy; } ;
struct uath_cmd_rateset {int dummy; } ;
struct TYPE_2__ {int * set; int length; } ;
struct uath_cmd_rates {TYPE_1__ rateset; void* size; void* connid; } ;
struct ieee80211_rateset {int rs_nrates; int rs_rates; } ;
typedef int rates ;


 int DPRINTF (struct uath_softc*,int ,char*,int ) ;
 int UATH_DEBUG_RATES ;
 int UATH_ID_BSS ;
 int WDCMSG_SET_BASIC_RATE ;
 int bcopy (int ,int *,int ) ;
 void* htobe32 (int) ;
 int memset (struct uath_cmd_rates*,int ,int) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_cmd_rates*,int,int ) ;

__attribute__((used)) static int
uath_set_rates(struct uath_softc *sc, const struct ieee80211_rateset *rs)
{
 struct uath_cmd_rates rates;

 memset(&rates, 0, sizeof(rates));
 rates.connid = htobe32(UATH_ID_BSS);
 rates.size = htobe32(sizeof(struct uath_cmd_rateset));

 rates.rateset.length = rs->rs_nrates;
 bcopy(rs->rs_rates, &rates.rateset.set[0], rs->rs_nrates);

 DPRINTF(sc, UATH_DEBUG_RATES,
     "setting supported rates nrates=%d\n", rs->rs_nrates);
 return uath_cmd_write(sc, WDCMSG_SET_BASIC_RATE,
     &rates, sizeof rates, 0);
}
