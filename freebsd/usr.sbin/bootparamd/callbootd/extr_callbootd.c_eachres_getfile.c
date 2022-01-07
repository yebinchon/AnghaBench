
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct hostent {char* h_name; } ;
typedef int bp_getfile_res ;
typedef int bool_t ;


 int AF_INET ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 char* inet_ntoa (TYPE_1__) ;
 int printf (char*,...) ;
 int printgetfile (int *) ;

__attribute__((used)) static bool_t
eachres_getfile(bp_getfile_res *resultp, struct sockaddr_in *raddr)
{
  struct hostent *he;

  he = gethostbyaddr((char *)&raddr->sin_addr.s_addr,4,AF_INET);
  printf("%s answered:\n", he ? he->h_name : inet_ntoa(raddr->sin_addr));
  printgetfile(resultp);
  printf("\n");
  return(0);
}
