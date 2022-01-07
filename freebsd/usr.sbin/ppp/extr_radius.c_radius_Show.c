
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sendkey; scalar_t__ recvkey; int types; int policy; } ;
struct TYPE_3__ {char* file; } ;
struct radius {char* repstr; char* msrepstr; char* errstr; scalar_t__ ipv6routes; scalar_t__ routes; TYPE_2__ mppe; scalar_t__ vj; int mtu; int mask; int ip; scalar_t__ valid; TYPE_1__ cfg; } ;
struct prompt {int dummy; } ;


 int inet_ntoa (int ) ;
 int prompt_Printf (struct prompt*,char*,...) ;
 int radius_policyname (int ) ;
 int radius_typesname (int ) ;
 int route_ShowSticky (struct prompt*,scalar_t__,char*,int) ;

void
radius_Show(struct radius *r, struct prompt *p)
{
  prompt_Printf(p, " Radius config:     %s",
                *r->cfg.file ? r->cfg.file : "none");
  if (r->valid) {
    prompt_Printf(p, "\n                IP: %s\n", inet_ntoa(r->ip));
    prompt_Printf(p, "           Netmask: %s\n", inet_ntoa(r->mask));
    prompt_Printf(p, "               MTU: %lu\n", r->mtu);
    prompt_Printf(p, "                VJ: %sabled\n", r->vj ? "en" : "dis");
    prompt_Printf(p, "           Message: %s\n", r->repstr ? r->repstr : "");
    prompt_Printf(p, "   MPPE Enc Policy: %s\n",
                  radius_policyname(r->mppe.policy));
    prompt_Printf(p, "    MPPE Enc Types: %s\n",
                  radius_typesname(r->mppe.types));
    prompt_Printf(p, "     MPPE Recv Key: %seceived\n",
                  r->mppe.recvkey ? "R" : "Not r");
    prompt_Printf(p, "     MPPE Send Key: %seceived\n",
                  r->mppe.sendkey ? "R" : "Not r");
    prompt_Printf(p, " MS-CHAP2-Response: %s\n",
                  r->msrepstr ? r->msrepstr : "");
    prompt_Printf(p, "     Error Message: %s\n", r->errstr ? r->errstr : "");
    if (r->routes)
      route_ShowSticky(p, r->routes, "            Routes", 16);

    if (r->ipv6routes)
      route_ShowSticky(p, r->ipv6routes, "            IPv6 Routes", 16);

  } else
    prompt_Printf(p, " (not authenticated)\n");
}
