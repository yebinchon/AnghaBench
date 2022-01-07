
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct servtab {scalar_t__ se_socktype; scalar_t__ se_family; scalar_t__ se_checked; scalar_t__ se_rpc_prog; scalar_t__ se_rpc_lowvers; scalar_t__ se_rpc_highvers; int se_fd; scalar_t__ se_nomapped; int se_proto; int se_rpc; struct servtab* se_next; } ;
struct netconfig {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int SIGBLOCK ;
 scalar_t__ SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ debug ;
 int print_service (char*,struct servtab*) ;
 int rpcb_unset (scalar_t__,scalar_t__,struct netconfig*) ;
 struct servtab* servtab ;
 long sigblock (int ) ;
 int sigsetmask (long) ;
 scalar_t__ strcmp (int ,int ) ;
 struct netconfig* tcp6conf ;
 struct netconfig* tcpconf ;
 struct netconfig* udp6conf ;
 struct netconfig* udpconf ;

__attribute__((used)) static void
unregisterrpc(struct servtab *sep)
{
        u_int i;
        struct servtab *sepp;
 long omask;
 struct netconfig *netid4, *netid6;

 omask = sigblock(SIGBLOCK);
 netid4 = sep->se_socktype == SOCK_DGRAM ? udpconf : tcpconf;
 netid6 = sep->se_socktype == SOCK_DGRAM ? udp6conf : tcp6conf;
 if (sep->se_family == AF_INET)
  netid6 = ((void*)0);
 else if (sep->se_nomapped)
  netid4 = ((void*)0);
        for (sepp = servtab; sepp; sepp = sepp->se_next) {
                if (sepp == sep)
                        continue;
  if (sepp->se_checked == 0 ||
                    !sepp->se_rpc ||
      strcmp(sep->se_proto, sepp->se_proto) != 0 ||
                    sep->se_rpc_prog != sepp->se_rpc_prog)
   continue;
  if (sepp->se_family == AF_INET)
   netid4 = ((void*)0);
  if (sepp->se_family == AF_INET6) {
   netid6 = ((void*)0);
   if (!sep->se_nomapped)
    netid4 = ((void*)0);
  }
  if (netid4 == ((void*)0) && netid6 == ((void*)0))
   return;
        }
        if (debug)
                print_service("UNREG", sep);
        for (i = sep->se_rpc_lowvers; i <= sep->se_rpc_highvers; i++) {
  if (netid4)
   rpcb_unset(sep->se_rpc_prog, i, netid4);
  if (netid6)
   rpcb_unset(sep->se_rpc_prog, i, netid6);
 }
        if (sep->se_fd != -1)
                (void) close(sep->se_fd);
        sep->se_fd = -1;
 (void) sigsetmask(omask);
}
