
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int channel_t ;


 int channel_close (int *) ;
 int log_err (char*,int ) ;

__attribute__((used)) static size_t
bnep_recv_control_command_not_understood(channel_t *chan, uint8_t *ptr, size_t size)
{
 uint8_t type;

 if (size < 1)
  return 0;

 type = *ptr++;
 log_err("received Control Command Not Understood (0x%2.2x)", type);


 channel_close(chan);

 return 1;
}
