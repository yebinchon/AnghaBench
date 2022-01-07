
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_kr_coef_up_data {int c_minus; int c_plus; int c_zero; } ;
typedef enum al_eth_kr_coef { ____Placeholder_al_eth_kr_coef } al_eth_kr_coef ;
typedef enum al_eth_kr_cl72_coef_op { ____Placeholder_al_eth_kr_cl72_coef_op } al_eth_kr_cl72_coef_op ;






__attribute__((used)) static void
al_eth_kr_lt_coef_set(struct al_eth_kr_coef_up_data *ldcoeff,
    enum al_eth_kr_coef coef, enum al_eth_kr_cl72_coef_op op)
{

 switch (coef) {
 case 130:
  ldcoeff->c_minus = op;
  break;
 case 129:
  ldcoeff->c_plus = op;
  break;
 case 128:
  ldcoeff->c_zero = op;
  break;
 }
}
