
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; } ;


 int MAC_LOMAC_FLAG_AUX ;
 int MAC_LOMAC_FLAG_RANGE ;
 int MAC_LOMAC_FLAG_SINGLE ;
 int lomac_copy_auxsingle (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_copy_range (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_copy_single (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_copy(struct mac_lomac *source, struct mac_lomac *dest)
{

 if (source->ml_flags & MAC_LOMAC_FLAG_SINGLE)
  lomac_copy_single(source, dest);
 if (source->ml_flags & MAC_LOMAC_FLAG_AUX)
  lomac_copy_auxsingle(source, dest);
 if (source->ml_flags & MAC_LOMAC_FLAG_RANGE)
  lomac_copy_range(source, dest);
}
