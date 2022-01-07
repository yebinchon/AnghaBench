
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct statistic {scalar_t__ index; char* desc; int unit; } ;



 int EX_DATAERR ;
 int EX_OSERR ;



 int err (int ,char*) ;
 int errx (int ,char*,char const*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,int) ;
 int sscanf (char const*,char*,int*) ;
 int sysctlbyname (char*,int*,int*,int *,int ) ;
 struct statistic* tbl ;

__attribute__((used)) static void
get_statistics(const char *iface)
{
 static uint32_t stats[256];
 const struct statistic *stat;
 char oid[32];
 int ifaceno, len;

 if (sscanf(iface, "ipw%u", &ifaceno) != 1)
  errx(EX_DATAERR, "Invalid interface name '%s'", iface);

 len = sizeof stats;
 snprintf(oid, sizeof oid, "dev.ipw.%u.stats", ifaceno);
 if (sysctlbyname(oid, stats, &len, ((void*)0), 0) == -1)
  err(EX_OSERR, "Can't retrieve statistics");

 for (stat = tbl; stat->index != 0; stat++) {
  printf("%-60s[", stat->desc);
  switch (stat->unit) {
  case 129:
   printf("%u", stats[stat->index]);
   break;
  case 131:
   printf(stats[stat->index] ? "true" : "false");
   break;
  case 128:
   printf("%u%%", stats[stat->index]);
   break;
  case 130:
  default:
   printf("0x%08X", stats[stat->index]);
  }
  printf("]\n");
 }
}
