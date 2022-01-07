
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sticky_route {int type; int gw; int dst; struct sticky_route* next; } ;
struct prompt {int dummy; } ;


 int ROUTE_DSTDNS0 ;
 int ROUTE_DSTDNS1 ;
 int ROUTE_DSTHISADDR ;
 int ROUTE_DSTHISADDR6 ;
 int ROUTE_DSTMYADDR ;
 int ROUTE_DSTMYADDR6 ;
 int ROUTE_GWHISADDR ;
 int ROUTE_GWHISADDR6 ;
 int ncpaddr_ntoa (int *) ;
 scalar_t__ ncprange_isdefault (int *) ;
 int ncprange_ntoa (int *) ;
 int prompt_Printf (struct prompt*,char*,...) ;
 int strlen (char const*) ;

void
route_ShowSticky(struct prompt *p, struct sticky_route *r, const char *tag,
                 int indent)
{
  int tlen = strlen(tag);

  if (tlen + 2 > indent)
    prompt_Printf(p, "%s:\n%*s", tag, indent, "");
  else
    prompt_Printf(p, "%s:%*s", tag, indent - tlen - 1, "");

  for (; r; r = r->next) {
    prompt_Printf(p, "%*sadd ", tlen ? 0 : indent, "");
    tlen = 0;
    if (r->type & ROUTE_DSTMYADDR)
      prompt_Printf(p, "MYADDR");
    else if (r->type & ROUTE_DSTMYADDR6)
      prompt_Printf(p, "MYADDR6");
    else if (r->type & ROUTE_DSTHISADDR)
      prompt_Printf(p, "HISADDR");
    else if (r->type & ROUTE_DSTHISADDR6)
      prompt_Printf(p, "HISADDR6");
    else if (r->type & ROUTE_DSTDNS0)
      prompt_Printf(p, "DNS0");
    else if (r->type & ROUTE_DSTDNS1)
      prompt_Printf(p, "DNS1");
    else if (ncprange_isdefault(&r->dst))
      prompt_Printf(p, "default");
    else
      prompt_Printf(p, "%s", ncprange_ntoa(&r->dst));

    if (r->type & ROUTE_GWHISADDR)
      prompt_Printf(p, " HISADDR\n");
    else if (r->type & ROUTE_GWHISADDR6)
      prompt_Printf(p, " HISADDR6\n");
    else
      prompt_Printf(p, " %s\n", ncpaddr_ntoa(&r->gw));
  }
}
