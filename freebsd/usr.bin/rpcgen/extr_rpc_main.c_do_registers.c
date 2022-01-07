
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_nettype (char const*,int ) ;
 scalar_t__ inetdflag ;
 scalar_t__ streq (char const*,char*) ;
 int tirpcflag ;
 int valid_i_nettypes ;
 int valid_ti_nettypes ;
 int write_inetd_register (char const*) ;
 int write_netid_register (char const*) ;
 int write_nettype_register (char const*) ;

__attribute__((used)) static int
do_registers(int argc, const char *argv[])
{
 int i;

 if (inetdflag || !tirpcflag) {
  for (i = 1; i < argc; i++) {
   if (streq(argv[i], "-s")) {
    if (!check_nettype(argv[i + 1],
          valid_i_nettypes))
     return (0);
    write_inetd_register(argv[i + 1]);
    i++;
   }
  }
 } else {
  for (i = 1; i < argc; i++)
   if (streq(argv[i], "-s")) {
    if (!check_nettype(argv[i + 1],
          valid_ti_nettypes))
     return (0);
    write_nettype_register(argv[i + 1]);
    i++;
   } else if (streq(argv[i], "-n")) {
    write_netid_register(argv[i + 1]);
    i++;
   }
 }
 return (1);
}
