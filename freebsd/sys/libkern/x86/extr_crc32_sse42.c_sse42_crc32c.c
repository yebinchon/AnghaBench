
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int LONG ;
 int SHORT ;
 int _mm_crc32_u32 (int,int const) ;
 int _mm_crc32_u64 (int,int const) ;
 int _mm_crc32_u8 (int,unsigned char const) ;
 int crc32c_2long ;
 int crc32c_2short ;
 int crc32c_long ;
 int crc32c_shift (int ,int) ;
 int crc32c_short ;

uint32_t
sse42_crc32c(uint32_t crc, const unsigned char *buf, unsigned len)
{

 const size_t align = 8;



 const unsigned char *next, *end;

 uint64_t crc0, crc1, crc2;




 next = buf;
 crc0 = crc;


 while (len && ((uintptr_t)next & (align - 1)) != 0) {
  crc0 = _mm_crc32_u8(crc0, *next);
  next++;
  len--;
 }
 crc = 0;
 while (len >= SHORT * 3) {
  crc1 = 0;
  crc2 = 0;
  end = next + SHORT;
  do {

   crc0 = _mm_crc32_u64(crc0, *(const uint64_t *)next);
   crc1 = _mm_crc32_u64(crc1,
       *(const uint64_t *)(next + SHORT));
   crc2 = _mm_crc32_u64(crc2,
       *(const uint64_t *)(next + (SHORT * 2)));







   next += align;
  } while (next < end);
  crc = crc32c_shift(crc32c_short, crc) ^ crc0;
  crc1 = crc32c_shift(crc32c_short, crc1);
  crc = crc32c_shift(crc32c_2short, crc) ^ crc1;
  crc0 = crc2;
  next += SHORT * 2;
  len -= SHORT * 3;
 }
 crc0 ^= crc;


 end = next + (len - (len & (align - 1)));
 while (next < end) {

  crc0 = _mm_crc32_u64(crc0, *(const uint64_t *)next);



  next += align;
 }
 len &= (align - 1);


 while (len) {
  crc0 = _mm_crc32_u8(crc0, *next);
  next++;
  len--;
 }

 return ((uint32_t)crc0);
}
