
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bge_vendor {scalar_t__ v_id; int * v_name; } ;


 struct bge_vendor* bge_vendors ;

__attribute__((used)) static const struct bge_vendor *
bge_lookup_vendor(uint16_t vid)
{
 const struct bge_vendor *v;

 for (v = bge_vendors; v->v_name != ((void*)0); v++)
  if (v->v_id == vid)
   return (v);

 return (((void*)0));
}
