
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int EINVAL ;
 int inet_pton (int,char const*,int*) ;
 int memset (int*,int ,unsigned int) ;
 void* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 unsigned int strtoul (char*,char**,int) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse_ipaddr(const char *param, const char *args[], int *afp, uint8_t addr[],
    uint8_t mask[], int maskless)
{
 const char *colon, *afn;
 char *slash;
 uint8_t *m;
 int af, ret;
 unsigned int masksize;




 if (strcmp(param, args[0]) != 0)
  return (EINVAL);




 colon = strchr(args[1], ':');
 if (!colon) {
  afn = "IPv4";
  af = AF_INET;
  masksize = 32;
 } else {
  afn = "IPv6";
  af = AF_INET6;
  masksize = 128;
 }
 if (*afp == AF_UNSPEC)
  *afp = af;
 else if (*afp != af) {
  warnx("address %s is not of expected family %s",
      args[1], *afp == AF_INET ? "IP" : "IPv6");
  return (EINVAL);
 }





 slash = strchr(args[1], '/');
 if (slash)
  *slash = 0;
 ret = inet_pton(af, args[1], addr);
 if (slash)
  *slash = '/';
 if (ret <= 0) {
  warnx("Cannot parse %s %s address %s", param, afn, args[1]);
  return (EINVAL);
 }




 if (slash) {
  char *p;
  unsigned int prefix = strtoul(slash + 1, &p, 10);

  if (maskless) {
   warnx("mask cannot be provided for maskless specification");
   return (EINVAL);
  }

  if (p == slash + 1) {
   warnx("missing address prefix for %s", param);
   return (EINVAL);
  }
  if (*p) {
   warnx("%s is not a valid address prefix", slash + 1);
   return (EINVAL);
  }
  if (prefix > masksize) {
   warnx("prefix %u is too long for an %s address",
        prefix, afn);
   return (EINVAL);
  }
  memset(mask, 0, masksize / 8);
  masksize = prefix;
 }

 if (mask != ((void*)0)) {



  for (m = mask; masksize >= 8; m++, masksize -= 8)
   *m = ~0;
  if (masksize)
   *m = ~0 << (8 - masksize);
 }

 return (0);
}
