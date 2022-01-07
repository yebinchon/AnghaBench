
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PATHSIZE ;
 char* expand (char*) ;
 int snprintf (char*,int,char*,char*) ;
 char* value (char*) ;

char *
getdeadletter(void)
{
 char *cp;

 if ((cp = value("DEAD")) == ((void*)0) || (cp = expand(cp)) == ((void*)0))
  cp = expand("~/dead.letter");
 else if (*cp != '/') {
  char buf[PATHSIZE];

  (void)snprintf(buf, sizeof(buf), "~/%s", cp);
  cp = expand(buf);
 }
 return (cp);
}
