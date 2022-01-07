
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int ttyhook_rint_bypass (struct tty*,char*,int) ;

__attribute__((used)) static int
ttyhook_defrint(struct tty *tp, char c, int flags)
{

 if (ttyhook_rint_bypass(tp, &c, 1) != 1)
  return (-1);

 return (0);
}
