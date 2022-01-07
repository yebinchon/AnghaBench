
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {char* ifr_data; int ifr_name; } ;
typedef int ifr ;
typedef struct ifreq* caddr_t ;


 int LOG_ERR ;
 int SIOCIFCREATE ;
 int SIOCSIFNAME ;
 int bzero (struct ifreq*,int) ;
 int errno ;
 int free (char*) ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int sock ;
 scalar_t__ strcmp (char const*,int ) ;
 char* strdup (char const*) ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int) ;
 int syslog (int ,char*,...) ;

int
bridge_create(const char *b_name)
{
 char *new_name;
 struct ifreq ifr;

 bzero(&ifr, sizeof(ifr));
 strlcpy(ifr.ifr_name, b_name, sizeof(ifr.ifr_name));

 if (ioctl(sock, SIOCIFCREATE, &ifr) < 0) {
  syslog(LOG_ERR, "create bridge: ioctl(SIOCIFCREATE) "
      "failed: %s", strerror(errno));
  return (-1);
 }

 if (strcmp(b_name, ifr.ifr_name) == 0)
  return (0);

 if ((new_name = strdup(b_name)) == ((void*)0)) {
  syslog(LOG_ERR, "create bridge: strdup() failed");
  return (-1);
 }

 ifr.ifr_data = new_name;
 if (ioctl(sock, SIOCSIFNAME, (caddr_t) &ifr) < 0) {
  syslog(LOG_ERR, "create bridge: ioctl(SIOCSIFNAME) "
      "failed: %s", strerror(errno));
  free(new_name);
  return (-1);
 }

 return (0);
}
