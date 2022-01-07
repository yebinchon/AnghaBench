
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {char* value; } ;
struct hv_kvp_exchg_msg_value {char* key; int key_size; int value_size; void* value_type; TYPE_5__ msg_value; } ;
struct TYPE_8__ {struct hv_kvp_exchg_msg_value data; } ;
struct TYPE_7__ {struct hv_kvp_exchg_msg_value data; } ;
struct TYPE_9__ {TYPE_3__ kvp_get; TYPE_2__ kvp_enum_data; } ;
struct TYPE_6__ {int operation; } ;
struct hv_kvp_msg {TYPE_4__ body; TYPE_1__ kvp_hdr; } ;
struct hv_kvp_ip_msg {int dummy; } ;


 int EINVAL ;
 int HV_KVP_EXCHANGE_MAX_KEY_SIZE ;
 int HV_KVP_EXCHANGE_MAX_VALUE_SIZE ;






 void* HV_REG_SZ ;
 int hv_kvp_convert_utf8_ipinfo_to_utf16 (struct hv_kvp_msg*,struct hv_kvp_ip_msg*) ;
 int strlen (char*) ;
 int utf8_to_utf16 (int *,int,char*,int ,int,int*) ;

__attribute__((used)) static int
hv_kvp_convert_usermsg_to_hostmsg(struct hv_kvp_msg *umsg, struct hv_kvp_msg *hmsg)
{
 int hkey_len = 0, hvalue_len = 0, utf_err = 0;
 struct hv_kvp_exchg_msg_value *host_exchg_data;
 char *key_name, *value;

 struct hv_kvp_ip_msg *host_ip_msg = (struct hv_kvp_ip_msg *)hmsg;

 switch (hmsg->kvp_hdr.operation) {
 case 130:
  return (hv_kvp_convert_utf8_ipinfo_to_utf16(umsg, host_ip_msg));

 case 128:
 case 129:
 case 133:
  return (0);

 case 132:
  host_exchg_data = &hmsg->body.kvp_enum_data.data;
  key_name = umsg->body.kvp_enum_data.data.key;
  hkey_len = utf8_to_utf16((uint16_t *)host_exchg_data->key,
    ((HV_KVP_EXCHANGE_MAX_KEY_SIZE / 2) - 2),
    key_name, strlen(key_name),
    1, &utf_err);

  host_exchg_data->key_size = 2 * (hkey_len + 1);
  value = umsg->body.kvp_enum_data.data.msg_value.value;
  hvalue_len = utf8_to_utf16(
    (uint16_t *)host_exchg_data->msg_value.value,
    ((HV_KVP_EXCHANGE_MAX_VALUE_SIZE / 2) - 2),
    value, strlen(value),
    1, &utf_err);
  host_exchg_data->value_size = 2 * (hvalue_len + 1);
  host_exchg_data->value_type = HV_REG_SZ;

  if ((hkey_len < 0) || (hvalue_len < 0))
   return (EINVAL);

  return (0);

 case 131:
  host_exchg_data = &hmsg->body.kvp_get.data;
  value = umsg->body.kvp_get.data.msg_value.value;
  hvalue_len = utf8_to_utf16(
    (uint16_t *)host_exchg_data->msg_value.value,
    ((HV_KVP_EXCHANGE_MAX_VALUE_SIZE / 2) - 2),
    value, strlen(value),
    1, &utf_err);

  host_exchg_data->value_size = 2 * (hvalue_len + 1);

  host_exchg_data->value_type = HV_REG_SZ;

  if (hvalue_len < 0)
   return (EINVAL);

  return (0);

 default:
  return (EINVAL);
 }
}
