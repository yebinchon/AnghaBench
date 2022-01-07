
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct vmbus_channel {int dummy; } ;
struct TYPE_6__ {scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; int dhcp_enabled; int addr_family; scalar_t__ adapter_id; scalar_t__ ip_addr; } ;
struct TYPE_7__ {TYPE_2__ kvp_ip_val; } ;
struct TYPE_5__ {int operation; } ;
struct hv_kvp_msg {TYPE_3__ body; TYPE_1__ kvp_hdr; } ;
struct TYPE_8__ {scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; int dhcp_enabled; int addr_family; scalar_t__ adapter_id; scalar_t__ ip_addr; } ;
struct hv_kvp_ip_msg {TYPE_4__ kvp_ip_val; int operation; } ;
typedef int device_t ;
typedef int buf ;


 int HYPERV_GUID_STRLEN ;
 int MAX_ADAPTER_ID_SIZE ;
 int MAX_GATEWAY_SIZE ;
 int MAX_IP_ADDR_SIZE ;
 int M_TEMP ;
 int devclass_find (char*) ;
 scalar_t__ devclass_get_devices (int ,int **,int*) ;
 int device_get_nameunit (int ) ;
 int free (int *,int ) ;
 int hyperv_guid2str (int ,char*,int) ;
 int strlcpy (char*,int ,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int utf16_to_utf8 (char*,int ,int *,int ,int,int*) ;
 int vmbus_chan_guid_inst (struct vmbus_channel*) ;
 struct vmbus_channel* vmbus_get_channel (int ) ;

__attribute__((used)) static int
hv_kvp_convert_utf16_ipinfo_to_utf8(struct hv_kvp_ip_msg *host_ip_msg,
        struct hv_kvp_msg *umsg)
{
 int err_ip, err_subnet, err_gway, err_dns, err_adap;
 int UNUSED_FLAG = 1;
 device_t *devs;
 int devcnt;


 utf16_to_utf8((char *)umsg->body.kvp_ip_val.ip_addr,
     MAX_IP_ADDR_SIZE,
     (uint16_t *)host_ip_msg->kvp_ip_val.ip_addr,
     MAX_IP_ADDR_SIZE,
     UNUSED_FLAG,
     &err_ip);


 utf16_to_utf8((char *)umsg->body.kvp_ip_val.adapter_id,
     MAX_ADAPTER_ID_SIZE,
     (uint16_t *)host_ip_msg->kvp_ip_val.adapter_id,
     MAX_ADAPTER_ID_SIZE,
     UNUSED_FLAG,
     &err_adap);

 if (devclass_get_devices(devclass_find("hn"), &devs, &devcnt) == 0) {
  for (devcnt = devcnt - 1; devcnt >= 0; devcnt--) {
   device_t dev = devs[devcnt];
   struct vmbus_channel *chan;
   char buf[HYPERV_GUID_STRLEN];
   int n;

   chan = vmbus_get_channel(dev);
   n = hyperv_guid2str(vmbus_chan_guid_inst(chan), buf,
       sizeof(buf));






   if (strncmp(buf,
       ((char *)&umsg->body.kvp_ip_val.adapter_id) + 1,
       n) == 0) {
    strlcpy((char *)umsg->body.kvp_ip_val.adapter_id,
        device_get_nameunit(dev), MAX_ADAPTER_ID_SIZE);
    break;
   }
  }
  free(devs, M_TEMP);
 }


 umsg->kvp_hdr.operation = host_ip_msg->operation;
 umsg->body.kvp_ip_val.addr_family = host_ip_msg->kvp_ip_val.addr_family;
 umsg->body.kvp_ip_val.dhcp_enabled = host_ip_msg->kvp_ip_val.dhcp_enabled;
 utf16_to_utf8((char *)umsg->body.kvp_ip_val.sub_net, MAX_IP_ADDR_SIZE,
     (uint16_t *)host_ip_msg->kvp_ip_val.sub_net,
     MAX_IP_ADDR_SIZE,
     UNUSED_FLAG,
     &err_subnet);

 utf16_to_utf8((char *)umsg->body.kvp_ip_val.gate_way, MAX_GATEWAY_SIZE,
     (uint16_t *)host_ip_msg->kvp_ip_val.gate_way,
     MAX_GATEWAY_SIZE,
     UNUSED_FLAG,
     &err_gway);

 utf16_to_utf8((char *)umsg->body.kvp_ip_val.dns_addr, MAX_IP_ADDR_SIZE,
     (uint16_t *)host_ip_msg->kvp_ip_val.dns_addr,
     MAX_IP_ADDR_SIZE,
     UNUSED_FLAG,
     &err_dns);

 return (err_ip | err_subnet | err_gway | err_dns | err_adap);
}
