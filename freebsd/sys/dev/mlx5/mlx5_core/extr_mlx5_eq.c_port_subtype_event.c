
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlx5_dev_event { ____Placeholder_mlx5_dev_event } mlx5_dev_event ;


 int MLX5_DEV_EVENT_CLIENT_REREG ;
 int MLX5_DEV_EVENT_GUID_CHANGE ;
 int MLX5_DEV_EVENT_LID_CHANGE ;
 int MLX5_DEV_EVENT_PKEY_CHANGE ;
 int MLX5_DEV_EVENT_PORT_DOWN ;
 int MLX5_DEV_EVENT_PORT_INITIALIZED ;
 int MLX5_DEV_EVENT_PORT_UP ;
__attribute__((used)) static enum mlx5_dev_event port_subtype_event(u8 subtype)
{
 switch (subtype) {
 case 132:
  return MLX5_DEV_EVENT_PORT_DOWN;
 case 134:
  return MLX5_DEV_EVENT_PORT_UP;
 case 130:
  return MLX5_DEV_EVENT_PORT_INITIALIZED;
 case 129:
  return MLX5_DEV_EVENT_LID_CHANGE;
 case 128:
  return MLX5_DEV_EVENT_PKEY_CHANGE;
 case 131:
  return MLX5_DEV_EVENT_GUID_CHANGE;
 case 133:
  return MLX5_DEV_EVENT_CLIENT_REREG;
 }
 return -1;
}
