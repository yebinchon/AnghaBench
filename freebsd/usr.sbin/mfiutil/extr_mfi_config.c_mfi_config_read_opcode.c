
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mfi_config_data {int size; } ;


 int errno ;
 int free (struct mfi_config_data*) ;
 scalar_t__ mfi_dcmd_command (int,int,struct mfi_config_data*,int,int *,size_t,int *) ;
 struct mfi_config_data* reallocf (struct mfi_config_data*,int) ;

int
mfi_config_read_opcode(int fd, uint32_t opcode, struct mfi_config_data **configp,
 uint8_t *mbox, size_t mboxlen)
{
 struct mfi_config_data *config;
 uint32_t config_size;
 int error;





 config = ((void*)0);
 config_size = 1024;
fetch:
 config = reallocf(config, config_size);
 if (config == ((void*)0))
  return (-1);
 if (mfi_dcmd_command(fd, opcode, config,
     config_size, mbox, mboxlen, ((void*)0)) < 0) {
  error = errno;
  free(config);
  errno = error;
  return (-1);
 }

 if (config->size > config_size) {
  config_size = config->size;
  goto fetch;
 }

 *configp = config;
 return (0);
}
