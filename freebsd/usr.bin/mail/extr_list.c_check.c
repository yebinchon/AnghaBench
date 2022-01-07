
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MDELETED ;
 struct message* message ;
 int msgCount ;
 int printf (char*,int) ;

int
check(int mesg, int f)
{
 struct message *mp;

 if (mesg < 1 || mesg > msgCount) {
  printf("%d: Invalid message number\n", mesg);
  return (-1);
 }
 mp = &message[mesg-1];
 if (f != MDELETED && (mp->m_flag & MDELETED) != 0) {
  printf("%d: Inappropriate message\n", mesg);
  return (-1);
 }
 return (0);
}
