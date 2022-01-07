
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_socktype; int ai_family; int ai_flags; } ;
typedef int hints ;


 int AF_UNSPEC ;
 int AI_CANONNAME ;
 int EAI_NONAME ;
 int EX_NOHOST ;
 int SOCK_STREAM ;
 int err (int ,char*,char const*,int ) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int ,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int port ;

__attribute__((used)) static struct addrinfo *
gethostinfo(char const *host, int exit_on_noname)
{
 struct addrinfo hints, *res;
 int error;

 memset(&hints, 0, sizeof(hints));
 hints.ai_flags = AI_CANONNAME;
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;
 res = ((void*)0);
 error = getaddrinfo(host, port, &hints, &res);
 if (error && (exit_on_noname || error != EAI_NONAME))
  err(EX_NOHOST, "%s: %s", host, gai_strerror(error));
 return (res);
}
