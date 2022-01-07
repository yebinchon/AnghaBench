
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int dummy; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef int device_t ;


 int amd_link_is_up (struct amd_ntb_softc*) ;
 int amd_ntb_link_sta_speed (struct amd_ntb_softc*) ;
 int amd_ntb_link_sta_width (struct amd_ntb_softc*) ;
 struct amd_ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static bool
amd_ntb_link_is_up(device_t dev, enum ntb_speed *speed, enum ntb_width *width)
{
 struct amd_ntb_softc *ntb = device_get_softc(dev);

 if (speed != ((void*)0))
  *speed = amd_ntb_link_sta_speed(ntb);
 if (width != ((void*)0))
  *width = amd_ntb_link_sta_width(ntb);

 return (amd_link_is_up(ntb));
}
