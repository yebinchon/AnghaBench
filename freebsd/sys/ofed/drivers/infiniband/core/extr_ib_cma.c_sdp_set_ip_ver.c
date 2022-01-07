
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdp_hh {int ipv_cap; } ;



__attribute__((used)) static inline void sdp_set_ip_ver(struct sdp_hh *hh, u8 ip_ver)
{
 hh->ipv_cap = (ip_ver << 4) | (hh->ipv_cap & 0xF);
}
