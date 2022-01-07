
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcp {char* his_magic; } ;


 int LogLCP ;
 int log_Printf (int ,char*,char*) ;

void
lcp_RecvIdentification(struct lcp *lcp, char *data)
{
  log_Printf(LogLCP, " MAGICNUM %08x\n", lcp->his_magic);
  log_Printf(LogLCP, " TEXT %s\n", data);
}
