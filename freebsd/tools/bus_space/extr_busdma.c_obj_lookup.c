
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct obj {scalar_t__ refcnt; scalar_t__ type; } ;


 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 scalar_t__ OBJ_TYPE_NONE ;
 int errno ;
 int noids ;
 struct obj** oidtbl ;

__attribute__((used)) static struct obj *
obj_lookup(int oid, u_int type)
{
 struct obj *obj;

 if (oid < 0 || oid >= noids) {
  errno = EINVAL;
  return (((void*)0));
 }
 obj = oidtbl[oid];
 if (obj->refcnt == 0) {
  errno = ENXIO;
  return (((void*)0));
 }
 if (type != OBJ_TYPE_NONE && obj->type != type) {
  errno = ENODEV;
  return (((void*)0));
 }
 return (obj);
}
