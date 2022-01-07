
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mwl_hal_priv {int mh_dev; scalar_t__ mh_cmdbuf; } ;
struct TYPE_2__ {int Result; int SeqNum; int Cmd; int MacId; int Length; } ;
typedef TYPE_1__ FWCmdHdr ;


 int HostCmd_RESULT_PARTIAL_DATA ;
 int device_printf (int ,char*,int ,int,int,...) ;
 int le16toh (int ) ;
 int mwlcmdname (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dumpresult(struct mwl_hal_priv *mh, int showresult)
{
 const FWCmdHdr *h = (const FWCmdHdr *)mh->mh_cmdbuf;
 const uint8_t *cp;
 int len, i;

 len = le16toh(h->Length);




 device_printf(mh->mh_dev, "Cmd %s Length %d SeqNum %d",
     mwlcmdname(le16toh(h->Cmd) &~ 0x8000), len, le16toh(h->SeqNum));

 if (showresult) {
  const char *results[] =
      { "OK", "ERROR", "NOT_SUPPORT", "PENDING", "BUSY",
        "PARTIAL_DATA" };
  int result = le16toh(h->Result);

  if (result <= HostCmd_RESULT_PARTIAL_DATA)
   printf(" Result %s", results[result]);
  else
   printf(" Result %d", result);
 }
 cp = (const uint8_t *)h;
 for (i = 0; i < len; i++) {
  if ((i % 16) == 0)
   printf("\n%02x", cp[i]);
  else
   printf(" %02x", cp[i]);
 }
 printf("\n");
}
