
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int CMP_FLAG (int ,int ) ;
 char CNL ;
 int ECHO ;
 int ECHONL ;
 int l ;
 int ttydisc_echo_force (struct tty*,char,int) ;

__attribute__((used)) static int
ttydisc_echo(struct tty *tp, char c, int quote)
{





 if (!CMP_FLAG(l, ECHO) &&
     (!CMP_FLAG(l, ECHONL) || c != CNL || quote))
  return (0);

 return ttydisc_echo_force(tp, c, quote);
}
