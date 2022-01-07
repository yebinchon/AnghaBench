
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ timeout; int sc; } ;
typedef TYPE_1__ ips_command_t ;


 int DELAY (int) ;
 scalar_t__ ips_morpheus_check_intr (int ) ;
 scalar_t__ time_second ;

void ips_morpheus_poll(ips_command_t *command)
{
 uint32_t ts;





 ts = time_second + command->timeout;
 while ((command->timeout != 0)
  && (ips_morpheus_check_intr(command->sc) == 0)
  && (ts > time_second))
  DELAY(1000);
}
