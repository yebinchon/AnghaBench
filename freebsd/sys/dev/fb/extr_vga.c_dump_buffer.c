
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int printf (char*,...) ;

__attribute__((used)) static void
dump_buffer(u_char *buf, size_t len)
{
    int i;

    for(i = 0; i < len;) {
 printf("%02x ", buf[i]);
 if ((++i % 16) == 0)
     printf("\n");
    }
}
