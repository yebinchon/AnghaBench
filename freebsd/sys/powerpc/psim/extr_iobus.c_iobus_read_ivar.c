
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iobus_devinfo {uintptr_t id_node; uintptr_t id_nregs; int id_reg; int id_name; } ;
typedef int device_t ;


 int ENOENT ;




 struct iobus_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
iobus_read_ivar(device_t dev, device_t child, int which, uintptr_t *result)
{
        struct iobus_devinfo *dinfo;

        if ((dinfo = device_get_ivars(child)) == ((void*)0))
                return (ENOENT);

        switch (which) {
        case 130:
                *result = dinfo->id_node;
                break;
        case 131:
                *result = (uintptr_t)dinfo->id_name;
                break;
 case 129:
  *result = dinfo->id_nregs;
  break;
 case 128:
  *result = (uintptr_t)dinfo->id_reg;
  break;
        default:
                return (ENOENT);
        }

        return (0);
}
