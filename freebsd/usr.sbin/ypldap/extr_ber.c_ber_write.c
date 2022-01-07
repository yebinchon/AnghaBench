
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber {scalar_t__ br_wptr; scalar_t__ br_wend; } ;


 int bcopy (void*,scalar_t__,size_t) ;

__attribute__((used)) static void
ber_write(struct ber *ber, void *buf, size_t len)
{
 if (ber->br_wptr + len <= ber->br_wend)
  bcopy(buf, ber->br_wptr, len);
 ber->br_wptr += len;
}
