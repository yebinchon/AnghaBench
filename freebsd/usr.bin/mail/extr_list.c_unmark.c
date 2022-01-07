
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_flag; } ;


 int MMARK ;
 int errx (int,char*) ;
 TYPE_1__* message ;
 int msgCount ;

void
unmark(int mesg)
{
 int i;

 i = mesg;
 if (i < 1 || i > msgCount)
  errx(1, "Bad message number to unmark");
 message[i-1].m_flag &= ~MMARK;
}
