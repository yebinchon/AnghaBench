
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_gpa {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct hn_nvs_sendctx {int dummy; } ;


 int HN_NVS_RNDIS_MTYPE_CTRL ;
 int hn_nvs_send_rndis_sglist (struct vmbus_channel*,int ,struct hn_nvs_sendctx*,struct vmbus_gpa*,int) ;

int
hn_nvs_send_rndis_ctrl(struct vmbus_channel *chan,
    struct hn_nvs_sendctx *sndc, struct vmbus_gpa *gpa, int gpa_cnt)
{

 return hn_nvs_send_rndis_sglist(chan, HN_NVS_RNDIS_MTYPE_CTRL,
     sndc, gpa, gpa_cnt);
}
