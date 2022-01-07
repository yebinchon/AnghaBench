
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct mld_hdr {int mld_type; int mld_addr; } ;
typedef int ntop_buf ;
typedef int from ;
typedef int buf ;


 int AF_INET6 ;



 int fflush (int ) ;
 char* inet_ntop (int ,int *,char*,int) ;
 int printf (char*,...) ;
 int recvfrom (int,int *,int,int ,struct sockaddr*,int*) ;
 int stdout ;

void
dump(int s)
{
 int i;
 struct mld_hdr *mld;
 u_char buf[1024];
 struct sockaddr_in6 from;
 int from_len = sizeof(from);
 char ntop_buf[256];

 if ((i = recvfrom(s, buf, sizeof(buf), 0,
     (struct sockaddr *)&from,
     &from_len)) < 0)
  return;

 if (i < sizeof(struct mld_hdr)) {
  printf("too short!\n");
  return;
 }

 mld = (struct mld_hdr *)buf;

 printf("from %s, ", inet_ntop(AF_INET6, &from.sin6_addr,
          ntop_buf, sizeof(ntop_buf)));

 switch (mld->mld_type) {
 case 130:
  printf("type=Multicast Listener Query, ");
  break;
 case 128:
  printf("type=Multicast Listener Report, ");
  break;
 case 129:
  printf("type=Multicast Listener Done, ");
  break;
 }
 printf("addr=%s\n", inet_ntop(AF_INET6, &mld->mld_addr,
        ntop_buf, sizeof(ntop_buf)));

 fflush(stdout);
}
