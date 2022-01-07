
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {unsigned char x_digest_len; scalar_t__* x_digest; } ;


 char* DIGEST ;
 int printf (char*,...) ;

__attribute__((used)) static void
show_digest(const struct executable *x)
{
 int i;

 printf("computed %s digest ", DIGEST);
 for (i = 0; i < (int)x->x_digest_len; i++)
  printf("%02x", (unsigned char)x->x_digest[i]);
 printf("; digest len %u\n", x->x_digest_len);
}
