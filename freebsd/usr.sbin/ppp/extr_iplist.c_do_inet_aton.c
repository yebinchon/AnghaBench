
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int LogWARN ;
 int inet_aton (char*,struct in_addr*) ;
 int log_Printf (int ,char*,int,char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
do_inet_aton(const char *start, const char *end, struct in_addr *ip)
{
  char ipstr[16];

  if (end - start > 15) {
    log_Printf(LogWARN, "%.*s: Invalid IP address\n", (int)(end-start), start);
    return 0;
  }
  strncpy(ipstr, start, end-start);
  ipstr[end-start] = '\0';
  return inet_aton(ipstr, ip);
}
