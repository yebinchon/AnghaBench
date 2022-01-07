
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct statistic {int index; char* desc; } ;
typedef int stats ;
typedef int oid ;


 int EX_DATAERR ;
 int EX_OSERR ;
 int err (int ,char*) ;
 int errx (int ,char*,char const*) ;
 int printf (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int sscanf (char const*,char*,int*) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 struct statistic* tbl ;

__attribute__((used)) static void
get_statistics(const char *iface)
{
 static uint32_t stats[256];
 const struct statistic *stat;
 char oid[32];
 size_t len;
 int ifaceno;

 if (sscanf(iface, "iwi%u", &ifaceno) != 1)
  errx(EX_DATAERR, "Invalid interface name '%s'", iface);

 len = sizeof(stats);
 (void)snprintf(oid, sizeof(oid), "dev.iwi.%u.stats", ifaceno);
 if (sysctlbyname(oid, stats, &len, ((void*)0), 0) == -1)
  err(EX_OSERR, "Can't retrieve statistics");

 for (stat = tbl; stat->index != -1; stat++)
  (void)printf("%-60s[%u]\n", stat->desc, stats[stat->index]);
}
