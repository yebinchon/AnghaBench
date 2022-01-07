
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint16_t ;
struct netflow_v9_flowset_header {int dummy; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_7__ {int field_id; int field_length; } ;
struct TYPE_6__ {int flowsets_count; int* flowset_records; scalar_t__* v9_flowsets; } ;


 int M_NETFLOW_GENERAL ;
 int M_WAITOK ;
 int M_ZERO ;
 int NETFLOW_V9_FLOW_V4_L4 ;
 int NETFLOW_V9_FLOW_V6_L4 ;
 int NETFLOW_V9_MAX_RESERVED_FLOWSET ;
 int _NETFLOW_V9_TEMPLATE_SIZE (TYPE_3__*) ;
 TYPE_3__* _netflow_v9_record_ipv4_tcp ;
 TYPE_3__* _netflow_v9_record_ipv6_tcp ;
 void* htons (int) ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static void
generate_v9_templates(priv_p priv)
{
 uint16_t *p, *template_fields_cnt;
 int cnt;

 int flowset_size = sizeof(struct netflow_v9_flowset_header) +
  _NETFLOW_V9_TEMPLATE_SIZE(_netflow_v9_record_ipv4_tcp) +
  _NETFLOW_V9_TEMPLATE_SIZE(_netflow_v9_record_ipv6_tcp);

 priv->v9_flowsets[0] = malloc(flowset_size, M_NETFLOW_GENERAL, M_WAITOK | M_ZERO);

 if (flowset_size % 4)
  flowset_size += 4 - (flowset_size % 4);

 priv->flowsets_count = 1;
 p = (uint16_t *)priv->v9_flowsets[0];
 *p++ = 0;
 *p++ = htons(flowset_size);




 *p++ = htons(NETFLOW_V9_MAX_RESERVED_FLOWSET + NETFLOW_V9_FLOW_V4_L4);
 template_fields_cnt = p++;
 for (cnt = 0; _netflow_v9_record_ipv4_tcp[cnt].field_id != 0; cnt++) {
  *p++ = htons(_netflow_v9_record_ipv4_tcp[cnt].field_id);
  *p++ = htons(_netflow_v9_record_ipv4_tcp[cnt].field_length);
 }
 *template_fields_cnt = htons(cnt);




 *p++ = htons(NETFLOW_V9_MAX_RESERVED_FLOWSET + NETFLOW_V9_FLOW_V6_L4);
 template_fields_cnt = p++;
 for (cnt = 0; _netflow_v9_record_ipv6_tcp[cnt].field_id != 0; cnt++) {
  *p++ = htons(_netflow_v9_record_ipv6_tcp[cnt].field_id);
  *p++ = htons(_netflow_v9_record_ipv6_tcp[cnt].field_length);
 }
 *template_fields_cnt = htons(cnt);

 priv->flowset_records[0] = 2;
}
