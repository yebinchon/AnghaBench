
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int channel_t ;
 size_t bnep_recv_control_command_not_understood (int *,int*,size_t) ;
 size_t bnep_recv_filter_multi_addr_rsp (int *,int*,size_t) ;
 size_t bnep_recv_filter_multi_addr_set (int *,int*,size_t) ;
 size_t bnep_recv_filter_net_type_rsp (int *,int*,size_t) ;
 size_t bnep_recv_filter_net_type_set (int *,int*,size_t) ;
 size_t bnep_recv_setup_connection_req (int *,int*,size_t) ;
 size_t bnep_recv_setup_connection_rsp (int *,int*,size_t) ;
 int bnep_send_control (int *,int const,int) ;

__attribute__((used)) static size_t
bnep_recv_control(channel_t *chan, uint8_t *ptr, size_t size, bool isext)
{
 uint8_t type;
 size_t len;

 if (size-- < 1)
  return 0;

 type = *ptr++;

 switch (type) {
 case 134:
  len = bnep_recv_control_command_not_understood(chan, ptr, size);
  break;

 case 129:
  if (isext)
   return 0;

  len = bnep_recv_setup_connection_req(chan, ptr, size);
  break;

 case 128:
  if (isext)
   return 0;

  len = bnep_recv_setup_connection_rsp(chan, ptr, size);
  break;

 case 130:
  len = bnep_recv_filter_net_type_set(chan, ptr, size);
  break;

 case 131:
  len = bnep_recv_filter_net_type_rsp(chan, ptr, size);
  break;

 case 132:
  len = bnep_recv_filter_multi_addr_set(chan, ptr, size);
  break;

 case 133:
  len = bnep_recv_filter_multi_addr_rsp(chan, ptr, size);
  break;

 default:
  len = 0;
  break;
 }

 if (len == 0)
  bnep_send_control(chan, 134, type);

 return len;
}
