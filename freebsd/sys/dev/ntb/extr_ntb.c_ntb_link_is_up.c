
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef int device_t ;


 int NTB_LINK_IS_UP (int ,int*,int*) ;
 int device_get_parent (int ) ;

bool
ntb_link_is_up(device_t ntb, enum ntb_speed *speed, enum ntb_width *width)
{

 return (NTB_LINK_IS_UP(device_get_parent(ntb), speed, width));
}
