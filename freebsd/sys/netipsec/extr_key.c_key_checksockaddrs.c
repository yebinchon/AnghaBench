
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; scalar_t__ sa_len; } ;




 int EAFNOSUPPORT ;
 int EINVAL ;

__attribute__((used)) static int
key_checksockaddrs(struct sockaddr *src, struct sockaddr *dst)
{


 if (src->sa_family != dst->sa_family)
  return (EINVAL);

 if (src->sa_len != dst->sa_len)
  return (EINVAL);
 switch (src->sa_family) {
 default:
  return (EAFNOSUPPORT);
 }
 return (0);
}
