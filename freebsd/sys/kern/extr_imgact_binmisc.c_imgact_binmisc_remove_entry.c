
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int imgact_binmisc_entry_t ;


 int ENOENT ;
 int SLIST_REMOVE (int *,int *,int ,int ) ;
 int imgact_binmisc_destroy_entry (int *) ;
 int imgact_binmisc_entry ;
 int * imgact_binmisc_find_entry (char*) ;
 int interp_list_entry_count ;
 int interp_list_sx ;
 int interpreter_list ;
 int link ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
imgact_binmisc_remove_entry(char *name)
{
 imgact_binmisc_entry_t *ibe;

 sx_xlock(&interp_list_sx);
 if ((ibe = imgact_binmisc_find_entry(name)) == ((void*)0)) {
  sx_xunlock(&interp_list_sx);
  return (ENOENT);
 }
 SLIST_REMOVE(&interpreter_list, ibe, imgact_binmisc_entry, link);
 interp_list_entry_count--;
 sx_xunlock(&interp_list_sx);

 imgact_binmisc_destroy_entry(ibe);

 return (0);
}
