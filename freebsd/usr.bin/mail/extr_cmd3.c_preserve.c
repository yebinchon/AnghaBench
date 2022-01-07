
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MBOX ;
 int MPRESERVE ;
 struct message* dot ;
 scalar_t__ edit ;
 struct message* message ;
 int printf (char*) ;

int
preserve(void *v)
{
 int *msgvec = v;
 int *ip, mesg;
 struct message *mp;

 if (edit) {
  printf("Cannot \"preserve\" in edit mode\n");
  return (1);
 }
 for (ip = msgvec; *ip != 0; ip++) {
  mesg = *ip;
  mp = &message[mesg-1];
  mp->m_flag |= MPRESERVE;
  mp->m_flag &= ~MBOX;
  dot = mp;
 }
 return (0);
}
