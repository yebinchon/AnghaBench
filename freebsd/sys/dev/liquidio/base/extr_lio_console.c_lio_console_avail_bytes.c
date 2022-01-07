
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int lio_console_free_bytes (int,int,int) ;

__attribute__((used)) static inline int
lio_console_avail_bytes(uint32_t buffer_size, uint32_t wr_idx, uint32_t rd_idx)
{

 if (rd_idx >= buffer_size || wr_idx >= buffer_size)
  return (-1);

 return (buffer_size - 1 -
  lio_console_free_bytes(buffer_size, wr_idx, rd_idx));
}
