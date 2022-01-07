
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int errx (int,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
baduser(void)
{

 errx(1, "%s", strerror(EACCES));
}
