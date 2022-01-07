
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bwn_mac {int dummy; } ;


 int BWN_SHARED ;
 int BWN_SHARED_HFHI ;
 int BWN_SHARED_HFLO ;
 int BWN_SHARED_HFMI ;
 int bwn_shm_read_2 (struct bwn_mac*,int ,int ) ;

uint64_t
bwn_hf_read(struct bwn_mac *mac)
{
 uint64_t ret;

 ret = bwn_shm_read_2(mac, BWN_SHARED, BWN_SHARED_HFHI);
 ret <<= 16;
 ret |= bwn_shm_read_2(mac, BWN_SHARED, BWN_SHARED_HFMI);
 ret <<= 16;
 ret |= bwn_shm_read_2(mac, BWN_SHARED, BWN_SHARED_HFLO);
 return (ret);
}
