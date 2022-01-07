
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {int remote; char* remote_host; int rp_matches_local; } ;
struct addrinfo {int ai_addrlen; int ai_addr; struct addrinfo* ai_next; void* ai_flags; void* ai_socktype; void* ai_family; } ;
typedef int lclhost ;
typedef int hints ;
typedef int h2 ;
typedef int h1 ;


 void* AI_PASSIVE ;
 int MAXHOSTNAMELEN ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 void* SOCK_STREAM ;
 int asprintf (char**,char*,char*,int ) ;
 void* family ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int gethostname (char*,int) ;
 scalar_t__ getnameinfo (int ,int ,char*,int,int *,int ,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

char *
checkremote(struct printer *pp)
{
 char lclhost[MAXHOSTNAMELEN];
 struct addrinfo hints, *local_res, *remote_res, *lr, *rr;
 char *error;
 int ncommonaddrs, errno;
 char h1[NI_MAXHOST], h2[NI_MAXHOST];

 if (!pp->rp_matches_local) {
  pp->remote = 1;
  return ((void*)0);
 }

 pp->remote = 0;
 if (pp->remote_host == ((void*)0))
  return ((void*)0);


 gethostname(lclhost, sizeof(lclhost));
 lclhost[sizeof(lclhost) - 1] = '\0';

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = family;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = AI_PASSIVE;
 if ((errno = getaddrinfo(lclhost, ((void*)0), &hints, &local_res)) != 0) {
  asprintf(&error, "unable to get official name "
    "for local machine %s: %s",
    lclhost, gai_strerror(errno));
  return error;
 }


 memset(&hints, 0, sizeof(hints));
 hints.ai_family = family;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = AI_PASSIVE;
 if ((errno = getaddrinfo(pp->remote_host, ((void*)0),
     &hints, &remote_res)) != 0) {
  asprintf(&error, "unable to get address list for "
    "remote machine %s: %s",
    pp->remote_host, gai_strerror(errno));
  freeaddrinfo(local_res);
  return error;
 }

 ncommonaddrs = 0;
 for (lr = local_res; lr; lr = lr->ai_next) {
  h1[0] = '\0';
  if (getnameinfo(lr->ai_addr, lr->ai_addrlen, h1, sizeof(h1),
    ((void*)0), 0, NI_NUMERICHOST) != 0)
   continue;
  for (rr = remote_res; rr; rr = rr->ai_next) {
   h2[0] = '\0';
   if (getnameinfo(rr->ai_addr, rr->ai_addrlen,
     h2, sizeof(h2), ((void*)0), 0,
     NI_NUMERICHOST) != 0)
    continue;
   if (strcmp(h1, h2) == 0)
    ncommonaddrs++;
  }
 }





 if (ncommonaddrs == 0)
  pp->remote = 1;
 freeaddrinfo(local_res);
 freeaddrinfo(remote_res);
 return ((void*)0);
}
