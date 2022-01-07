
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_flags; } ;


 int MAC_BIBA_FLAG_EFFECTIVE ;
 int MAC_BIBA_FLAG_RANGE ;
 int biba_copy_effective (struct mac_biba*,struct mac_biba*) ;
 int biba_copy_range (struct mac_biba*,struct mac_biba*) ;

__attribute__((used)) static void
biba_copy(struct mac_biba *source, struct mac_biba *dest)
{

 if (source->mb_flags & MAC_BIBA_FLAG_EFFECTIVE)
  biba_copy_effective(source, dest);
 if (source->mb_flags & MAC_BIBA_FLAG_RANGE)
  biba_copy_range(source, dest);
}
