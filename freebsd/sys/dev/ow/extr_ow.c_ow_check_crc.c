
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int romid_t ;
typedef int romid ;


 scalar_t__ ow_crc (int *,int *,int *,int) ;

__attribute__((used)) static int
ow_check_crc(romid_t romid)
{
 return ow_crc(((void*)0), ((void*)0), (uint8_t *)&romid, sizeof(romid)) == 0;
}
