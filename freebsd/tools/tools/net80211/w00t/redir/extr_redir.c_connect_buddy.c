
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {int sin_family; TYPE_1__ sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int s_addr; } ;
struct params {int s; TYPE_2__ dst; int port; } ;
typedef int s_in ;


 int IPPROTO_TCP ;
 int PF_INET ;
 int SOCK_STREAM ;
 int connect (int,struct sockaddr*,int) ;
 int htons (int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int ,int ) ;

int connect_buddy(struct params *p)
{
 struct sockaddr_in s_in;

 memset(&s_in, 0, sizeof(s_in));
 s_in.sin_family = PF_INET;
 s_in.sin_port = htons(p->port);
 s_in.sin_addr.s_addr = p->dst.s_addr;

 if ((p->s = socket(s_in.sin_family, SOCK_STREAM, IPPROTO_TCP)) == -1)
  return -1;

 if (connect(p->s, (struct sockaddr*) &s_in, sizeof(s_in)) == -1)
  return -1;

 return 0;
}
