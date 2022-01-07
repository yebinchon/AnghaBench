
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_NTAB16 (int,int) ;
 int BWN_SHARED ;
 int BWN_SHM_SH_NPHY_TXIQW0 ;
 int BWN_SHM_SH_NPHY_TXIQW1 ;
 int BWN_SHM_SH_NPHY_TXIQW2 ;
 int BWN_SHM_SH_NPHY_TXIQW3 ;
 int bwn_ntab_read_bulk (struct bwn_mac*,int ,int,int *) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int ) ;

__attribute__((used)) static void bwn_nphy_tx_iq_workaround(struct bwn_mac *mac)
{
 uint16_t array[4];
 bwn_ntab_read_bulk(mac, BWN_NTAB16(0xF, 0x50), 4, array);

 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHM_SH_NPHY_TXIQW0, array[0]);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHM_SH_NPHY_TXIQW1, array[1]);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHM_SH_NPHY_TXIQW2, array[2]);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHM_SH_NPHY_TXIQW3, array[3]);
}
