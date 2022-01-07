
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint8_t ;
struct ber_element {int be_encoding; int be_len; struct ber_element* be_next; struct ber_element* be_sub; int be_val; scalar_t__ be_numeric; } ;
struct ber {int dummy; } ;
 int ber_dump_header (struct ber*,struct ber_element*) ;
 int ber_putc (struct ber*,unsigned long long) ;
 int ber_write (struct ber*,int ,int) ;

__attribute__((used)) static int
ber_dump_element(struct ber *ber, struct ber_element *root)
{
 unsigned long long l;
 int i;
 uint8_t u;

 ber_dump_header(ber, root);

 switch (root->be_encoding) {
 case 136:
 case 133:
 case 135:
  l = (unsigned long long)root->be_numeric;
  for (i = root->be_len; i > 0; i--) {
   u = (l >> ((i - 1) * 8)) & 0xff;
   ber_putc(ber, u);
  }
  break;
 case 137:
  return -1;
 case 130:
 case 131:
  ber_write(ber, root->be_val, root->be_len);
  break;
 case 132:
 case 134:
  break;
 case 129:
 case 128:
  if (root->be_sub && ber_dump_element(ber, root->be_sub) == -1)
   return -1;
  break;
 }

 if (root->be_next == ((void*)0))
  return 0;
 return ber_dump_element(ber, root->be_next);
}
