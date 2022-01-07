
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_board_info {int dummy; } ;
typedef int device_t ;


 int BHNDB_POPULATE_BOARD_INFO (int ,int ,struct bhnd_board_info*) ;
 int bhnd_bus_generic_read_board_info (int ,int ,struct bhnd_board_info*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
bhnd_bhndb_read_board_info(device_t dev, device_t child,
    struct bhnd_board_info *info)
{
 int error;


 if ((error = bhnd_bus_generic_read_board_info(dev, child, info)))
  return (error);


 return (BHNDB_POPULATE_BOARD_INFO(device_get_parent(dev), dev, info));
}
