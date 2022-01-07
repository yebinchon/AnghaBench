
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct rt_msghdr {int rtm_addrs; } ;


 int ROUNDUP (int ) ;
 int RTAX_MAX ;

void
route_ParseHdr(struct rt_msghdr *rtm, struct sockaddr *sa[RTAX_MAX])
{
  char *wp;
  int rtax;

  wp = (char *)(rtm + 1);

  for (rtax = 0; rtax < RTAX_MAX; rtax++)
    if (rtm->rtm_addrs & (1 << rtax)) {
      sa[rtax] = (struct sockaddr *)wp;
      wp += ROUNDUP(sa[rtax]->sa_len);
      if (sa[rtax]->sa_family == 0)
        sa[rtax] = ((void*)0);
    } else
      sa[rtax] = ((void*)0);
}
