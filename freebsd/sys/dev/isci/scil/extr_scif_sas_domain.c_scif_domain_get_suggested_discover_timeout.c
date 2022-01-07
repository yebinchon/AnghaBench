
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCI_DOMAIN_HANDLE_T ;


 int SCIF_DOMAIN_DISCOVER_TIMEOUT ;

U32 scif_domain_get_suggested_discover_timeout(
   SCI_DOMAIN_HANDLE_T domain
)
{
   U32 suggested_timeout = SCIF_DOMAIN_DISCOVER_TIMEOUT;
   return suggested_timeout;
}
