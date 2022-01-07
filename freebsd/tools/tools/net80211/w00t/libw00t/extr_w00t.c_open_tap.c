
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDWR ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*) ;

int open_tap(char *iface)
{
 char buf[64];

 snprintf(buf, sizeof(buf), "/dev/%s", iface);
 return open(buf, O_RDWR);
}
