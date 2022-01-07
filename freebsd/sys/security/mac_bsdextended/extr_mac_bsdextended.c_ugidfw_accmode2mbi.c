
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int accmode_t ;


 int MBI_ADMIN ;
 int MBI_APPEND ;
 int MBI_EXEC ;
 int MBI_READ ;
 int MBI_STAT ;
 int MBI_WRITE ;
 int VADMIN_PERMS ;
 int VAPPEND ;
 int VEXEC ;
 int VREAD ;
 int VSTAT_PERMS ;
 int VWRITE ;

int
ugidfw_accmode2mbi(accmode_t accmode)
{
 int mbi;

 mbi = 0;
 if (accmode & VEXEC)
  mbi |= MBI_EXEC;
 if (accmode & VWRITE)
  mbi |= MBI_WRITE;
 if (accmode & VREAD)
  mbi |= MBI_READ;
 if (accmode & VADMIN_PERMS)
  mbi |= MBI_ADMIN;
 if (accmode & VSTAT_PERMS)
  mbi |= MBI_STAT;
 if (accmode & VAPPEND)
  mbi |= MBI_APPEND;
 return (mbi);
}
