
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;


 int ATF_REQUIRE_MSG (int,char*,...) ;
 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int SOCK_STREAM ;
 int accept (int,int *,int *) ;
 int* calloc (size_t,int) ;
 int close (int) ;
 int connect (int,struct sockaddr const*,int ) ;
 scalar_t__ errno ;
 int socket (int,int ,int ) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void
lb_simple_accept_loop(int domain, const struct sockaddr *addr, int sds[],
    size_t nsds, int nconns)
{
 size_t i;
 int *acceptcnt;
 int csd, error, excnt, sd;





 excnt = nconns / nsds / 8;
 acceptcnt = calloc(nsds, sizeof(*acceptcnt));
 ATF_REQUIRE_MSG(acceptcnt != ((void*)0), "calloc() failed: %s",
     strerror(errno));

 while (nconns-- > 0) {
  sd = socket(domain, SOCK_STREAM, 0);
  ATF_REQUIRE_MSG(sd >= 0, "socket() failed: %s",
      strerror(errno));

  error = connect(sd, addr, addr->sa_len);
  ATF_REQUIRE_MSG(error == 0, "connect() failed: %s",
      strerror(errno));




  do {
   for (i = 0; i < nsds; i++) {
    csd = accept(sds[i], ((void*)0), ((void*)0));
    if (csd < 0) {
     ATF_REQUIRE_MSG(errno == EWOULDBLOCK ||
         errno == EAGAIN,
         "accept() failed: %s",
         strerror(errno));
     continue;
    }

    error = close(csd);
    ATF_REQUIRE_MSG(error == 0,
        "close() failed: %s", strerror(errno));

    acceptcnt[i]++;
    break;
   }
  } while (i == nsds);

  error = close(sd);
  ATF_REQUIRE_MSG(error == 0, "close() failed: %s",
      strerror(errno));
 }

 for (i = 0; i < nsds; i++)
  ATF_REQUIRE_MSG(acceptcnt[i] > excnt, "uneven balancing");
}
