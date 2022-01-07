
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int command_buffer; } ;
typedef TYPE_1__ ips_user_request ;
typedef int ips_softc_t ;
struct TYPE_8__ {int readwrite; struct TYPE_8__* command_buffer; int datasize; } ;
typedef TYPE_2__ ips_ioctl_t ;
typedef int ips_generic_cmd ;
typedef int int32_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int IPS_IOCTL_BUFFER_SIZE ;
 int IPS_IOCTL_READ ;
 int IPS_IOCTL_WRITE ;

 int M_IPSBUF ;
 int M_WAITOK ;
 int copyin (int ,TYPE_2__*,int) ;
 int free (TYPE_2__*,int ) ;
 int ips_ioctl_cmd (int *,TYPE_2__*,TYPE_1__*) ;
 void* malloc (int,int ,int ) ;

int ips_ioctl_request(ips_softc_t *sc, u_long ioctl_request, caddr_t addr, int32_t flags){
 int error = EINVAL;
 ips_ioctl_t *ioctl_cmd;
 ips_user_request *user_request;
 switch(ioctl_request){
 case 128:
  user_request = (ips_user_request *)addr;
  ioctl_cmd = malloc(sizeof(ips_ioctl_t), M_IPSBUF, M_WAITOK);
  ioctl_cmd->command_buffer = malloc(sizeof(ips_generic_cmd),
      M_IPSBUF, M_WAITOK);
  if(copyin(user_request->command_buffer,
      ioctl_cmd->command_buffer, sizeof(ips_generic_cmd))){
   free(ioctl_cmd->command_buffer, M_IPSBUF);
   free(ioctl_cmd, M_IPSBUF);
   break;
  }
  ioctl_cmd->readwrite = IPS_IOCTL_READ | IPS_IOCTL_WRITE;
  ioctl_cmd->datasize = IPS_IOCTL_BUFFER_SIZE;
  error = ips_ioctl_cmd(sc, ioctl_cmd, user_request);
  free(ioctl_cmd->command_buffer, M_IPSBUF);
  free(ioctl_cmd, M_IPSBUF);
  break;
 }

 return error;
}
