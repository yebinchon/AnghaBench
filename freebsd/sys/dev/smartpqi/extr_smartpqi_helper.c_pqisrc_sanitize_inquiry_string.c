
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int DBG_FUNC (char*) ;

void pqisrc_sanitize_inquiry_string(unsigned char *s, int len)
{
 boolean_t terminated = 0;

 DBG_FUNC("IN\n");

 for (; len > 0; (--len, ++s)) {
  if (*s == 0)
   terminated = 1;
  if (terminated || *s < 0x20 || *s > 0x7e)
   *s = ' ';
 }

 DBG_FUNC("OUT\n");
}
