
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_cmd {int dummy; } ;
typedef int device_t ;


 int CONVERT_T ;
 int own_command_wait (int ,struct ow_cmd*) ;
 int own_self_command (int ,struct ow_cmd*,int ) ;

__attribute__((used)) static int
ow_temp_convert_t(device_t dev)
{
 struct ow_cmd cmd;

 own_self_command(dev, &cmd, CONVERT_T);
 own_command_wait(dev, &cmd);

 return 0;
}
