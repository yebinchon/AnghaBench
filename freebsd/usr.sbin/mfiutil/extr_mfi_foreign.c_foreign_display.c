
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFI_DCMD_CFG_FOREIGN_DISPLAY ;
 int display_format (int,char**,int,int ) ;

__attribute__((used)) static int
foreign_display(int ac, char **av)
{
 return(display_format(ac, av, 1 , MFI_DCMD_CFG_FOREIGN_DISPLAY));
}
