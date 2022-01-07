
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct ifa_msghdr {int ifam_addrs; } ;


 int ROUNDUP (int ) ;
 int RTAX_MAX ;

void
iface_ParseHdr(struct ifa_msghdr *ifam, struct sockaddr *sa[RTAX_MAX])
{
  char *wp;
  int rtax;

  wp = (char *)(ifam + 1);

  for (rtax = 0; rtax < RTAX_MAX; rtax++)
    if (ifam->ifam_addrs & (1 << rtax)) {
      sa[rtax] = (struct sockaddr *)wp;
      wp += ROUNDUP(sa[rtax]->sa_len);
    } else
      sa[rtax] = ((void*)0);
}
