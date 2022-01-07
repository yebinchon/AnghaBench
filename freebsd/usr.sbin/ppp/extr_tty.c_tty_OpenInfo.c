
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttydevice {int dummy; } ;
struct physical {int handler; } ;


 scalar_t__ Online (struct ttydevice*) ;
 struct ttydevice* device2tty (int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static const char *
tty_OpenInfo(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);
  static char buf[13];

  if (Online(dev))
    strcpy(buf, "with");
  else
    strcpy(buf, "no");
  strcat(buf, " carrier");

  return buf;
}
