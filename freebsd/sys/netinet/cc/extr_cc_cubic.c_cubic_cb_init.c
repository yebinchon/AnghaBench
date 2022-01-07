
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cubic {int mean_rtt_ticks; int min_rtt_ticks; int t_last_cong; } ;
struct cc_var {struct cubic* cc_data; } ;


 int ENOMEM ;
 int M_CUBIC ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TCPTV_SRTTBASE ;
 struct cubic* malloc (int,int ,int) ;
 int ticks ;

__attribute__((used)) static int
cubic_cb_init(struct cc_var *ccv)
{
 struct cubic *cubic_data;

 cubic_data = malloc(sizeof(struct cubic), M_CUBIC, M_NOWAIT|M_ZERO);

 if (cubic_data == ((void*)0))
  return (ENOMEM);


 cubic_data->t_last_cong = ticks;
 cubic_data->min_rtt_ticks = TCPTV_SRTTBASE;
 cubic_data->mean_rtt_ticks = 1;

 ccv->cc_data = cubic_data;

 return (0);
}
