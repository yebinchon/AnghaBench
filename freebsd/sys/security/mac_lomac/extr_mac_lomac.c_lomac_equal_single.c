
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; int ml_single; } ;


 int KASSERT (int,char*) ;
 int MAC_LOMAC_FLAG_SINGLE ;
 int lomac_equal_element (int *,int *) ;

__attribute__((used)) static int
lomac_equal_single(struct mac_lomac *a, struct mac_lomac *b)
{

 KASSERT((a->ml_flags & MAC_LOMAC_FLAG_SINGLE) != 0,
     ("lomac_equal_single: a not single"));
 KASSERT((b->ml_flags & MAC_LOMAC_FLAG_SINGLE) != 0,
     ("lomac_equal_single: b not single"));

 return (lomac_equal_element(&a->ml_single, &b->ml_single));
}
