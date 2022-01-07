
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_flags; } ;


 int MAC_MLS_FLAG_EFFECTIVE ;
 int MAC_MLS_FLAG_RANGE ;
 int mls_copy_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_copy_range (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static void
mls_copy(struct mac_mls *source, struct mac_mls *dest)
{

 if (source->mm_flags & MAC_MLS_FLAG_EFFECTIVE)
  mls_copy_effective(source, dest);
 if (source->mm_flags & MAC_MLS_FLAG_RANGE)
  mls_copy_range(source, dest);
}
