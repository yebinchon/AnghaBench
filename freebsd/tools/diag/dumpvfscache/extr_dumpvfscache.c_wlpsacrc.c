
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;


 int* crc16_table ;

__attribute__((used)) static u_short
wlpsacrc(u_char *buf, u_int len)
{
    u_short crc = 0;
    int i, r1;

    for (i = 0; i < len; i++, buf++) {

        r1 = crc16_table[crc & 0xF];
        crc = (crc >> 4) & 0x0FFF;
        crc = crc ^ r1 ^ crc16_table[*buf & 0xF];


        r1 = crc16_table[crc & 0xF];
        crc = (crc >> 4) & 0x0FFF;
        crc = crc ^ r1 ^ crc16_table[(*buf >> 4) & 0xF];
    }
    return(crc);
}
