
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** printcapdb ;

void
setprintcap(char *newfile)
{
 printcapdb[0] = newfile;
}
