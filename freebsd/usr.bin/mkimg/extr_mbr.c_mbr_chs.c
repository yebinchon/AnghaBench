
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int lba_t ;


 int mkimg_chs (int ,int,int*,int*,int*) ;

__attribute__((used)) static void
mbr_chs(u_char *cylp, u_char *hdp, u_char *secp, lba_t lba)
{
 u_int cyl, hd, sec;

 mkimg_chs(lba, 1023, &cyl, &hd, &sec);
 *cylp = cyl;
 *hdp = hd;
 *secp = (sec & 0x3f) | ((cyl >> 2) & 0xc0);
}
