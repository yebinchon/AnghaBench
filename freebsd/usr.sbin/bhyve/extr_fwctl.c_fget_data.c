
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 size_t fget_cnt ;
 int * fget_str ;

__attribute__((used)) static void
fget_data(uint32_t data, uint32_t len)
{

 *((uint32_t *) &fget_str[fget_cnt]) = data;
 fget_cnt += sizeof(uint32_t);
}
