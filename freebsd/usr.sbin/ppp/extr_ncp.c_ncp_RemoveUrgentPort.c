
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct port_range {unsigned int nports; scalar_t__* port; } ;


 int LogWARN ;
 int log_Printf (int ,char*,scalar_t__) ;
 int memmove (scalar_t__*,scalar_t__*,unsigned int) ;

void
ncp_RemoveUrgentPort(struct port_range *range, u_short port)
{
  unsigned p;

  for (p = 0; p < range->nports; p++)
    if (range->port[p] == port) {
      if (p + 1 != range->nports)
        memmove(range->port + p, range->port + p + 1,
                (range->nports - p - 1) * sizeof(u_short));
      range->nports--;
      return;
    }

  if (p == range->nports)
    log_Printf(LogWARN, "%u: Port not set to urgent\n", port);
}
