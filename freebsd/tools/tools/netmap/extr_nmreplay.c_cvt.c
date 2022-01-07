
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EEE (char*,int) ;
 int exit (int) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static uint32_t
cvt(const void *src, int size, char swap)
{
    uint32_t ret = 0;
    if (size != 2 && size != 4) {
 EEE("Invalid size %d\n", size);
 exit(1);
    }
    memcpy(&ret, src, size);
    if (swap) {
 unsigned char tmp, *data = (unsigned char *)&ret;
 int i;
        for (i = 0; i < size / 2; i++) {
            tmp = data[i];
            data[i] = data[size - (1 + i)];
            data[size - (1 + i)] = tmp;
        }
    }
    return ret;
}
