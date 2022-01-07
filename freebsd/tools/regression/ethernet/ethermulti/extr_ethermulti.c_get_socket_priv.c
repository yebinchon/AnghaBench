
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int PF_INET ;
 int err (int,char*,...) ;
 int errx (int,char*) ;
 int geteuid () ;
 scalar_t__ getuid () ;
 scalar_t__ seteuid (int ) ;
 int socket (int ,int,int ) ;

__attribute__((used)) static int
get_socket_priv(int type)
{
 uid_t olduid;
 int sock;

 if (getuid() != 0)
  errx(-1, "get_sock_priv: running without real uid 0");

 olduid = geteuid();
 if (seteuid(0) < 0)
  err(-1, "get_sock_priv: seteuid(0)");

 sock = socket(PF_INET, type, 0);

 if (seteuid(olduid) < 0)
  err(-1, "get_sock_priv: seteuid(%d)", olduid);

 return (sock);
}
