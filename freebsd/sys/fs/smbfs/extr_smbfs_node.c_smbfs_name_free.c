
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int M_SMBNODENAME ;
 int free (int *,int ) ;

__attribute__((used)) static void
smbfs_name_free(u_char *name)
{

 free(name, M_SMBNODENAME);
}
