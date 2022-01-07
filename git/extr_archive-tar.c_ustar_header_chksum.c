
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ustar_header {scalar_t__ chksum; } ;



__attribute__((used)) static unsigned int ustar_header_chksum(const struct ustar_header *header)
{
 const unsigned char *p = (const unsigned char *)header;
 unsigned int chksum = 0;
 while (p < (const unsigned char *)header->chksum)
  chksum += *p++;
 chksum += sizeof(header->chksum) * ' ';
 p += sizeof(header->chksum);
 while (p < (const unsigned char *)header + sizeof(struct ustar_header))
  chksum += *p++;
 return chksum;
}
