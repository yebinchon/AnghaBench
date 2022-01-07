
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct hostent {scalar_t__ h_addr; } ;


 scalar_t__ INADDR_NONE ;
 scalar_t__ TCP ;
 scalar_t__ UDP ;
 int error (char*,char*) ;
 int free (char*) ;
 struct hostent* gethostbyname (char*) ;
 struct servent* getservbyname (char*,char*) ;
 scalar_t__ inet_addr (char*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ protos ;
 int selecthost (struct in_addr*,int) ;
 int selectport (int ,int) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static void
changeitems(const char *args, int onoff)
{
 char *cp, *tmpstr, *tmpstr1;
 struct servent *sp;
 struct hostent *hp;
 struct in_addr in;

 tmpstr = tmpstr1 = strdup(args);
 cp = strchr(tmpstr1, '\n');
 if (cp)
  *cp = '\0';
 for (;;tmpstr1 = cp) {
  for (cp = tmpstr1; *cp && isspace(*cp); cp++)
   ;
  tmpstr1 = cp;
  for (; *cp && !isspace(*cp); cp++)
   ;
  if (*cp)
   *cp++ = '\0';
  if (cp - tmpstr1 == 0)
   break;
  sp = getservbyname(tmpstr1,
      protos == TCP ? "tcp" : protos == UDP ? "udp" : 0);
  if (sp) {
   selectport(sp->s_port, onoff);
   continue;
  }
  hp = gethostbyname(tmpstr1);
  if (hp == ((void*)0)) {
   in.s_addr = inet_addr(tmpstr1);
   if (in.s_addr == INADDR_NONE) {
    error("%s: unknown host or port", tmpstr1);
    continue;
   }
  } else
   in = *(struct in_addr *)hp->h_addr;
  selecthost(&in, onoff);
 }
 free(tmpstr);
}
