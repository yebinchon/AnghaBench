
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_kr_status_report_data {int c_minus; int c_plus; int c_zero; } ;
typedef enum al_eth_kr_coef { ____Placeholder_al_eth_kr_coef } al_eth_kr_coef ;
typedef enum al_eth_kr_cl72_cstate { ____Placeholder_al_eth_kr_cl72_cstate } al_eth_kr_cl72_cstate ;






__attribute__((used)) static enum al_eth_kr_cl72_cstate
al_eth_kr_lt_coef_report_get(struct al_eth_kr_status_report_data *report,
    enum al_eth_kr_coef coef)
{

 switch (coef) {
 case 130:
  return (report->c_minus);
 case 129:
  return (report->c_plus);
 case 128:
  return (report->c_zero);
 }

 return (0);
}
