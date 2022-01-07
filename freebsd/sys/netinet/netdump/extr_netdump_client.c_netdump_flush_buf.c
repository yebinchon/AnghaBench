
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debugnet_proto_aux {int dp_offset_start; } ;
struct TYPE_2__ {scalar_t__ nd_buf_len; int nd_pcb; int nd_tx_off; } ;


 int DEBUGNET_DATA ;
 int debugnet_send (int ,int ,int ,scalar_t__,struct debugnet_proto_aux*) ;
 int nd_buf ;
 TYPE_1__ nd_conf ;

__attribute__((used)) static int
netdump_flush_buf(void)
{
 int error;

 error = 0;
 if (nd_conf.nd_buf_len != 0) {
  struct debugnet_proto_aux auxdata = {
   .dp_offset_start = nd_conf.nd_tx_off,
  };
  error = debugnet_send(nd_conf.nd_pcb, DEBUGNET_DATA, nd_buf,
      nd_conf.nd_buf_len, &auxdata);
  if (error == 0)
   nd_conf.nd_buf_len = 0;
 }
 return (error);
}
