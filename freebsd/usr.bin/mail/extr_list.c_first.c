
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MDELETED ;
 struct message* dot ;
 struct message* message ;
 size_t msgCount ;

int
first(int f, int m)
{
 struct message *mp;

 if (msgCount == 0)
  return (0);
 f &= MDELETED;
 m &= MDELETED;
 for (mp = dot; mp < &message[msgCount]; mp++)
  if ((mp->m_flag & m) == f)
   return (mp - message + 1);
 for (mp = dot-1; mp >= &message[0]; mp--)
  if ((mp->m_flag & m) == f)
   return (mp - message + 1);
 return (0);
}
