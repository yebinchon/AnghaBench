
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nmreq_vale_polling {int dummy; } ;
struct nmreq_vale_newif {int dummy; } ;
struct nmreq_vale_list {int dummy; } ;
struct nmreq_vale_detach {int dummy; } ;
struct nmreq_vale_attach {int dummy; } ;
struct nmreq_sync_kloop_start {int dummy; } ;
struct nmreq_register {int dummy; } ;
struct nmreq_port_info_get {int dummy; } ;
struct nmreq_port_hdr {int dummy; } ;
struct nmreq_pools_info {int dummy; } ;
size_t
nmreq_size_by_type(uint16_t nr_reqtype)
{
 switch (nr_reqtype) {
 case 137:
  return sizeof(struct nmreq_register);
 case 138:
  return sizeof(struct nmreq_port_info_get);
 case 134:
  return sizeof(struct nmreq_vale_attach);
 case 132:
  return sizeof(struct nmreq_vale_detach);
 case 131:
  return sizeof(struct nmreq_vale_list);
 case 139:
 case 140:
  return sizeof(struct nmreq_port_hdr);
 case 130:
  return sizeof(struct nmreq_vale_newif);
 case 133:
 case 135:
 case 142:
  return 0;
 case 128:
 case 129:
  return sizeof(struct nmreq_vale_polling);
 case 141:
  return sizeof(struct nmreq_pools_info);
 case 136:
  return sizeof(struct nmreq_sync_kloop_start);
 }
 return 0;
}
