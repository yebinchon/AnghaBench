
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_pri; } ;


 int CN_NORMAL ;

__attribute__((used)) static void
riscv_cnprobe(struct consdev *cp)
{

 cp->cn_pri = CN_NORMAL;
}
