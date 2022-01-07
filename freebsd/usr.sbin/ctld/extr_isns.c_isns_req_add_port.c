
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct isns_req {int dummy; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
typedef int buf ;
struct TYPE_2__ {int sa_family; } ;




 int be32enc (int *,int ) ;
 int isns_req_add (struct isns_req*,int ,int,int *) ;
 int log_errx (int,char*,int) ;
 int ntohs (int ) ;

void
isns_req_add_port(struct isns_req *req, uint32_t tag, struct addrinfo *ai)
{
 struct sockaddr_in *in4;
 struct sockaddr_in6 *in6;
 uint32_t buf;

 switch (ai->ai_addr->sa_family) {
 case 129:
  in4 = (struct sockaddr_in *)(void *)ai->ai_addr;
  be32enc(&buf, ntohs(in4->sin_port));
  isns_req_add(req, tag, sizeof(buf), &buf);
  break;
 case 128:
  in6 = (struct sockaddr_in6 *)(void *)ai->ai_addr;
  be32enc(&buf, ntohs(in6->sin6_port));
  isns_req_add(req, tag, sizeof(buf), &buf);
  break;
 default:
  log_errx(1, "Unsupported address family %d",
      ai->ai_addr->sa_family);
 }
}
