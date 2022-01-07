
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_TYPE (int ) ;
 int int16_t ;
 int int32_t ;
 int int64_t ;
 int int8_t ;
 int uint16_t ;
 int uint32_t ;
 int uint64_t ;
 int uint8_t ;

int
main(void)
{
 int i;

 for (i = 0; i < 1000; i++) {
  TEST_TYPE(int8_t);
  TEST_TYPE(uint8_t);
  TEST_TYPE(int16_t);
  TEST_TYPE(uint16_t);
  TEST_TYPE(int32_t);
  TEST_TYPE(uint32_t);
  TEST_TYPE(int64_t);
  TEST_TYPE(uint64_t);
 }

 return (0);
}
