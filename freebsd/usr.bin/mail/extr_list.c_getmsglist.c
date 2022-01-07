
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MMARK ;
 scalar_t__ markall (char*,int) ;
 struct message* message ;
 size_t msgCount ;

int
getmsglist(char *buf, int *vector, int flags)
{
 int *ip;
 struct message *mp;

 if (msgCount == 0) {
  *vector = 0;
  return (0);
 }
 if (markall(buf, flags) < 0)
  return (-1);
 ip = vector;
 for (mp = &message[0]; mp < &message[msgCount]; mp++)
  if (mp->m_flag & MMARK)
   *ip++ = mp - &message[0] + 1;
 *ip = 0;
 return (ip - vector);
}
