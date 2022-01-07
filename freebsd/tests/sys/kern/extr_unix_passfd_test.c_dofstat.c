
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int strerror (int ) ;

__attribute__((used)) static void
dofstat(int fd, struct stat *sb)
{

 ATF_REQUIRE_MSG(fstat(fd, sb) == 0,
     "fstat failed: %s", strerror(errno));
}
