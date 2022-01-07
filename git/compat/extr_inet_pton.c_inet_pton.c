
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAFNOSUPPORT ;
 int errno ;
 int inet_pton4 (char const*,void*) ;
 int inet_pton6 (char const*,void*) ;

int
inet_pton(int af, const char *src, void *dst)
{
        switch (af) {
        case 129:
                return (inet_pton4(src, dst));

        case 128:
                return (inet_pton6(src, dst));

        default:
                errno = EAFNOSUPPORT;
                return (-1);
        }

}
