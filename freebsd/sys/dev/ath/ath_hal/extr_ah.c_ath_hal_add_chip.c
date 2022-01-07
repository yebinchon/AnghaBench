
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_chip {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct ath_hal_chip*,int ) ;
 int ah_chip_list ;
 int node ;

int
ath_hal_add_chip(struct ath_hal_chip *ahc)
{

 TAILQ_INSERT_TAIL(&ah_chip_list, ahc, node);
 return (0);
}
