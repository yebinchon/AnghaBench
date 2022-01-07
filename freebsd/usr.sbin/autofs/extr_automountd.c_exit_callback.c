
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int done (int ,int) ;

__attribute__((used)) static void
exit_callback(void)
{

 done(EIO, 1);
}
