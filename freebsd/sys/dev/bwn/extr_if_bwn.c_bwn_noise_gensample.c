
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_mac {int dummy; } ;


 int BWN_MACCMD ;
 int BWN_MACCMD_BGNOISE ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_SHARED ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int,int) ;

__attribute__((used)) static void
bwn_noise_gensample(struct bwn_mac *mac)
{
 uint32_t jssi = 0x7f7f7f7f;

 bwn_shm_write_2(mac, BWN_SHARED, 0x088, (jssi & 0x0000ffff));
 bwn_shm_write_2(mac, BWN_SHARED, 0x08a, (jssi & 0xffff0000) >> 16);
 BWN_WRITE_4(mac, BWN_MACCMD,
     BWN_READ_4(mac, BWN_MACCMD) | BWN_MACCMD_BGNOISE);
}
