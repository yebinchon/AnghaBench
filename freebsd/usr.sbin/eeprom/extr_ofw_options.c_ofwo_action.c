
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofwo_extabent {char const* ex_prop; int (* ex_handler ) (struct ofwo_extabent const*,int,void*,int,char const*) ;} ;


 int EX_OK ;
 int EX_UNAVAILABLE ;
 int O_RDONLY ;
 int O_RDWR ;
 int free (void*) ;
 int ofw_close (int) ;
 int ofw_getprop_alloc (int,int ,char const*,void**,int*,int) ;
 int ofw_open (int ) ;
 int ofw_optnode (int) ;
 struct ofwo_extabent* ofwo_extab ;
 int ofwo_printprop (char const*,char*,int) ;
 int ofwo_setstr (int,void*,int,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (struct ofwo_extabent const*,int,void*,int,char const*) ;

int
ofwo_action(const char *prop, const char *val)
{
 void *pbuf;
 int fd, len, pblen, rv;
 const struct ofwo_extabent *ex;

 pblen = 0;
 rv = EX_OK;
 pbuf = ((void*)0);
 if (strcmp(prop, "name") == 0)
  return (EX_UNAVAILABLE);
 if (val)
  fd = ofw_open(O_RDWR);
 else
  fd = ofw_open(O_RDONLY);
 len = ofw_getprop_alloc(fd, ofw_optnode(fd), prop, &pbuf, &pblen, 1);
 if (len < 0) {
  rv = EX_UNAVAILABLE;
  goto out;
 }
 for (ex = ofwo_extab; ex->ex_prop != ((void*)0); ++ex)
  if (strcmp(ex->ex_prop, prop) == 0)
   break;
 if (ex->ex_prop != ((void*)0))
  rv = (*ex->ex_handler)(ex, fd, pbuf, len, val);
 else if (val)
  rv = ofwo_setstr(fd, pbuf, len, prop, val);
 else
  ofwo_printprop(prop, (char *)pbuf, len);
out:
 if (pbuf != ((void*)0))
  free(pbuf);
 ofw_close(fd);
 return (rv);
}
