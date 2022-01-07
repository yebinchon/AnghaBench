
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bxe_softc {int stats_pending; int fw_stats_req_mapping; TYPE_1__* fw_stats_req; int stats_counter; } ;
struct TYPE_4__ {int drv_stats_counter; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ) ;
 int BXE_STATS_LOCK (struct bxe_softc*) ;
 int BXE_STATS_UNLOCK (struct bxe_softc*) ;
 int DBG_STATS ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_STAT_QUERY ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bxe_dp_stats (struct bxe_softc*) ;
 int bxe_sp_post (struct bxe_softc*,int ,int ,int ,int ,int ) ;
 int htole16 (int ) ;
 int le16toh (int ) ;

__attribute__((used)) static void
bxe_storm_stats_post(struct bxe_softc *sc)
{
    int rc;

    if (!sc->stats_pending) {
        BXE_STATS_LOCK(sc);

        if (sc->stats_pending) {
            BXE_STATS_UNLOCK(sc);
            return;
        }

        sc->fw_stats_req->hdr.drv_stats_counter =
            htole16(sc->stats_counter++);

        BLOGD(sc, DBG_STATS,
              "sending statistics ramrod %d\n",
              le16toh(sc->fw_stats_req->hdr.drv_stats_counter));




        bxe_dp_stats(sc);


        rc = bxe_sp_post(sc, RAMROD_CMD_ID_COMMON_STAT_QUERY, 0,
                         U64_HI(sc->fw_stats_req_mapping),
                         U64_LO(sc->fw_stats_req_mapping),
                         NONE_CONNECTION_TYPE);
        if (rc == 0) {
            sc->stats_pending = 1;
        }

        BXE_STATS_UNLOCK(sc);
    }
}
