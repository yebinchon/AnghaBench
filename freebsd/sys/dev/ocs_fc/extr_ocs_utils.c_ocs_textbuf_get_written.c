
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int ocs_textbuf_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ ocs_textbuf_ext_get_written (int *,scalar_t__) ;

int32_t
ocs_textbuf_get_written(ocs_textbuf_t *textbuf)
{
 uint32_t idx;
 int32_t n;
 int32_t total = 0;

 for (idx = 0; (n = ocs_textbuf_ext_get_written(textbuf, idx)) >= 0; idx++) {
  total += n;
 }
 return total;
}
