
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_rf {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct ath_hal_rf*,int ) ;
 int ah_rf_list ;
 int node ;

int
ath_hal_add_rf(struct ath_hal_rf *arf)
{

 TAILQ_INSERT_TAIL(&ah_rf_list, arf, node);
 return (0);
}
