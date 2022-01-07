
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct cmng_init_input {int port_rate; int flags; } ;
struct TYPE_2__ {int flags; } ;
struct cmng_init {TYPE_1__ port; } ;


 int BITS_TO_BYTES (int ) ;
 int ECORE_MEMSET (struct cmng_init*,int ,int) ;
 int ecore_init_fw_wrr (struct cmng_init_input const*,int ,struct cmng_init*) ;
 int ecore_init_max (struct cmng_init_input const*,int ,struct cmng_init*) ;
 int ecore_init_min (struct cmng_init_input const*,int ,struct cmng_init*) ;
 int ecore_init_safc (struct cmng_init_input const*,struct cmng_init*) ;

__attribute__((used)) static inline void ecore_init_cmng(const struct cmng_init_input *input_data,
       struct cmng_init *ram_data)
{
 uint32_t r_param;
 ECORE_MEMSET(ram_data, 0,sizeof(struct cmng_init));

 ram_data->port.flags = input_data->flags;





 r_param = BITS_TO_BYTES(input_data->port_rate);
 ecore_init_max(input_data, r_param, ram_data);
 ecore_init_min(input_data, r_param, ram_data);
 ecore_init_fw_wrr(input_data, r_param, ram_data);
 ecore_init_safc(input_data, ram_data);
}
