
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ac_acpi_devd ;
 int ac_apm ;
 int ac_sysctl ;
 int acline_mode_user ;
 int errx (int,char*,char,int ) ;
 int optarg ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
parse_acline_mode(char *arg, int ch)
{
 if (strcmp(arg, "sysctl") == 0)
  acline_mode_user = ac_sysctl;
 else if (strcmp(arg, "devd") == 0)
  acline_mode_user = ac_acpi_devd;




 else
  errx(1, "bad option: -%c %s", (char)ch, optarg);
}
