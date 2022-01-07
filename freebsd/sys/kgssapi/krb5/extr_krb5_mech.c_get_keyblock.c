
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct krb5_keyblock {int kk_key; int kk_type; } ;


 int get_data (int const**,size_t*,int *) ;
 int get_uint16 (int const**,size_t*) ;

__attribute__((used)) static void
get_keyblock(const uint8_t **pp, size_t *lenp, struct krb5_keyblock *kk)
{

 kk->kk_type = get_uint16(pp, lenp);
 get_data(pp, lenp, &kk->kk_key);
}
