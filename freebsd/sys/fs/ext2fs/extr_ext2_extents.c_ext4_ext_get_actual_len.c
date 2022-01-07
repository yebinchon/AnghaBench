
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ext4_extent {scalar_t__ e_len; } ;


 scalar_t__ EXT_INIT_MAX_LEN ;

__attribute__((used)) static inline uint16_t
ext4_ext_get_actual_len(struct ext4_extent *ext)
{

 return (ext->e_len <= EXT_INIT_MAX_LEN ?
     ext->e_len : (ext->e_len - EXT_INIT_MAX_LEN));
}
