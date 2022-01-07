
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int quad_t ;


 scalar_t__ DOSPARTOFF ;
 int DOSPARTSIZE ;
 int EINVAL ;
 int UINT32_MAX ;
 int le32enc (int*,int ) ;

__attribute__((used)) static int
gpt_write_mbr_entry(u_char *mbr, int idx, int typ, quad_t start,
    quad_t end)
{

 if (typ == 0 || start > UINT32_MAX || end > UINT32_MAX)
  return (EINVAL);

 mbr += DOSPARTOFF + idx * DOSPARTSIZE;
 mbr[0] = 0;
 if (start == 1) {




  mbr[1] = mbr[3] = 0;
  mbr[2] = 2;
 } else
  mbr[1] = mbr[2] = mbr[3] = 0xff;
 mbr[4] = typ;
 mbr[5] = mbr[6] = mbr[7] = 0xff;
 le32enc(mbr + 8, (uint32_t)start);
 le32enc(mbr + 12, (uint32_t)(end - start + 1));
 return (0);
}
