
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char*) ;
 char* dirname (char*) ;
 int free (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strdup (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
getdevname(const char *udevname, char *msgdev, char *datadev)
{
 char *bn, *bnbuf, *dn, *dnbuf;

 dnbuf = strdup(udevname);
 if (dnbuf == ((void*)0))
  return (-1);
 dn = dirname(dnbuf);
 bnbuf = strdup(udevname);
 if (bnbuf == ((void*)0)) {
  free(dnbuf);
  return (-1);
 }
 bn = basename(bnbuf);
 if (strncmp(bn, "ugen", 4) != 0) {
  free(dnbuf);
  free(bnbuf);
  return (-1);
 }
 bn += 4;


 snprintf(msgdev, 256, "%s/usb/%s.1", dn, bn);
 snprintf(datadev, 256, "%s/usb/%s.2", dn, bn);
 free(dnbuf);
 free(bnbuf);
 return (0);
}
