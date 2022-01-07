
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agg_info {int dummy; } ;


 int AGG_RD (struct agg_info*,int ,int) ;
 int AGG_WR (struct agg_info*,int ,int,int) ;
 int HOSTINT_CTRL_DSOUND_INT_ENABLED ;
 int PORT_HOSTINT_CTRL ;
 int PORT_INT_STAT ;
 int WPREG_TIMER_START ;
 int wp_wrreg (struct agg_info*,int ,int) ;

__attribute__((used)) static void
wp_starttimer(struct agg_info *ess)
{
 AGG_WR(ess, PORT_INT_STAT, 1, 2);
 AGG_WR(ess, PORT_HOSTINT_CTRL, HOSTINT_CTRL_DSOUND_INT_ENABLED
        | AGG_RD(ess, PORT_HOSTINT_CTRL, 2), 2);
 wp_wrreg(ess, WPREG_TIMER_START, 1);
}
