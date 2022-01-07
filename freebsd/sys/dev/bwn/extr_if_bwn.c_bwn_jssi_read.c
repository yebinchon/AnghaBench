
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_mac {int dummy; } ;


 int BWN_SHARED ;
 int bwn_shm_read_2 (struct bwn_mac*,int ,int) ;

__attribute__((used)) static uint32_t
bwn_jssi_read(struct bwn_mac *mac)
{
 uint32_t val = 0;

 val = bwn_shm_read_2(mac, BWN_SHARED, 0x08a);
 val <<= 16;
 val |= bwn_shm_read_2(mac, BWN_SHARED, 0x088);

 return (val);
}
