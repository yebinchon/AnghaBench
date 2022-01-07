
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMOD_NAME ;
 int interp_list_sx ;
 int sx_init (int *,int ) ;

__attribute__((used)) static void
imgact_binmisc_init(void *arg)
{

 sx_init(&interp_list_sx, KMOD_NAME);
}
