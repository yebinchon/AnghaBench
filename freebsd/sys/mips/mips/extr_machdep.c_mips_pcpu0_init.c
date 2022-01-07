
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int dummy; } ;


 int PCPU_ADDR (int ) ;
 int PCPU_SET (int ,int *) ;
 int curthread ;
 int pcpu_init (int ,int ,int) ;
 int thread0 ;

void
mips_pcpu0_init()
{

 pcpu_init(PCPU_ADDR(0), 0, sizeof(struct pcpu));
 PCPU_SET(curthread, &thread0);
}
