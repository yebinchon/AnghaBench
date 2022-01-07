
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {int len; } ;
struct fsm_opt {int data; TYPE_1__ hdr; } ;
struct ccp_config {int dummy; } ;
struct bundle {int dummy; } ;


 int LogCCP ;
 scalar_t__ MPPE_ConfigVal (struct bundle*,struct ccp_config const*) ;
 int MPPE_MasterKeyValid ;
 int log_Printf (int ,char*) ;
 int ua_htonl (scalar_t__*,int ) ;

__attribute__((used)) static void
MPPEInitOptsOutput(struct bundle *bundle, struct fsm_opt *o,
                   const struct ccp_config *cfg)
{
  u_int32_t mval;

  o->hdr.len = 6;

  if (!MPPE_MasterKeyValid) {
    log_Printf(LogCCP, "MPPE: MasterKey is invalid,"
               " MPPE is available only with CHAP81 authentication\n");
    mval = 0;
    ua_htonl(&mval, o->data);
    return;
  }


  mval = MPPE_ConfigVal(bundle, cfg);
  ua_htonl(&mval, o->data);
}
