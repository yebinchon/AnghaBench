
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MBOX ;
 int MDELETED ;
 int MPRESERVE ;
 int MSAVED ;
 int MTOUCH ;
 struct message* dot ;
 int first (int ,int) ;
 struct message* message ;
 int touch (struct message*) ;

int
delm(int *msgvec)
{
 struct message *mp;
 int *ip, last;

 last = 0;
 for (ip = msgvec; *ip != 0; ip++) {
  mp = &message[*ip - 1];
  touch(mp);
  mp->m_flag |= MDELETED|MTOUCH;
  mp->m_flag &= ~(MPRESERVE|MSAVED|MBOX);
  last = *ip;
 }
 if (last != 0) {
  dot = &message[last-1];
  last = first(0, MDELETED);
  if (last != 0) {
   dot = &message[last-1];
   return (0);
  }
  else {
   dot = &message[0];
   return (-1);
  }
 }





 return (-1);
}
