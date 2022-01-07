
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int oid; int psn; int pnm; int prv; int mdt_month; int mdt_year; char* mid; } ;
struct mmc_ivars {scalar_t__ mode; TYPE_1__ cid; scalar_t__ high_cap; int card_id_string; int card_sn_string; } ;
typedef int oidstr ;


 scalar_t__ mode_sd ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void
mmc_format_card_id_string(struct mmc_ivars *ivar)
{
 char oidstr[8];
 uint8_t c1;
 uint8_t c2;
 c1 = (ivar->cid.oid >> 8) & 0x0ff;
 c2 = ivar->cid.oid & 0x0ff;
 if (c1 > 0x1f && c1 < 0x7f && c2 > 0x1f && c2 < 0x7f)
  snprintf(oidstr, sizeof(oidstr), "%c%c", c1, c2);
 else
  snprintf(oidstr, sizeof(oidstr), "0x%04x", ivar->cid.oid);
 snprintf(ivar->card_sn_string, sizeof(ivar->card_sn_string),
     "%08X", ivar->cid.psn);
 snprintf(ivar->card_id_string, sizeof(ivar->card_id_string),
     "%s%s %s %d.%d SN %08X MFG %02d/%04d by %d %s",
     ivar->mode == mode_sd ? "SD" : "MMC", ivar->high_cap ? "HC" : "",
     ivar->cid.pnm, ivar->cid.prv >> 4, ivar->cid.prv & 0x0f,
     ivar->cid.psn, ivar->cid.mdt_month, ivar->cid.mdt_year,
     ivar->cid.mid, oidstr);
}
