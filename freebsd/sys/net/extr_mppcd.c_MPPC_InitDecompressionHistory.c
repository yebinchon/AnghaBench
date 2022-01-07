
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPPC_decomp_state {int histptr; } ;


 int MPPE_HIST_LEN ;
 int bzero (char*,int) ;

void MPPC_InitDecompressionHistory(char *history)
{
    struct MPPC_decomp_state *state = (struct MPPC_decomp_state*)history;

    bzero(history, sizeof(struct MPPC_decomp_state));
    state->histptr = MPPE_HIST_LEN;
}
