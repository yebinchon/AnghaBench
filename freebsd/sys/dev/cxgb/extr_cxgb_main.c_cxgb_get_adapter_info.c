
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgb_ident {int index; } ;
struct adapter_info {int dummy; } ;
typedef int device_t ;


 struct cxgb_ident* cxgb_get_ident (int ) ;
 struct adapter_info* t3_get_adapter_info (int ) ;

__attribute__((used)) static const struct adapter_info *
cxgb_get_adapter_info(device_t dev)
{
 struct cxgb_ident *id;
 const struct adapter_info *ai;

 id = cxgb_get_ident(dev);
 if (id == ((void*)0))
  return (((void*)0));

 ai = t3_get_adapter_info(id->index);

 return (ai);
}
