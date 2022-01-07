
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;
typedef int bhnd_port_type ;


 int BHND_BUS_GET_PORT_COUNT (int ,int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline u_int
bhnd_get_port_count(device_t dev, bhnd_port_type type) {
 return (BHND_BUS_GET_PORT_COUNT(device_get_parent(dev), dev, type));
}
