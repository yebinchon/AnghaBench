
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servtab {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int buffer ;


 scalar_t__ check_loop (struct sockaddr*,struct servtab*) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;

__attribute__((used)) static void
echo_dg(int s, struct servtab *sep)
{
 char buffer[65536];
 int i;
 socklen_t size;
 struct sockaddr_storage ss;

 size = sizeof(ss);
 if ((i = recvfrom(s, buffer, sizeof(buffer), 0,
     (struct sockaddr *)&ss, &size)) < 0)
  return;

 if (check_loop((struct sockaddr *)&ss, sep))
  return;

 (void) sendto(s, buffer, i, 0, (struct sockaddr *)&ss, size);
}
