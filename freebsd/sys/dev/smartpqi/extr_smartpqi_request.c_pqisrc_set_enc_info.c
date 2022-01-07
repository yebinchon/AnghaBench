
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct raid_map {int data_encryption_key_index; int volume_blk_size; } ;
struct pqi_enc_info {int encrypt_tweak_upper; int encrypt_tweak_lower; int data_enc_key_index; } ;


 int GET_LE16 (int *) ;
 int GET_LE32 (int *) ;

__attribute__((used)) static inline void pqisrc_set_enc_info(
 struct pqi_enc_info *enc_info, struct raid_map *raid_map,
 uint64_t first_block)
{
 uint32_t volume_blk_size;






 volume_blk_size = GET_LE32((uint8_t *)&raid_map->volume_blk_size);
 if (volume_blk_size != 512)
  first_block = (first_block * volume_blk_size) / 512;

 enc_info->data_enc_key_index =
  GET_LE16((uint8_t *)&raid_map->data_encryption_key_index);
 enc_info->encrypt_tweak_upper = ((uint32_t)(((first_block) >> 16) >> 16));
 enc_info->encrypt_tweak_lower = ((uint32_t)(first_block));
}
