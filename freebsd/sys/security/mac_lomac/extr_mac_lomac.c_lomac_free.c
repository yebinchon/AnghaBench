
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int dummy; } ;


 int M_LOMAC ;
 int atomic_add_int (int *,int) ;
 int destroyed_not_inited ;
 int free (struct mac_lomac*,int ) ;

__attribute__((used)) static void
lomac_free(struct mac_lomac *ml)
{

 if (ml != ((void*)0))
  free(ml, M_LOMAC);
 else
  atomic_add_int(&destroyed_not_inited, 1);
}
