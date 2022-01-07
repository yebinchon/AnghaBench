
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmng_init_input {int dummy; } ;
struct TYPE_3__ {int safc_timeout_usec; } ;
struct TYPE_4__ {TYPE_1__ safc_vars; } ;
struct cmng_init {TYPE_2__ port; } ;


 int SAFC_TIMEOUT_USEC ;

__attribute__((used)) static inline void ecore_init_safc(const struct cmng_init_input *input_data,
       struct cmng_init *ram_data)
{

 ram_data->port.safc_vars.safc_timeout_usec = SAFC_TIMEOUT_USEC;
}
