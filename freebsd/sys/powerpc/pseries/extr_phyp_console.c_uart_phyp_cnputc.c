
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int console_sc ;
 int uart_phyp_put (int ,unsigned char*,int) ;

__attribute__((used)) static void
uart_phyp_cnputc(struct consdev *cp, int c)
{
 unsigned char ch = c;
 uart_phyp_put(console_sc, &ch, 1);
}
