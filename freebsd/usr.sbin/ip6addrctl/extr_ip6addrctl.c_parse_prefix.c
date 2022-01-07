
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addrpolicy {int addrmask; int addr; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_family; int ai_flags; } ;
typedef int hints ;


 int AF_INET6 ;
 int AI_NUMERICHOST ;
 int atoi (char*) ;
 int errx (int,char*) ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int memcpy (int *,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int plen2mask (int *,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
parse_prefix(const char *prefix0, struct in6_addrpolicy *pol)
{
 int e = 0, plen;
 char *prefix, *plenstr;
 struct addrinfo hints, *res;

 if ((prefix = strdup(prefix0)) == ((void*)0))
  errx(1, "strdup failed");

 if ((plenstr = strchr(prefix, '/')) == ((void*)0)) {
  e = -1;
  goto end;
 }
 *plenstr = '\0';

 memset(&hints, 0, sizeof(hints));
 hints.ai_flags = AI_NUMERICHOST;
 hints.ai_family = AF_INET6;

 if ((e = getaddrinfo(prefix, ((void*)0), &hints, &res)) != 0) {
  warnx("getaddrinfo failed for %s: %s", prefix,
        gai_strerror(e));
  goto end;
 }
 memcpy(&pol->addr, res->ai_addr, res->ai_addrlen);
 freeaddrinfo(res);
 plen = atoi(plenstr + 1);
 if (plen < 0 || plen > 128) {
  warnx("invalid prefix length: %d", plen);
  e = -1;
  goto end;
 }
 plen2mask(&pol->addrmask, plen);

  end:
 free(prefix);
 return(e);
}
