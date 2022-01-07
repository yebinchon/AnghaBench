
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef int device_t ;


 int PCIEM_LINK_STA_SPEED ;
 int PCIEM_LINK_STA_WIDTH ;
 int PCIER_LINK_STA ;
 int pcie_read_config (int ,int ,int) ;

__attribute__((used)) static bool
ntb_plx_link_is_up(device_t dev, enum ntb_speed *speed, enum ntb_width *width)
{
 uint16_t link;

 link = pcie_read_config(dev, PCIER_LINK_STA, 2);
 if (speed != ((void*)0))
  *speed = (link & PCIEM_LINK_STA_SPEED);
 if (width != ((void*)0))
  *width = (link & PCIEM_LINK_STA_WIDTH) >> 4;
 return ((link & PCIEM_LINK_STA_WIDTH) != 0);
}
