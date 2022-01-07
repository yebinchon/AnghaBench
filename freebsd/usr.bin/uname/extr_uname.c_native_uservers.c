
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int __FreeBSD_version ;
 int snprintf (char*,int,char*,int) ;
 char* uservers ;

__attribute__((used)) static void
native_uservers(void)
{
 static char buf[128];

 snprintf(buf, sizeof(buf), "%d", __FreeBSD_version);
 uservers = buf;
}
