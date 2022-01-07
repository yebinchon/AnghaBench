
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int CIS_FEAT_MEMORY (int) ;




 int CIS_MEM_ADDRSZ (int) ;
 int CIS_MEM_HOST ;
 int CIS_MEM_LENSZ (int) ;
 int CIS_MEM_WINS (int) ;
 int print_num (int,char*,int*,int ) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int tpl16 (int*) ;

__attribute__((used)) static u_char *
print_mem_map(u_char feat, u_char *p, u_char *q)
{
 int i, j;
 u_char c;

 switch (CIS_FEAT_MEMORY(feat)) {

 case 129:
  break;
 case 130:
  if (q - p < 2)
   goto err;
  printf("\tMemory space length = 0x%x\n", tpl16(p));
  p += 2;
  break;
 case 131:
  if (q - p < 4)
   goto err;
  printf("\tMemory space address = 0x%x, length = 0x%x\n",
         tpl16(p + 2), tpl16(p));
  p += 4;
  break;
 case 128:
  if (q <= p)
   goto err;
  c = *p++;

  j = CIS_MEM_LENSZ(c) + CIS_MEM_ADDRSZ(c);
  if (c & CIS_MEM_HOST)
   j += CIS_MEM_ADDRSZ(c);

  for (i = 0; i < CIS_MEM_WINS(c); i++) {
   if (q - p < j)
    goto err;
   printf("\tMemory descriptor %d\n\t\t", i + 1);

   p += print_num(CIS_MEM_LENSZ(c) | 0x10,
           " blk length = 0x%x00", p, 0);

   p += print_num(CIS_MEM_ADDRSZ(c) | 0x10,
           " card addr = 0x%x00", p, 0);
   if (c & CIS_MEM_HOST)
    p += print_num(CIS_MEM_ADDRSZ(c) | 0x10,
            " host addr = 0x%x00", p, 0);
   putchar('\n');
  }
  break;
 }
 return p;

 err:
 printf("\tWrong length for memory mapping sub-tuple\n");
 return p;
}
