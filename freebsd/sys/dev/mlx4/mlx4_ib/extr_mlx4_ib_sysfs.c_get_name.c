
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_ib_dev {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* persist; } ;
struct TYPE_3__ {int pdev; } ;


 int pci_name (int ) ;
 int sprintf (char*,char*,char*,int,int) ;
 int strlcpy (char*,int ,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void get_name(struct mlx4_ib_dev *dev, char *name, int i, int max)
{
 char base_name[9];


 strlcpy(name, pci_name(dev->dev->persist->pdev), max);
 strncpy(base_name, name, 8);
 base_name[8] = '\0';



 sprintf(name, "%s%.2d.%d", base_name, (i/8), (i%8));
}
