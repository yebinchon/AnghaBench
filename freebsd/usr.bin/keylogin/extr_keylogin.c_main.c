
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_netstarg {scalar_t__* st_priv_key; int st_netname; scalar_t__* st_pub_key; } ;


 int MAXNETNAMELEN ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int getnetname (char*) ;
 int getpass (char*) ;
 int getsecretkey (char*,char*,int ) ;
 scalar_t__ key_setnet (struct key_netstarg*) ;
 int stderr ;
 int strdup (char*) ;

int
main(void)
{
 char fullname[MAXNETNAMELEN + 1];
 struct key_netstarg netst;

 if (!getnetname(fullname)) {
  fprintf(stderr, "netname lookup failed -- make sure the ");
  fprintf(stderr, "system domain name is set.\n");
  exit(1);
 }

 if (! getsecretkey(fullname, (char *)&(netst.st_priv_key),
    getpass("Password:"))) {
  fprintf(stderr, "Can't find %s's secret key\n", fullname);
  exit(1);
 }
 if (netst.st_priv_key[0] == 0) {
  fprintf(stderr, "Password incorrect for %s\n", fullname);
  exit(1);
 }

 netst.st_pub_key[0] = 0;
 netst.st_netname = strdup(fullname);

 if (key_setnet(&netst) < 0) {
  fprintf(stderr, "Could not set %s's secret key\n", fullname);
  fprintf(stderr, "Maybe the keyserver is down?\n");
  exit(1);
 }
 exit(0);

}
