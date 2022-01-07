
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int ismic ;
struct TYPE_3__ {int ah_macVersion; int ah_macRev; } ;
struct TYPE_4__ {TYPE_1__ revs; } ;
typedef int FILE ;


 int AR_KEYTABLE_KEY0 (int) ;
 int AR_KEYTABLE_KEY1 (int) ;
 int AR_KEYTABLE_KEY2 (int) ;
 int AR_KEYTABLE_KEY3 (int) ;
 int AR_KEYTABLE_KEY4 (int) ;
 int AR_KEYTABLE_MAC0 (int) ;
 int AR_KEYTABLE_MAC1 (int) ;
 int AR_KEYTABLE_TYPE (int) ;
 int AR_KEYTABLE_TYPE_TKIP ;
 int AR_KEYTABLE_VALID ;
 int AR_STA_ID1 ;
 int AR_STA_ID1_CRPT_MIC_ENABLE ;
 int IEEE80211_ADDR_LEN ;
 int NBBY ;
 int OS_REG_READ (int ,int ) ;
 scalar_t__ SREV (int,int) ;
 int ah ;
 char* ether_sprintf (int*) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ isclr (int*,int) ;
 scalar_t__ isset (int*,int) ;
 int memset (int*,int ,int) ;
 int setbit (int*,int) ;
 TYPE_2__ state ;

__attribute__((used)) static void
ath_hal_dumpkeycache(FILE *fd, int nkeys)
{
 static const char *keytypenames[] = {
  "WEP-40",
  "WEP-104",
  "#2",
  "WEP-128",
  "TKIP",
  "AES-OCB",
  "AES-CCM",
  "CLR",
 };
 int micEnabled = SREV(state.revs.ah_macVersion, state.revs.ah_macRev) < SREV(4,8) ? 0 :
        OS_REG_READ(ah, AR_STA_ID1) & AR_STA_ID1_CRPT_MIC_ENABLE;
 u_int8_t mac[IEEE80211_ADDR_LEN];
 u_int8_t ismic[128/NBBY];
 int entry;
 int first = 1;

 memset(ismic, 0, sizeof(ismic));
 for (entry = 0; entry < nkeys; entry++) {
  u_int32_t macLo, macHi, type;
  u_int32_t key0, key1, key2, key3, key4;

  macHi = OS_REG_READ(ah, AR_KEYTABLE_MAC1(entry));
  if ((macHi & AR_KEYTABLE_VALID) == 0 && isclr(ismic, entry))
   continue;
  macLo = OS_REG_READ(ah, AR_KEYTABLE_MAC0(entry));
  macHi <<= 1;
  if (macLo & (1<<31))
   macHi |= 1;
  macLo <<= 1;
  mac[4] = macHi & 0xff;
  mac[5] = macHi >> 8;
  mac[0] = macLo & 0xff;
  mac[1] = macLo >> 8;
  mac[2] = macLo >> 16;
  mac[3] = macLo >> 24;
  type = OS_REG_READ(ah, AR_KEYTABLE_TYPE(entry));
  if ((type & 7) == AR_KEYTABLE_TYPE_TKIP && micEnabled)
   setbit(ismic, entry+64);
  key0 = OS_REG_READ(ah, AR_KEYTABLE_KEY0(entry));
  key1 = OS_REG_READ(ah, AR_KEYTABLE_KEY1(entry));
  key2 = OS_REG_READ(ah, AR_KEYTABLE_KEY2(entry));
  key3 = OS_REG_READ(ah, AR_KEYTABLE_KEY3(entry));
  key4 = OS_REG_READ(ah, AR_KEYTABLE_KEY4(entry));
  if (first) {
   fprintf(fd, "\n");
   first = 0;
  }
  fprintf(fd, "KEY[%03u] MAC %s %-7s %02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x\n"
   , entry
   , ether_sprintf(mac)
   , isset(ismic, entry) ? "MIC" : keytypenames[type & 7]
   , (key0 >> 0) & 0xff
   , (key0 >> 8) & 0xff
   , (key0 >> 16) & 0xff
   , (key0 >> 24) & 0xff
   , (key1 >> 0) & 0xff
   , (key1 >> 8) & 0xff
   , (key2 >> 0) & 0xff
   , (key2 >> 8) & 0xff
   , (key2 >> 16) & 0xff
   , (key2 >> 24) & 0xff
   , (key3 >> 0) & 0xff
   , (key3 >> 8) & 0xff
   , (key4 >> 0) & 0xff
   , (key4 >> 8) & 0xff
   , (key4 >> 16) & 0xff
   , (key4 >> 24) & 0xff
  );
 }
}
