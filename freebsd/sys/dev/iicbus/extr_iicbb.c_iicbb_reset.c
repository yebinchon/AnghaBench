
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int device_t ;


 int IICBB_RESET (int ,int ,int ,int *) ;
 int device_get_parent (int ) ;
 int device_get_softc (int ) ;
 int iicbb_set_speed (int ,int ) ;

__attribute__((used)) static int
iicbb_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 iicbb_set_speed(device_get_softc(dev), speed);
 return (IICBB_RESET(device_get_parent(dev), speed, addr, oldaddr));
}
