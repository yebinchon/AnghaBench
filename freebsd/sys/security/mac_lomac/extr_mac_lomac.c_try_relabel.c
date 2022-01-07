
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; } ;


 int MAC_LOMAC_FLAG_SINGLE ;
 int bzero (struct mac_lomac*,int) ;
 int lomac_copy (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
try_relabel(struct mac_lomac *from, struct mac_lomac *to)
{

 if (from->ml_flags & MAC_LOMAC_FLAG_SINGLE) {
  bzero(to, sizeof(*to));
  lomac_copy(from, to);
 }
}
