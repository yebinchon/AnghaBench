
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int crc32_raw (void*,int ,int ) ;

__attribute__((used)) static int32_t
cdce_m_crc32_cb(void *arg, void *src, uint32_t count)
{
 uint32_t *p_crc = arg;

 *p_crc = crc32_raw(src, count, *p_crc);
 return (0);
}
