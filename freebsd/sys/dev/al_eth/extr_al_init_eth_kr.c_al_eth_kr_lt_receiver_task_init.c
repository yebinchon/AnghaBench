
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_kr_status_report_data {int dummy; } ;
struct al_eth_kr_data {int status_report; int last_lpcoeff; } ;
struct al_eth_kr_coef_up_data {int dummy; } ;


 int al_memset (int *,int ,int) ;

__attribute__((used)) static void
al_eth_kr_lt_receiver_task_init(struct al_eth_kr_data *kr_data)
{

 al_memset(&kr_data->last_lpcoeff, 0,
     sizeof(struct al_eth_kr_coef_up_data));
 al_memset(&kr_data->status_report, 0,
     sizeof(struct al_eth_kr_status_report_data));
}
