
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_kr_status_report_data {scalar_t__ c_zero; scalar_t__ c_minus; scalar_t__ c_plus; } ;
typedef int boolean_t ;


 scalar_t__ C72_CSTATE_NOT_UPDATED ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static boolean_t
al_eth_kr_lt_all_not_updated(struct al_eth_kr_status_report_data *report)
{

 if ((report->c_zero == C72_CSTATE_NOT_UPDATED) &&
     (report->c_minus == C72_CSTATE_NOT_UPDATED) &&
     (report->c_plus == C72_CSTATE_NOT_UPDATED)) {
  return (TRUE);
 }

 return (FALSE);
}
