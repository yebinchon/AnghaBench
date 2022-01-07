
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct flow_rec {int r_ip_p; TYPE_2__ r_dst; TYPE_1__ r_src; int r_dport; int r_sport; } ;


 int ADDR_HASH (int ,int ) ;
 int FULL_HASH (int ,int ,int ,int ) ;



__attribute__((used)) static inline uint32_t
ip_hash(struct flow_rec *r)
{

 switch (r->r_ip_p) {
 case 129:
 case 128:
  return FULL_HASH(r->r_src.s_addr, r->r_dst.s_addr,
      r->r_sport, r->r_dport);
 default:
  return ADDR_HASH(r->r_src.s_addr, r->r_dst.s_addr);
 }
}
