
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofwo_extabent {int ex_prop; } ;


 int EX_DATAERR ;
 int EX_OK ;
 int ofw_optnode (int) ;
 int ofw_setprop (int,int ,char*,char*,int) ;
 int ofwo_printprop (int ,char const*,int) ;
 int ofwo_setpass (int) ;
 int ofwo_setstr (int,void const*,int,int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ofwo_secmode(const struct ofwo_extabent *exent, int fd, const void *buf,
    int buflen, const char *val)
{
 int res;

 if (val) {
  if (strcmp(val, "full") == 0 || strcmp(val, "command") == 0) {
   if ((res = ofwo_setpass(fd)) != EX_OK)
    return (res);
   if ((res = ofwo_setstr(fd, buf, buflen, exent->ex_prop,
       val)) != EX_OK)
    ofw_setprop(fd, ofw_optnode(fd),
        "security-password", "", 1);
   return (res);
  }
  if (strcmp(val, "none") == 0) {
   ofw_setprop(fd, ofw_optnode(fd), "security-password",
       "", 1);
   return (ofwo_setstr(fd, buf, buflen, exent->ex_prop,
       val));
  }
  return (EX_DATAERR);
 } else
  ofwo_printprop(exent->ex_prop, (const char *)buf, buflen);
 return (EX_OK);
}
