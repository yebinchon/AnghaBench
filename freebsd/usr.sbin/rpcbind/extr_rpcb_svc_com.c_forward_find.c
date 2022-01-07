
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct finfo {int flag; int forward_xid; } ;


 struct finfo* FINFO ;
 int FINFO_ACTIVE ;
 scalar_t__ NFORWARD ;

__attribute__((used)) static struct finfo *
forward_find(u_int32_t reply_xid)
{
 int i;

 i = reply_xid % (u_int32_t)NFORWARD;
 if ((FINFO[i].flag & FINFO_ACTIVE) &&
     (FINFO[i].forward_xid == reply_xid)) {
  return (&FINFO[i]);
 }
 return (((void*)0));
}
