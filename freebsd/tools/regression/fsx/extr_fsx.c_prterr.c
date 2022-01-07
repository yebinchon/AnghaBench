
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int prt (char*,char*,char*,int ) ;
 int strerror (int ) ;

void
prterr(char *prefix)
{
 prt("%s%s%s\n", prefix, prefix ? ": " : "", strerror(errno));
}
