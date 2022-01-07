
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int const* ic_macaddr; } ;
struct bwi_softc {TYPE_2__ sc_ic; TYPE_1__* sc_cur_regwin; } ;
struct bwi_myaddr_bssid {int bssid; int myaddr; } ;
struct bwi_mac {int dummy; } ;
typedef int buf ;
struct TYPE_3__ {scalar_t__ rw_type; } ;


 int BWI_ADDR_FILTER_BSSID ;
 scalar_t__ BWI_REGWIN_T_MAC ;
 int KASSERT (int,char*) ;
 int TMPLT_WRITE_4 (struct bwi_mac*,int,int) ;
 int bcopy (int const*,int ,int) ;
 int bwi_set_addr_filter (struct bwi_softc*,int ,int const*) ;

__attribute__((used)) static void
bwi_set_bssid(struct bwi_softc *sc, const uint8_t *bssid)
{
 struct bwi_mac *mac;
 struct bwi_myaddr_bssid buf;
 const uint8_t *p;
 uint32_t val;
 int n, i;

 KASSERT(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
     ("current regwin type %d", sc->sc_cur_regwin->rw_type));
 mac = (struct bwi_mac *)sc->sc_cur_regwin;

 bwi_set_addr_filter(sc, BWI_ADDR_FILTER_BSSID, bssid);

 bcopy(sc->sc_ic.ic_macaddr, buf.myaddr, sizeof(buf.myaddr));
 bcopy(bssid, buf.bssid, sizeof(buf.bssid));

 n = sizeof(buf) / sizeof(val);
 p = (const uint8_t *)&buf;
 for (i = 0; i < n; ++i) {
  int j;

  val = 0;
  for (j = 0; j < sizeof(val); ++j)
   val |= ((uint32_t)(*p++)) << (j * 8);

  TMPLT_WRITE_4(mac, 0x20 + (i * sizeof(val)), val);
 }
}
