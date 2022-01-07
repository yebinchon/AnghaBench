
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conffile ;
 int getent (char*,char*,int ) ;

int
tgetent(char *bp, char *name)
{
 return (getent(bp, name, conffile));
}
