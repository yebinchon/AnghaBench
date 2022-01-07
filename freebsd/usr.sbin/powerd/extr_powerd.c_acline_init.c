
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPIAC ;
 int APMDEV ;
 int O_RDONLY ;
 int PMUAC ;
 int SRC_UNKNOWN ;
 scalar_t__ ac_acpi_devd ;
 scalar_t__ ac_apm ;
 scalar_t__ ac_none ;
 scalar_t__ ac_sysctl ;
 int acline_mib ;
 int acline_mib_len ;
 scalar_t__ acline_mode ;
 scalar_t__ acline_mode_user ;
 int acline_status ;
 int apm_fd ;
 int open (int ,int ) ;
 scalar_t__ sysctlnametomib (int ,int ,int*) ;
 scalar_t__ vflag ;
 int warnx (char*) ;

__attribute__((used)) static void
acline_init(void)
{
 int skip_source_check;

 acline_mib_len = 4;
 acline_status = SRC_UNKNOWN;
 skip_source_check = (acline_mode_user == ac_none ||
        acline_mode_user == ac_acpi_devd);

 if ((skip_source_check || acline_mode_user == ac_sysctl) &&
     sysctlnametomib(ACPIAC, acline_mib, &acline_mib_len) == 0) {
  acline_mode = ac_sysctl;
  if (vflag)
   warnx("using sysctl for AC line status");
 } else {
  warnx("unable to determine AC line status");
  acline_mode = ac_none;
 }
}
