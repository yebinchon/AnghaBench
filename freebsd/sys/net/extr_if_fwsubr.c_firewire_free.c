
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int M_FWCOM ;
 int free (void*,int ) ;

__attribute__((used)) static void
firewire_free(void *com, u_char type)
{

 free(com, M_FWCOM);
}
