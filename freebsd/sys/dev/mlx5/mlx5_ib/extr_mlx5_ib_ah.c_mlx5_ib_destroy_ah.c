
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ah {int dummy; } ;


 int kfree (int ) ;
 int to_mah (struct ib_ah*) ;

int mlx5_ib_destroy_ah(struct ib_ah *ah)
{
 kfree(to_mah(ah));
 return 0;
}
