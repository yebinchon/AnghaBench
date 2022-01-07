
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_size; int m_lines; } ;


 struct message* message ;
 int printf (char*,int,int ,int ) ;

int
messize(void *v)
{
 int *msgvec = v;
 struct message *mp;
 int *ip, mesg;

 for (ip = msgvec; *ip != 0; ip++) {
  mesg = *ip;
  mp = &message[mesg-1];
  printf("%d: %ld/%ld\n", mesg, mp->m_lines, mp->m_size);
 }
 return (0);
}
