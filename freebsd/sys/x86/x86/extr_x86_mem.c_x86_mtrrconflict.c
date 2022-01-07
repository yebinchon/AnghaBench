
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDF_ATTRMASK ;
 int MDF_UNCACHEABLE ;
 int MDF_UNKNOWN ;
 int MDF_WRITEBACK ;

__attribute__((used)) static int
x86_mtrrconflict(int flag1, int flag2)
{

 flag1 &= MDF_ATTRMASK;
 flag2 &= MDF_ATTRMASK;
 if ((flag1 & MDF_UNKNOWN) || (flag2 & MDF_UNKNOWN))
  return (1);
 if (flag1 == flag2 ||
     (flag1 == MDF_WRITEBACK && flag2 == MDF_UNCACHEABLE) ||
     (flag2 == MDF_WRITEBACK && flag1 == MDF_UNCACHEABLE))
  return (0);
 return (1);
}
