
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int dummy; } ;


 int atomic_add_int (int *,int) ;
 int destroyed_not_inited ;
 int uma_zfree (int ,struct mac_mls*) ;
 int zone_mls ;

__attribute__((used)) static void
mls_free(struct mac_mls *mm)
{

 if (mm != ((void*)0))
  uma_zfree(zone_mls, mm);
 else
  atomic_add_int(&destroyed_not_inited, 1);
}
