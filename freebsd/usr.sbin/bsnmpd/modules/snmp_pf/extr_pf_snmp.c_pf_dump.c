
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int LOG_ERR ;
 scalar_t__ altq_enabled ;
 int pfa_refresh () ;
 scalar_t__ pfa_table_age ;
 int pfa_table_count ;
 int pfi_refresh () ;
 scalar_t__ pfi_table_age ;
 int pfi_table_count ;
 int pfl_refresh () ;
 scalar_t__ pfl_table_age ;
 int pfl_table_count ;
 int pfq_refresh () ;
 scalar_t__ pfq_table_age ;
 int pfq_table_count ;
 int pft_refresh () ;
 scalar_t__ pft_table_age ;
 int pft_table_count ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static void
pf_dump(void)
{
 pfi_refresh();
 if (altq_enabled) {
  pfq_refresh();
 }
 pft_refresh();
 pfa_refresh();
 pfl_refresh();

 syslog(LOG_ERR, "Dump: pfi_table_age = %jd",
     (intmax_t)pfi_table_age);
 syslog(LOG_ERR, "Dump: pfi_table_count = %d",
     pfi_table_count);

 syslog(LOG_ERR, "Dump: pfq_table_age = %jd",
     (intmax_t)pfq_table_age);
 syslog(LOG_ERR, "Dump: pfq_table_count = %d",
     pfq_table_count);

 syslog(LOG_ERR, "Dump: pft_table_age = %jd",
     (intmax_t)pft_table_age);
 syslog(LOG_ERR, "Dump: pft_table_count = %d",
     pft_table_count);

 syslog(LOG_ERR, "Dump: pfa_table_age = %jd",
     (intmax_t)pfa_table_age);
 syslog(LOG_ERR, "Dump: pfa_table_count = %d",
     pfa_table_count);

 syslog(LOG_ERR, "Dump: pfl_table_age = %jd",
     (intmax_t)pfl_table_age);
 syslog(LOG_ERR, "Dump: pfl_table_count = %d",
     pfl_table_count);
}
