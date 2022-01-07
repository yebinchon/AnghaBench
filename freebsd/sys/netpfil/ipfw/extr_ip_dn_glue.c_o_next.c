
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void dn_id ;


 void* O_NEXT (void*,int) ;
 int oid_fill (void*,int,int,int ) ;

__attribute__((used)) static void *
o_next(struct dn_id **o, int len, int type)
{
 struct dn_id *ret = *o;
 oid_fill(ret, len, type, 0);
 *o = O_NEXT(*o, len);
 return ret;
}
