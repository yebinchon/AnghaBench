
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gid ;
 int setegid (int ) ;
 int seteuid (int ) ;
 int uid ;

void
shell_uid(void)
{
 setegid(gid);
 seteuid(uid);
}
