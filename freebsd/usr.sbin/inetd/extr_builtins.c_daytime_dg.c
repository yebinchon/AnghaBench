
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servtab {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int buffer ;


 scalar_t__ check_loop (struct sockaddr*,struct servtab*) ;
 char* ctime (int *) ;
 scalar_t__ recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int,char*,int ,int ,struct sockaddr*,int) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;
 int time (int *) ;

__attribute__((used)) static void
daytime_dg(int s, struct servtab *sep)
{
 char buffer[256];
 time_t now;
 struct sockaddr_storage ss;
 socklen_t size;

 now = time((time_t *) 0);

 size = sizeof(ss);
 if (recvfrom(s, buffer, sizeof(buffer), 0,
       (struct sockaddr *)&ss, &size) < 0)
  return;

 if (check_loop((struct sockaddr *)&ss, sep))
  return;

 (void) sprintf(buffer, "%.24s\r\n", ctime(&now));
 (void) sendto(s, buffer, strlen(buffer), 0,
        (struct sockaddr *)&ss, size);
}
