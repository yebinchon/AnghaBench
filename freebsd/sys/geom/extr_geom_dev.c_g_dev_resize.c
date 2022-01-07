
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_consumer {TYPE_1__* provider; } ;
typedef int buf ;
struct TYPE_2__ {char* name; } ;


 int M_WAITOK ;
 int SPECNAMELEN ;
 int devctl_notify_f (char*,char*,char*,char*,int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void
g_dev_resize(struct g_consumer *cp)
{
 char buf[SPECNAMELEN + 6];

 snprintf(buf, sizeof(buf), "cdev=%s", cp->provider->name);
 devctl_notify_f("GEOM", "DEV", "SIZECHANGE", buf, M_WAITOK);
}
