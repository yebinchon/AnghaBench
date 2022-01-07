
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*,char*) ;

void usage(char *pname)
{
 printf("Usage: %s <opts>\n"
  "-m\t<source mac>\n"
  "-s\t<ssid>\n"
  "-h\tusage\n"
  "-i\t<iface>\n"
  "-w\t<wep key>\n"
  "-t\t<tap>\n"
  "-b\t<bssid>\n"
  , pname);
 exit(0);
}
