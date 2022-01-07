
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
amr_ioctl_buffer_length(unsigned long len)
{

    if (len <= 4 * 1024)
 return (4 * 1024);
    if (len <= 8 * 1024)
 return (8 * 1024);
    if (len <= 32 * 1024)
 return (32 * 1024);
    if (len <= 64 * 1024)
 return (64 * 1024);
    return (len);
}
