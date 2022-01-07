
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {char const* si_name; } ;
typedef int prefix ;


 int MAKEDEV_NOWAIT ;
 int M_NOWAIT ;
 int M_TEMP ;
 int M_WAITOK ;
 scalar_t__ cold ;
 int devctl_notify_f (char*,char*,char const*,char*,int) ;
 int free (char*,int ) ;
 char* malloc (int,int ,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
notify(struct cdev *dev, const char *ev, int flags)
{
 static const char prefix[] = "cdev=";
 char *data;
 int namelen, mflags;

 if (cold)
  return;
 mflags = (flags & MAKEDEV_NOWAIT) ? M_NOWAIT : M_WAITOK;
 namelen = strlen(dev->si_name);
 data = malloc(namelen + sizeof(prefix), M_TEMP, mflags);
 if (data == ((void*)0))
  return;
 memcpy(data, prefix, sizeof(prefix) - 1);
 memcpy(data + sizeof(prefix) - 1, dev->si_name, namelen + 1);
 devctl_notify_f("DEVFS", "CDEV", ev, data, mflags);
 free(data, M_TEMP);
}
