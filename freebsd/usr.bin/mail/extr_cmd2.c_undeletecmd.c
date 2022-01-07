
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MDELETED ;
 struct message* dot ;
 struct message* message ;
 int msgCount ;
 int touch (struct message*) ;

int
undeletecmd(void *v)
{
 int *msgvec = v;
 int *ip;
 struct message *mp;

 for (ip = msgvec; *ip && ip-msgvec < msgCount; ip++) {
  mp = &message[*ip - 1];
  touch(mp);
  dot = mp;
  mp->m_flag &= ~MDELETED;
 }
 return (0);
}
