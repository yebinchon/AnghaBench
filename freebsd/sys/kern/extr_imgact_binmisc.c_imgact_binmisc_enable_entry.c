
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ibe_flags; } ;
typedef TYPE_1__ imgact_binmisc_entry_t ;


 int ENOENT ;
 int IBF_ENABLED ;
 TYPE_1__* imgact_binmisc_find_entry (char*) ;
 int interp_list_sx ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
imgact_binmisc_enable_entry(char *name)
{
 imgact_binmisc_entry_t *ibe;

 sx_xlock(&interp_list_sx);
 if ((ibe = imgact_binmisc_find_entry(name)) == ((void*)0)) {
  sx_xunlock(&interp_list_sx);
  return (ENOENT);
 }

 ibe->ibe_flags |= IBF_ENABLED;
 sx_xunlock(&interp_list_sx);

 return (0);
}
