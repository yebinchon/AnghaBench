
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;

 int err (int ,char*) ;
 int free (char*) ;
 int ofwo_action (char*,char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 int warnx (char*,char*,...) ;

__attribute__((used)) static int
action(char *line)
{
 int rv;
 char *keyword, *arg;

 keyword = strdup(line);
 if (keyword == ((void*)0))
  err(EX_OSERR, "malloc() failed");
 if ((arg = strrchr(keyword, '=')) != ((void*)0))
  *arg++ = '\0';
 switch (rv = ofwo_action(keyword, arg)) {
  case 128:
   warnx("nothing available for '%s'.", keyword);
   break;
  case 129:
   warnx("invalid value '%s' for '%s'.", arg, keyword);
   break;
 }
 free(keyword);
 return(rv);
}
