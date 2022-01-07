
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdp_sock {int dummy; } ;


 int MIN (int ,int ) ;
 int SDP_MAX_PACKET ;

__attribute__((used)) static int
sdp_get_recv_bytes(struct sdp_sock *ssk, u32 new_size)
{

 return MIN(new_size, SDP_MAX_PACKET);
}
