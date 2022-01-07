
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int dummy; } ;


 int atomic_add_int (int *,int) ;
 int destroyed_not_inited ;
 int uma_zfree (int ,struct mac_biba*) ;
 int zone_biba ;

__attribute__((used)) static void
biba_free(struct mac_biba *mb)
{

 if (mb != ((void*)0))
  uma_zfree(zone_biba, mb);
 else
  atomic_add_int(&destroyed_not_inited, 1);
}
