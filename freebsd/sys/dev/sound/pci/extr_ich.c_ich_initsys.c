
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int ac97rate; int dev; } ;


 int CTLFLAG_RW ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int ,int ,int ,char*,int ,int *,int,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static int
ich_initsys(struct sc_info* sc)
{



 SYSCTL_ADD_INT(device_get_sysctl_ctx(sc->dev),
         SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)),
         OID_AUTO, "ac97rate", CTLFLAG_RW,
         &sc->ac97rate, 48000,
         "AC97 link rate (default = 48000)");

 return (0);
}
