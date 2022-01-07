
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mlx5_dev_event { ____Placeholder_mlx5_dev_event } mlx5_dev_event ;






 int MLX5_DEV_EVENT_ERROR_STATE_DCBX ;
 int MLX5_DEV_EVENT_LOCAL_OPER_CHANGE ;
 int MLX5_DEV_EVENT_REMOTE_CONFIG_APPLICATION_PRIORITY_CHANGE ;
 int MLX5_DEV_EVENT_REMOTE_CONFIG_CHANGE ;

__attribute__((used)) static enum mlx5_dev_event dcbx_subevent(u8 subtype)
{
 switch (subtype) {
 case 131:
  return MLX5_DEV_EVENT_ERROR_STATE_DCBX;
 case 128:
  return MLX5_DEV_EVENT_REMOTE_CONFIG_CHANGE;
 case 130:
  return MLX5_DEV_EVENT_LOCAL_OPER_CHANGE;
 case 129:
  return MLX5_DEV_EVENT_REMOTE_CONFIG_APPLICATION_PRIORITY_CHANGE;
 }
 return -1;
}
