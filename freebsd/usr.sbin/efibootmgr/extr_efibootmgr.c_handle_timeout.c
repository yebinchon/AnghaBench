
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int timeout ;


 int errx (int,char*) ;
 int le16enc (int *,int) ;
 scalar_t__ set_bootvar (char*,int *,int) ;

__attribute__((used)) static void
handle_timeout(int to)
{
 uint16_t timeout;

 le16enc(&timeout, to);
 if (set_bootvar("Timeout", (uint8_t *)&timeout, sizeof(timeout)) < 0)
  errx(1, "Can't set Timeout for booting.");
}
