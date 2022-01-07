
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct byte_pattern {int member_0; int member_1; int* member_2; int off; scalar_t__ len; int key; } ;
typedef int id1 ;
typedef int id0 ;


 int b0_ver ;
 int memcmp (int const*,int ,scalar_t__) ;

__attribute__((used)) static int
boot0bs(const u_int8_t *bs)
{

    static u_int8_t id0[] = {0xfc, 0x31, 0xc0, 0x8e, 0xc0, 0x8e, 0xd8,
        0x8e, 0xd0, 0xbc, 0x00, 0x7c };

    static u_int8_t id1[] = {'D', 'r', 'i', 'v', 'e', ' '};
    static struct byte_pattern patterns[] = {
        {0x0, sizeof(id0), id0},
        {0x1b2, sizeof(id1), id1},
        {1, 0, ((void*)0)},
        {0x0, sizeof(id0), id0},
        {0x1ae, sizeof(id1), id1},
        {2, 0, ((void*)0)},
        {0, 0, ((void*)0)},
    };
    struct byte_pattern *p = patterns;

    for (; p->off || p->len; p++) {
 if (p->len == 0)
     break;
 if (!memcmp(bs + p->off, p->key, p->len))
     continue;
 while (p->len)
     p++;
    }
    b0_ver = p->off;
    return p->off;
}
