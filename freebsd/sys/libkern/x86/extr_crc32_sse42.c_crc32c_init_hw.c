
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LONG ;
 int SHORT ;
 int crc32c_2long ;
 int crc32c_2short ;
 int crc32c_long ;
 int crc32c_short ;
 int crc32c_zeros (int ,int) ;

__attribute__((used)) static void

__attribute__((__constructor__))

crc32c_init_hw(void)
{
 crc32c_zeros(crc32c_long, LONG);
 crc32c_zeros(crc32c_2long, 2 * LONG);
 crc32c_zeros(crc32c_short, SHORT);
 crc32c_zeros(crc32c_2short, 2 * SHORT);
}
