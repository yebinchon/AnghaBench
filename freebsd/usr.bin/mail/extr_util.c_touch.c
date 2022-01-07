
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;


 int MREAD ;
 int MSTATUS ;
 int MTOUCH ;

void
touch(struct message *mp)
{

 mp->m_flag |= MTOUCH;
 if ((mp->m_flag & MREAD) == 0)
  mp->m_flag |= MREAD|MSTATUS;
}
