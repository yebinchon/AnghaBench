
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MDELETED ;
 int MSAVED ;
 struct message* dot ;
 struct message* message ;
 size_t msgCount ;
 int printf (char*) ;
 int sawcom ;
 int type (int*) ;

int
next(void *v)
{
 struct message *mp;
 int *msgvec = v;
 int *ip, *ip2, list[2], mdot;

 if (*msgvec != 0) {







  mdot = dot - &message[0] + 1;






  for (ip = msgvec; *ip != 0; ip++)
   if (*ip > mdot)
    break;
  if (*ip == 0)
   ip = msgvec;
  ip2 = ip;
  do {
   mp = &message[*ip2 - 1];
   if ((mp->m_flag & MDELETED) == 0) {
    dot = mp;
    goto hitit;
   }
   if (*ip2 != 0)
    ip2++;
   if (*ip2 == 0)
    ip2 = msgvec;
  } while (ip2 != ip);
  printf("No messages applicable\n");
  return (1);
 }






 if (!sawcom)
  goto hitit;






 for (mp = dot+1; mp < &message[msgCount]; mp++)
  if ((mp->m_flag & (MDELETED|MSAVED)) == 0)
   break;
 if (mp >= &message[msgCount]) {
  printf("At EOF\n");
  return (0);
 }
 dot = mp;
hitit:




 list[0] = dot - &message[0] + 1;
 list[1] = 0;
 return (type(list));
}
