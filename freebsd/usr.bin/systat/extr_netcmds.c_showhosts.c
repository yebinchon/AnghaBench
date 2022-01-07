
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; } ;
struct hitem {int addr; int onoff; } ;


 int AF_INET ;
 int addch (char) ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 struct hitem* hosts ;
 scalar_t__ inet_ntoa (int ) ;
 int nhosts ;
 int printw (char*,char*) ;

__attribute__((used)) static void
showhosts(void)
{
 struct hitem *p;
 struct hostent *hp;

 for (p = hosts; p < hosts+nhosts; p++) {
  hp = gethostbyaddr((char *)&p->addr, sizeof (p->addr), AF_INET);
  if (!p->onoff)
   addch('!');
  printw("%s ", hp ? hp->h_name : (char *)inet_ntoa(p->addr));
 }
}
