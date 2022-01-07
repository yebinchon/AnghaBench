
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BSDAR_VERSION ;
 int EX_OK ;
 char* archive_version_string () ;
 int exit (int ) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static void
bsdar_version(void)
{
 (void)printf("BSD ar %s - %s\n", BSDAR_VERSION, archive_version_string());
 exit(EX_OK);
}
