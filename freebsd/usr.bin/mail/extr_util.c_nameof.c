
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int dummy; } ;


 int charcount (char*,char) ;
 int name1 (struct message*,int) ;
 char* skin (int ) ;
 char* strrchr (char*,char) ;

char *
nameof(struct message *mp, int reptype)
{
 char *cp, *cp2;

 cp = skin(name1(mp, reptype));
 if (reptype != 0 || charcount(cp, '!') < 2)
  return (cp);
 cp2 = strrchr(cp, '!');
 cp2--;
 while (cp2 > cp && *cp2 != '!')
  cp2--;
 if (*cp2 == '!')
  return (cp2 + 1);
 return (cp);
}
