
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long strtoq (char const*,char**,int ) ;

__attribute__((used)) static long
dehumanize(const char *value)
{
        char *vtp;
        long iv;

        if (value == ((void*)0))
                return (0);
        iv = strtoq(value, &vtp, 0);
        if (vtp == value || (vtp[0] != '\0' && vtp[1] != '\0')) {
                return (0);
        }
        switch (vtp[0]) {
        case 't': case 'T':
                iv *= 1024;
        case 'g': case 'G':
                iv *= 1024;
        case 'm': case 'M':
                iv *= 1024;
        case 'k': case 'K':
                iv *= 1024;
        case '\0':
                break;
        default:
                return (0);
        }
        return (iv);
}
