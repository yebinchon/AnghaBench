
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int dbm; int flags; } ;


 int FLG_NEWDATA ;
 int sscanf (char const*,char*,int*) ;
 int timers ;
 int tmr_add (int *,int,int,int ,struct ctx*) ;
 int tmr_status ;

__attribute__((used)) static void
at_async_csq(void *arg, const char *resp)
{
 struct ctx *ctx = arg;
 int n, rssi;

 n = sscanf(resp, "+CSQ: %d,%*d", &rssi);
 if (n != 1)
  return;
 if (rssi == 99)
  ctx->dbm = 0;
 else {
  ctx->dbm = (rssi * 2) - 113;
  tmr_add(&timers, 1, 15, tmr_status, ctx);
 }

 ctx->flags |= FLG_NEWDATA;
}
