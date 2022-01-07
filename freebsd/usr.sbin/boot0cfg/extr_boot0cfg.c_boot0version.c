
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int OFF_VERSION ;
 int boot0bs (int const*) ;

__attribute__((used)) static int
boot0version(const u_int8_t *bs)
{

    int v = boot0bs(bs);
    if (v != 0)
        return v << 8;


    return *(const int *)(bs + OFF_VERSION) & 0xffff;
}
