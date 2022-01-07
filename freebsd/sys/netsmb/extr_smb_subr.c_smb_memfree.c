
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_SMBSTR ;
 int free (void*,int ) ;

void
smb_memfree(void *s)
{
 free(s, M_SMBSTR);
}
