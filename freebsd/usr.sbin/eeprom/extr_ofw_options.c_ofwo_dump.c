
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofwo_extabent {char* ex_prop; int (* ex_handler ) (struct ofwo_extabent const*,int,void*,int,int *) ;} ;
typedef int prop ;
typedef int phandle_t ;


 int OFWO_MAXPROP ;
 int O_RDONLY ;
 int free (void*) ;
 int ofw_close (int) ;
 int ofw_firstprop (int,int ,char*,int) ;
 int ofw_getprop_alloc (int,int ,char*,void**,int*,int) ;
 int ofw_nextprop (int,int ,char*,char*,int) ;
 int ofw_open (int ) ;
 int ofw_optnode (int) ;
 struct ofwo_extabent* ofwo_extab ;
 int ofwo_printprop (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (struct ofwo_extabent const*,int,void*,int,int *) ;

void
ofwo_dump(void)
{
 void *pbuf;
 int fd, len, nlen, pblen;
 phandle_t optnode;
 char prop[OFWO_MAXPROP + 1];
 const struct ofwo_extabent *ex;

 pblen = 0;
 pbuf = ((void*)0);
 fd = ofw_open(O_RDONLY);
 optnode = ofw_optnode(fd);
 for (nlen = ofw_firstprop(fd, optnode, prop, sizeof(prop)); nlen != 0;
     nlen = ofw_nextprop(fd, optnode, prop, prop, sizeof(prop))) {
  len = ofw_getprop_alloc(fd, optnode, prop, &pbuf, &pblen, 1);
  if (len < 0)
   continue;
  if (strcmp(prop, "name") == 0)
   continue;
  for (ex = ofwo_extab; ex->ex_prop != ((void*)0); ++ex)
   if (strcmp(ex->ex_prop, prop) == 0)
    break;
  if (ex->ex_prop != ((void*)0))
   (*ex->ex_handler)(ex, fd, pbuf, len, ((void*)0));
  else
   ofwo_printprop(prop, (char *)pbuf, len);
 }
 if (pbuf != ((void*)0))
  free(pbuf);
 ofw_close(fd);
}
