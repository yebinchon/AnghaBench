
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_flag; } ;


 int MREAD ;
 int MSTATUS ;
 int MTOUCH ;
 TYPE_1__* dot ;
 TYPE_1__* message ;

int
unread(void *v)
{
 int *msgvec = v;
 int *ip;

 for (ip = msgvec; *ip != 0; ip++) {
  dot = &message[*ip-1];
  dot->m_flag &= ~(MREAD|MTOUCH);
  dot->m_flag |= MSTATUS;
 }
 return (0);
}
