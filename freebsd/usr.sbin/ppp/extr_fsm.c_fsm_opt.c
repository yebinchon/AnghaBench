
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u_char ;
struct fsm_opt_hdr {int dummy; } ;
struct TYPE_2__ {unsigned int len; } ;
struct fsm_opt {TYPE_1__ hdr; } ;


 int LogERROR ;
 int log_Printf (int ,char*,unsigned int,int) ;
 int memcpy (unsigned int*,struct fsm_opt const*,unsigned int) ;

__attribute__((used)) static int
fsm_opt(u_char *opt, int optlen, const struct fsm_opt *o)
{
  unsigned cplen = o->hdr.len;

  if (optlen < (int)sizeof(struct fsm_opt_hdr))
    optlen = 0;

  if ((int)cplen > optlen) {
    log_Printf(LogERROR, "Can't REJ length %d - trunating to %d\n",
      cplen, optlen);
    cplen = optlen;
  }
  memcpy(opt, o, cplen);
  if (cplen)
    opt[1] = cplen;

  return cplen;
}
