
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_icm {int dummy; } ;
struct mthca_dev {int dummy; } ;


 int CMD_MAP_ICM_AUX ;
 int mthca_map_cmd (struct mthca_dev*,int ,struct mthca_icm*,int) ;

int mthca_MAP_ICM_AUX(struct mthca_dev *dev, struct mthca_icm *icm)
{
 return mthca_map_cmd(dev, CMD_MAP_ICM_AUX, icm, -1);
}
