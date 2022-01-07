
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
typedef int caddr_t ;


 int ENOENT ;
 int EWOULDBLOCK ;
 int linker_search_symbol_name_flags (int ,char*,int ,long*,int) ;
 int strlcpy (char*,char*,int ) ;

__attribute__((used)) static int
stack_symbol(vm_offset_t pc, char *namebuf, u_int buflen, long *offset,
    int flags)
{
 int error;

 error = linker_search_symbol_name_flags((caddr_t)pc, namebuf, buflen,
     offset, flags);
 if (error == 0 || error == EWOULDBLOCK)
  return (error);

 *offset = 0;
 strlcpy(namebuf, "??", buflen);
 return (ENOENT);
}
