
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {struct com_s* t_sc; } ;
struct com_s {int dummy; } ;


 int CD1400_ETC_SENDBREAK ;
 int CD1400_ETC_STOPBREAK ;
 int cd_etc (struct com_s*,int ) ;

__attribute__((used)) static void
cybreak(struct tty *tp, int sig)
{
 struct com_s *com;

 com = tp->t_sc;
 if (sig)
  cd_etc(com, CD1400_ETC_SENDBREAK);
 else
  cd_etc(com, CD1400_ETC_STOPBREAK);
}
