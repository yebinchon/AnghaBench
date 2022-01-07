
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_board_info {int dummy; } ;
typedef int device_t ;


 int BHND_BUS_READ_BOARD_INFO (int ,int ,struct bhnd_board_info*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_read_board_info(device_t dev, struct bhnd_board_info *info)
{
 return (BHND_BUS_READ_BOARD_INFO(device_get_parent(dev), dev, info));
}
