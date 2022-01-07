
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int bvm_wcons (int) ;

__attribute__((used)) static void
bvm_cnputc(struct consdev *cp, int c)
{

 bvm_wcons(c);
}
