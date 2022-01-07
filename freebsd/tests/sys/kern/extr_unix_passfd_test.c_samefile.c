
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 int ATF_REQUIRE_MSG (int,char*) ;

__attribute__((used)) static void
samefile(struct stat *sb1, struct stat *sb2)
{

 ATF_REQUIRE_MSG(sb1->st_dev == sb2->st_dev, "different device");
 ATF_REQUIRE_MSG(sb1->st_ino == sb2->st_ino, "different inode");
}
