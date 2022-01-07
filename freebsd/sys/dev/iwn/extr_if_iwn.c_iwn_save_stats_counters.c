
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fa; int bad_plcp; } ;
struct TYPE_6__ {int bad_plcp; } ;
struct TYPE_5__ {int fa; int bad_plcp; } ;
struct TYPE_8__ {TYPE_3__ ofdm; TYPE_2__ ht; TYPE_1__ cck; } ;
struct iwn_stats {TYPE_4__ rx; } ;
struct iwn_calib_state {void* fa_ofdm; void* bad_plcp_ofdm; void* bad_plcp_ht; void* fa_cck; void* bad_plcp_cck; } ;
struct iwn_softc {int last_calib_ticks; struct iwn_calib_state calib; } ;


 void* le32toh (int ) ;
 int ticks ;

__attribute__((used)) static void
iwn_save_stats_counters(struct iwn_softc *sc, const struct iwn_stats *rs)
{
 struct iwn_calib_state *calib = &sc->calib;


 calib->bad_plcp_cck = le32toh(rs->rx.cck.bad_plcp);
 calib->fa_cck = le32toh(rs->rx.cck.fa);
 calib->bad_plcp_ht = le32toh(rs->rx.ht.bad_plcp);
 calib->bad_plcp_ofdm = le32toh(rs->rx.ofdm.bad_plcp);
 calib->fa_ofdm = le32toh(rs->rx.ofdm.fa);


 sc->last_calib_ticks = ticks;
}
