
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int addr_family; int dhcp_enabled; scalar_t__ adapter_id; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
struct TYPE_6__ {TYPE_2__ kvp_ip_val; } ;
struct hv_kvp_msg {TYPE_3__ body; } ;
struct TYPE_4__ {int addr_family; int dhcp_enabled; scalar_t__ adapter_id; scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; scalar_t__ ip_addr; } ;
struct hv_kvp_ip_msg {TYPE_1__ kvp_ip_val; } ;


 int MAX_ADAPTER_ID_SIZE ;
 int MAX_GATEWAY_SIZE ;
 int MAX_IP_ADDR_SIZE ;
 int strlen (char*) ;
 int utf8_to_utf16 (int *,int ,char*,int ,int,int*) ;

__attribute__((used)) static int
hv_kvp_convert_utf8_ipinfo_to_utf16(struct hv_kvp_msg *umsg,
        struct hv_kvp_ip_msg *host_ip_msg)
{
 int err_ip, err_subnet, err_gway, err_dns, err_adap;
 int UNUSED_FLAG = 1;

 utf8_to_utf16((uint16_t *)host_ip_msg->kvp_ip_val.ip_addr,
     MAX_IP_ADDR_SIZE,
     (char *)umsg->body.kvp_ip_val.ip_addr,
     strlen((char *)umsg->body.kvp_ip_val.ip_addr),
     UNUSED_FLAG,
     &err_ip);
 utf8_to_utf16((uint16_t *)host_ip_msg->kvp_ip_val.sub_net,
     MAX_IP_ADDR_SIZE,
     (char *)umsg->body.kvp_ip_val.sub_net,
     strlen((char *)umsg->body.kvp_ip_val.sub_net),
     UNUSED_FLAG,
     &err_subnet);
 utf8_to_utf16((uint16_t *)host_ip_msg->kvp_ip_val.gate_way,
     MAX_GATEWAY_SIZE,
     (char *)umsg->body.kvp_ip_val.gate_way,
     strlen((char *)umsg->body.kvp_ip_val.gate_way),
     UNUSED_FLAG,
     &err_gway);
 utf8_to_utf16((uint16_t *)host_ip_msg->kvp_ip_val.dns_addr,
     MAX_IP_ADDR_SIZE,
     (char *)umsg->body.kvp_ip_val.dns_addr,
     strlen((char *)umsg->body.kvp_ip_val.dns_addr),
     UNUSED_FLAG,
     &err_dns);
 utf8_to_utf16((uint16_t *)host_ip_msg->kvp_ip_val.adapter_id,
     MAX_ADAPTER_ID_SIZE,
     (char *)umsg->body.kvp_ip_val.adapter_id,
     strlen((char *)umsg->body.kvp_ip_val.adapter_id),
     UNUSED_FLAG,
     &err_adap);

 host_ip_msg->kvp_ip_val.dhcp_enabled = umsg->body.kvp_ip_val.dhcp_enabled;
 host_ip_msg->kvp_ip_val.addr_family = umsg->body.kvp_ip_val.addr_family;

 return (err_ip | err_subnet | err_gway | err_dns | err_adap);
}
