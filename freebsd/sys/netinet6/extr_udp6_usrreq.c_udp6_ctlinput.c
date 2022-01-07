
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int V_udbinfo ;
 void udp6_common_ctlinput (int,struct sockaddr*,void*,int *) ;

void
udp6_ctlinput(int cmd, struct sockaddr *sa, void *d)
{

 return (udp6_common_ctlinput(cmd, sa, d, &V_udbinfo));
}
