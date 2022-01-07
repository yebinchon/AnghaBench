
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPPC_comp_state {int histptr; } ;


 int MPPE_HIST_LEN ;
 int bzero (char*,int) ;

void MPPC_InitCompressionHistory(char *history)
{
    struct MPPC_comp_state *state = (struct MPPC_comp_state*)history;

    bzero(history, sizeof(struct MPPC_comp_state));
    state->histptr = MPPE_HIST_LEN;
}
