
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atf_utils_file_exists (char*) ;
 int system (char*) ;

void
cleanup(void)
{
 if (atf_utils_file_exists("started_auditd"))
  system("service auditd onestop > /dev/null 2>&1");
}
