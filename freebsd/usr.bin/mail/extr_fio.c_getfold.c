
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* homedir ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlcpy (char*,char*,int) ;
 char* value (char*) ;

int
getfold(char *name, int namelen)
{
 char *folder;
 int copylen;

 if ((folder = value("folder")) == ((void*)0))
  return (-1);
 if (*folder == '/')
  copylen = strlcpy(name, folder, namelen);
 else
  copylen = snprintf(name, namelen, "%s/%s",
      homedir ? homedir : ".", folder);
 return (copylen < 0 || copylen >= namelen ? (-1) : (0));
}
