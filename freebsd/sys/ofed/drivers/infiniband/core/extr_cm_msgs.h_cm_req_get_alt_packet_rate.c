
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int alt_offset132; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u8 cm_req_get_alt_packet_rate(struct cm_req_msg *req_msg)
{
 return (u8) (be32_to_cpu(req_msg->alt_offset132) & 0x3F);
}
