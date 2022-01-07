
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_SCRATCH ;
 int BWN_SCRATCH_LONG_RETRY ;
 int BWN_SCRATCH_SHORT_RETRY ;
 int MIN (int,int) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int ) ;

__attribute__((used)) static void
bwn_set_txretry(struct bwn_mac *mac, int s, int l)
{

 bwn_shm_write_2(mac, BWN_SCRATCH, BWN_SCRATCH_SHORT_RETRY, MIN(s, 0xf));
 bwn_shm_write_2(mac, BWN_SCRATCH, BWN_SCRATCH_LONG_RETRY, MIN(l, 0xf));
}
