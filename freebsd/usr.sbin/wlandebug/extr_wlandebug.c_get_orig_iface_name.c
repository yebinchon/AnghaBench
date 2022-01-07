
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifconfig_handle {int dummy; } ;


 int errx (int,char*) ;
 int free (char*) ;
 int ifconfig_close (struct ifconfig_handle*) ;
 scalar_t__ ifconfig_get_orig_name (struct ifconfig_handle*,char*,char**) ;
 struct ifconfig_handle* ifconfig_open () ;
 int setoid (char*,size_t,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
get_orig_iface_name(char *oid, size_t oid_size, char *name)
{
 struct ifconfig_handle *h;
 char *orig_name;

 h = ifconfig_open();
 if (ifconfig_get_orig_name(h, name, &orig_name) < 0) {

  orig_name = name;
 }

 if (strlen(orig_name) < strlen("wlan") + 1 ||
     strncmp(orig_name, "wlan", 4) != 0)
  errx(1, "expecting a wlan interface name");

 ifconfig_close(h);
 setoid(oid, oid_size, orig_name);
 if (orig_name != name)
  free(orig_name);
}
