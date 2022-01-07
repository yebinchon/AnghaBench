
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_altq {int version; } ;


 int DIOCGETALTQS ;
 scalar_t__ ENODEV ;
 int LOG_ERR ;
 int LOG_INFO ;
 int PFIOC_ALTQ_VERSION ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,struct pfioc_altq*) ;
 int strerror (scalar_t__) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
altq_is_enabled(int pfdev)
{
 struct pfioc_altq pa;

 errno = 0;
 pa.version = PFIOC_ALTQ_VERSION;
 if (ioctl(pfdev, DIOCGETALTQS, &pa)) {
  if (errno == ENODEV) {
   syslog(LOG_INFO, "No ALTQ support in kernel\n"
       "ALTQ related functions disabled\n");
   return (0);
  } else
   syslog(LOG_ERR, "DIOCGETALTQS returned an error: %s",
       strerror(errno));
   return (-1);
 }
 return (1);
}
