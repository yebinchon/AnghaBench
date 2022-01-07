
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct krb5_data {size_t kd_length; int kd_data; } ;


 int M_GSSAPI ;
 int M_WAITOK ;
 int bcopy (int const*,int ,size_t) ;
 size_t get_uint32 (int const**,size_t*) ;
 int malloc (size_t,int ,int ) ;

__attribute__((used)) static void
get_data(const uint8_t **pp, size_t *lenp, struct krb5_data *dp)
{
 size_t sz = get_uint32(pp, lenp);

 dp->kd_length = sz;
 dp->kd_data = malloc(sz, M_GSSAPI, M_WAITOK);

 if (*lenp < sz)
  sz = *lenp;
 bcopy(*pp, dp->kd_data, sz);
 (*pp) += sz;
 (*lenp) -= sz;
}
