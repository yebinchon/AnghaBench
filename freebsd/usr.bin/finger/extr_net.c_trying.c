
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; } ;


 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 scalar_t__ getnameinfo (int ,int ,char*,int,char*,int ,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
trying(const struct addrinfo *ai)
{
 char buf[NI_MAXHOST];

 if (getnameinfo(ai->ai_addr, ai->ai_addrlen, buf, sizeof buf,
   (char *)0, 0, NI_NUMERICHOST) != 0)
  return;

 printf("Trying %s...\n", buf);
}
