
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int regiowidth; } ;



__attribute__((used)) static int
msm_probe(struct uart_bas *bas)
{

 bas->regiowidth = 4;

 return (0);
}
