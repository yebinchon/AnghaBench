
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct iwi_rateset {int mode; int type; scalar_t__ nrates; int rates; } ;
struct ieee80211_rateset {scalar_t__ rs_nrates; int rs_rates; } ;
typedef int rs ;


 int DPRINTF (char*) ;
 int IWI_CMD_SET_RATES ;
 int IWI_MODE_11A ;
 int IWI_MODE_11G ;
 int IWI_RATESET_TYPE_SUPPORTED ;
 int iwi_cmd (struct iwi_softc*,int ,struct iwi_rateset*,int) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct iwi_rateset*,int ,int) ;
 scalar_t__ nitems (int ) ;

__attribute__((used)) static int
iwi_set_rateset(struct iwi_softc *sc, const struct ieee80211_rateset *net_rs,
    int mode, int type)
{
 struct iwi_rateset rs;

 memset(&rs, 0, sizeof(rs));
 rs.mode = mode;
 rs.type = type;
 rs.nrates = net_rs->rs_nrates;
 if (rs.nrates > nitems(rs.rates)) {
  DPRINTF(("Truncating negotiated rate set from %u\n",
      rs.nrates));
  rs.nrates = nitems(rs.rates);
 }
 memcpy(rs.rates, net_rs->rs_rates, rs.nrates);
 DPRINTF(("Setting .11%c%s %s rates (%u)\n",
     mode == IWI_MODE_11A ? 'a' : 'b',
     mode == IWI_MODE_11G ? "g" : "",
     type == IWI_RATESET_TYPE_SUPPORTED ? "supported" : "negotiated",
     rs.nrates));

 return (iwi_cmd(sc, IWI_CMD_SET_RATES, &rs, sizeof(rs)));
}
