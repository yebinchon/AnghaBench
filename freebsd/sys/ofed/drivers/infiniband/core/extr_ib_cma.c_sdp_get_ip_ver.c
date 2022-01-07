
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdp_hh {int ipv_cap; } ;



__attribute__((used)) static inline u8 sdp_get_ip_ver(const struct sdp_hh *hh)
{
 return hh->ipv_cap >> 4;
}
