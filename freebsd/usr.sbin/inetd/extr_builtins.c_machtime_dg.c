
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servtab {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int result ;


 scalar_t__ check_loop (struct sockaddr*,struct servtab*) ;
 scalar_t__ machtime () ;
 scalar_t__ recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;

__attribute__((used)) static void
machtime_dg(int s, struct servtab *sep)
{
 uint32_t result;
 struct sockaddr_storage ss;
 socklen_t size;

 size = sizeof(ss);
 if (recvfrom(s, (char *)&result, sizeof(result), 0,
       (struct sockaddr *)&ss, &size) < 0)
  return;

 if (check_loop((struct sockaddr *)&ss, sep))
  return;

 result = machtime();
 (void) sendto(s, (char *) &result, sizeof(result), 0,
        (struct sockaddr *)&ss, size);
}
