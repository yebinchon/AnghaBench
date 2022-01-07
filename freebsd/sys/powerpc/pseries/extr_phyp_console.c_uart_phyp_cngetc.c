
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int alt_break_state ;
 int console_sc ;
 int kdb_alt_break (unsigned char,int *) ;
 int uart_phyp_get (int ,unsigned char*,int) ;

__attribute__((used)) static int
uart_phyp_cngetc(struct consdev *cp)
{
 unsigned char c;
 int retval;

 retval = uart_phyp_get(console_sc, &c, 1);
 if (retval != 1)
  return (-1);




 return (c);
}
