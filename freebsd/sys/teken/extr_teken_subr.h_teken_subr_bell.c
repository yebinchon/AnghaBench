
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int teken_t ;


 int teken_funcs_bell (int const*) ;

__attribute__((used)) static void
teken_subr_bell(const teken_t *t)
{

 teken_funcs_bell(t);
}
