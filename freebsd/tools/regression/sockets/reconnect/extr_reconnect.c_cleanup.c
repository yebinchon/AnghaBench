
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uds_name1 ;
 int uds_name2 ;
 int unlink (int ) ;

__attribute__((used)) static void
cleanup(void)
{

    unlink(uds_name1);
    unlink(uds_name2);
}
