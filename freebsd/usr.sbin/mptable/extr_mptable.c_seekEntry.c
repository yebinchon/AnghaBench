
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int off_t ;


 int SEEK_SET ;
 int _PATH_MEM ;
 int err (int,char*,int ) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int pfd ;

__attribute__((used)) static void
seekEntry( u_int32_t addr )
{
    if ( lseek( pfd, (off_t)addr, SEEK_SET ) < 0 )
        err( 1, "%s seek", _PATH_MEM );
}
