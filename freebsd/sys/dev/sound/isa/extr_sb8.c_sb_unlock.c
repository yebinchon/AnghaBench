
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {int parent_dev; } ;


 int device_get_softc (int ) ;
 int sbc_unlock (int ) ;

__attribute__((used)) static void
sb_unlock(struct sb_info *sb) {

 sbc_unlock(device_get_softc(sb->parent_dev));
}
