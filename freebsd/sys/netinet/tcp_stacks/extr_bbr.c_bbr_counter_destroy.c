
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BBR_MAX_STAT ;
 int BBR_OPTS_SIZE ;
 int BBR_STAT_SIZE ;
 int COUNTER_ARRAY_FREE (int ,int ) ;
 int TCP_MSS_ACCT_SIZE ;
 int bbr_flows_nohdwr_pacing ;
 int bbr_flows_whdwr_pacing ;
 int bbr_opts_arry ;
 int bbr_out_size ;
 int bbr_stat_arry ;
 int bbr_state_lost ;
 int bbr_state_resend ;
 int bbr_state_time ;
 int counter_u64_free (int ) ;

__attribute__((used)) static void
bbr_counter_destroy(void)
{
 COUNTER_ARRAY_FREE(bbr_stat_arry, BBR_STAT_SIZE);
 COUNTER_ARRAY_FREE(bbr_opts_arry, BBR_OPTS_SIZE);
 COUNTER_ARRAY_FREE(bbr_out_size, TCP_MSS_ACCT_SIZE);
 COUNTER_ARRAY_FREE(bbr_state_lost, BBR_MAX_STAT);
 COUNTER_ARRAY_FREE(bbr_state_time, BBR_MAX_STAT);
 COUNTER_ARRAY_FREE(bbr_state_resend, BBR_MAX_STAT);
 counter_u64_free(bbr_flows_whdwr_pacing);
 counter_u64_free(bbr_flows_nohdwr_pacing);

}
