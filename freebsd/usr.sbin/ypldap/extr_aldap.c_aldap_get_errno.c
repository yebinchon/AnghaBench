
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aldap {int err; } ;







int
aldap_get_errno(struct aldap *a, const char **estr)
{
 switch (a->err) {
 case 128:
  *estr = "success";
  break;
 case 129:
  *estr = "parser failed";
  break;
 case 131:
  *estr = "invalid filter";
  break;
 case 130:
  *estr = "operation failed";
  break;
 default:
  *estr = "unknown";
  break;
 }
 return (a->err);
}
