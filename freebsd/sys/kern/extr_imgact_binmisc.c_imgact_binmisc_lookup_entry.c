
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ximgact_binmisc_entry_t ;
typedef int imgact_binmisc_entry_t ;


 int ENOENT ;
 int * imgact_binmisc_find_entry (char*) ;
 int imgact_binmisc_populate_xbe (int *,int *) ;
 int interp_list_sx ;
 int sx_slock (int *) ;
 int sx_sunlock (int *) ;

__attribute__((used)) static int
imgact_binmisc_lookup_entry(char *name, ximgact_binmisc_entry_t *xbe)
{
 imgact_binmisc_entry_t *ibe;
 int error = 0;

 sx_slock(&interp_list_sx);
 if ((ibe = imgact_binmisc_find_entry(name)) == ((void*)0)) {
  sx_sunlock(&interp_list_sx);
  return (ENOENT);
 }

 error = imgact_binmisc_populate_xbe(xbe, ibe);
 sx_sunlock(&interp_list_sx);

 return (error);
}
