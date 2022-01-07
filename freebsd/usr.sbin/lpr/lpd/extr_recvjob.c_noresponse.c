
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int frecverr (char*) ;
 int read (int ,char*,size_t) ;

__attribute__((used)) static int
noresponse(void)
{
 char resp;

 if (read(STDOUT_FILENO, &resp, (size_t)1) != 1) {
  frecverr("lost connection in noresponse()");

 }
 if (resp == '\0')
  return(0);
 return(1);
}
