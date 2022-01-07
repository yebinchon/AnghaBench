
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {uintptr_t fs_nr; } ;
struct dn_fsk {TYPE_1__ fs; } ;


 int DNHT_KEY_IS_OBJ ;

__attribute__((used)) static uint32_t
fsk_hash(uintptr_t key, int flags, void *arg)
{
 uint32_t i = !(flags & DNHT_KEY_IS_OBJ) ? key :
  ((struct dn_fsk *)key)->fs.fs_nr;

 return ( (i>>8)^(i>>4)^i );
}
