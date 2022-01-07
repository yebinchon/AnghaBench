
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_family; } ;


 int AF_INET ;
 int bzero (struct sockaddr_in*,int) ;
 int freeenv (char*) ;
 int htonl (int) ;
 char* kern_getenv (char*) ;
 int sscanf (char*,char*,int*,int*,int*,int*) ;

__attribute__((used)) static int
inaddr_to_sockaddr(char *ev, struct sockaddr_in *sa)
{
 u_int32_t a[4];
 char *cp;
 int count;

 bzero(sa, sizeof(*sa));
 sa->sin_len = sizeof(*sa);
 sa->sin_family = AF_INET;

 if ((cp = kern_getenv(ev)) == ((void*)0))
  return (1);
 count = sscanf(cp, "%d.%d.%d.%d", &a[0], &a[1], &a[2], &a[3]);
 freeenv(cp);
 if (count != 4)
  return (1);
 sa->sin_addr.s_addr =
     htonl((a[0] << 24) | (a[1] << 16) | (a[2] << 8) | a[3]);
 return (0);
}
