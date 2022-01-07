
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int device_t ;
typedef int bhnd_port_type ;


 int BHND_BUS_DECODE_PORT_RID (int ,int ,int,int,int *,int *,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_decode_port_rid(device_t dev, int type, int rid, bhnd_port_type *port_type,
    u_int *port, u_int *region)
{
 return BHND_BUS_DECODE_PORT_RID(device_get_parent(dev), dev, type, rid,
     port_type, port, region);
}
