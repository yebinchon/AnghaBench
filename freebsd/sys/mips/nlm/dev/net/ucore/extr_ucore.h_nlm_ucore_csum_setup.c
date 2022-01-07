
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_write_ucore_csuminfo (unsigned int) ;

__attribute__((used)) static __inline__ void
nlm_ucore_csum_setup(int iphdr_start, int iphdr_len)
{
 unsigned int val = 0;

 val |= ((iphdr_len & 0xff) << 8);
 val |= (iphdr_len & 0xff);
 nlm_write_ucore_csuminfo(val);
}
