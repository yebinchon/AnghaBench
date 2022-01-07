
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOPID ;
 int errx (int,char*) ;
 int findslot (int ) ;

__attribute__((used)) static int
findfreeslot(void)
{
 int slot;

 if ((slot = findslot(NOPID)) < 0)
  errx(1, "internal error: no free pid slot");
 return (slot);
}
