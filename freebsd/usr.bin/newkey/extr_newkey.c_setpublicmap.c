
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PKFILE ;
 int PKMAP ;
 int YPOP_STORE ;
 int localupdate (char*,int ,int ,int ,char*,int ,char*) ;
 int mapupdate (char*,int ,int ,int ,char*,int ,char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;

int
setpublicmap(char *name, char *public, char *secret)
{
 char pkent[1024];

 (void)sprintf(pkent, "%s:%s", public, secret);




 return (localupdate(name, PKFILE, YPOP_STORE,
  strlen(name), name, strlen(pkent), pkent));

 }
