
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_disconnected ;

char *drm_get_connector_status_name(enum drm_connector_status status)
{
 if (status == connector_status_connected)
  return "connected";
 else if (status == connector_status_disconnected)
  return "disconnected";
 else
  return "unknown";
}
