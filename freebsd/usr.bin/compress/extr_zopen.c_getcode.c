
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_zstate {int dummy; } ;
typedef int code_int ;
typedef int char_type ;


 int INIT_BITS ;
 scalar_t__ MAXCODE (int) ;
 scalar_t__ clear_flg ;
 int fp ;
 int fread (int*,int,int,int ) ;
 scalar_t__ free_ent ;
 int* gbuf ;
 int maxbits ;
 scalar_t__ maxcode ;
 scalar_t__ maxmaxcode ;
 int n_bits ;
 int* rmask ;
 int roffset ;
 int size ;

__attribute__((used)) static code_int
getcode(struct s_zstate *zs)
{
 code_int gcode;
 int r_off, bits;
 char_type *bp;

 bp = gbuf;
 if (clear_flg > 0 || roffset >= size || free_ent > maxcode) {





  if (free_ent > maxcode) {
   n_bits++;
   if (n_bits == maxbits)
    maxcode = maxmaxcode;
   else
    maxcode = MAXCODE(n_bits);
  }
  if (clear_flg > 0) {
   maxcode = MAXCODE(n_bits = INIT_BITS);
   clear_flg = 0;
  }
  size = fread(gbuf, 1, n_bits, fp);
  if (size <= 0)
   return (-1);
  roffset = 0;

  size = (size << 3) - (n_bits - 1);
 }
 r_off = roffset;
 bits = n_bits;


 bp += (r_off >> 3);
 r_off &= 7;


 gcode = (*bp++ >> r_off);
 bits -= (8 - r_off);
 r_off = 8 - r_off;


 if (bits >= 8) {
  gcode |= *bp++ << r_off;
  r_off += 8;
  bits -= 8;
 }


 gcode |= (*bp & rmask[bits]) << r_off;
 roffset += n_bits;

 return (gcode);
}
