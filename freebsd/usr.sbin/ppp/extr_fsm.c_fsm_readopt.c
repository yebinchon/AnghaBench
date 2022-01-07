
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct fsm_opt_hdr {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct fsm_opt {TYPE_1__ hdr; } ;


 int LogERROR ;
 int log_Printf (int ,char*,int,...) ;

struct fsm_opt *
fsm_readopt(u_char **cp)
{
  struct fsm_opt *o = (struct fsm_opt *)*cp;

  if (o->hdr.len < sizeof(struct fsm_opt_hdr)) {
    log_Printf(LogERROR, "Bad option length %d (out of phase?)\n", o->hdr.len);
    return ((void*)0);
  }

  *cp += o->hdr.len;

  if (o->hdr.len > sizeof(struct fsm_opt)) {
    log_Printf(LogERROR, "Warning: Truncating option length from %d to %d\n",
               o->hdr.len, (int)sizeof(struct fsm_opt));
    o->hdr.len = sizeof(struct fsm_opt);
  }

  return o;
}
