
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int camdd_argmask ;


 int CAMDD_ARG_BUS ;
 int CAMDD_ARG_LUN ;
 int CAMDD_ARG_TARGET ;
 scalar_t__ isspace (char) ;
 scalar_t__ strtok (char*,char*) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int
parse_btl(char *tstr, int *bus, int *target, int *lun, camdd_argmask *arglst)
{
 char *tmpstr;
 int convs = 0;

 while (isspace(*tstr) && (*tstr != '\0'))
  tstr++;

 tmpstr = (char *)strtok(tstr, ":");
 if ((tmpstr != ((void*)0)) && (*tmpstr != '\0')) {
  *bus = strtol(tmpstr, ((void*)0), 0);
  *arglst |= CAMDD_ARG_BUS;
  convs++;
  tmpstr = (char *)strtok(((void*)0), ":");
  if ((tmpstr != ((void*)0)) && (*tmpstr != '\0')) {
   *target = strtol(tmpstr, ((void*)0), 0);
   *arglst |= CAMDD_ARG_TARGET;
   convs++;
   tmpstr = (char *)strtok(((void*)0), ":");
   if ((tmpstr != ((void*)0)) && (*tmpstr != '\0')) {
    *lun = strtol(tmpstr, ((void*)0), 0);
    *arglst |= CAMDD_ARG_LUN;
    convs++;
   }
  }
 }

 return convs;
}
