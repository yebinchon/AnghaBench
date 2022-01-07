
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
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int) ;

void
bwn_hf_write(struct bwn_mac *mac, uint64_t value)
{

 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_HFLO,
     (value & 0x00000000ffffull));
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_HFMI,
     (value & 0x0000ffff0000ull) >> 16);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_HFHI,
     (value & 0xffff00000000ULL) >> 32);
}
