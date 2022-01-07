
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __GL_TLS_GET (int) ;
 int printf (char*,int ) ;

void __gl_tls_test(void)
{
    printf("__GL_TLS_GET(0) = %p\n", __GL_TLS_GET(0));
    printf("__GL_TLS_GET(1) = %p\n", __GL_TLS_GET(1));
    printf("__GL_TLS_GET(2) = %p\n", __GL_TLS_GET(2));
    printf("__GL_TLS_GET(3) = %p\n", __GL_TLS_GET(3));
    printf("__GL_TLS_GET(4) = %p\n", __GL_TLS_GET(4));
    printf("__GL_TLS_GET(5) = %p\n", __GL_TLS_GET(5));
    printf("__GL_TLS_GET(6) = %p\n", __GL_TLS_GET(6));
    printf("__GL_TLS_GET(7) = %p\n", __GL_TLS_GET(7));
}
