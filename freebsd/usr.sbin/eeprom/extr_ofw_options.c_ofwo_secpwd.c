
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofwo_extabent {int ex_prop; } ;


 int EX_CONFIG ;
 int EX_OK ;
 int free (void*) ;
 int ofw_getprop_alloc (int,int ,char*,void**,int*,int) ;
 int ofw_optnode (int) ;
 int ofwo_printprop (int ,char const*,int) ;
 int ofwo_setpass (int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int warnx (char*) ;

__attribute__((used)) static int
ofwo_secpwd(const struct ofwo_extabent *exent, int fd, const void *buf,
    int buflen, const char *val)
{
 void *pbuf;
 int len, pblen, rv;

 pblen = 0;
 rv = EX_OK;
 pbuf = ((void*)0);
 if (val) {
  len = ofw_getprop_alloc(fd, ofw_optnode(fd), "security-mode",
      &pbuf, &pblen, 1);
  if (len <= 0 || strncmp("none", (char *)pbuf, len) == 0) {
   rv = EX_CONFIG;
   warnx("no security mode set.");
  } else if (strncmp("command", (char *)pbuf, len) == 0 ||
      strncmp("full", (char *)pbuf, len) == 0) {
   rv = ofwo_setpass(fd);
  } else {
   rv = EX_CONFIG;
   warnx("invalid security mode.");
  }
 } else
  ofwo_printprop(exent->ex_prop, (const char *)buf, buflen);
 if (pbuf != ((void*)0))
  free(pbuf);
 return (rv);
}
