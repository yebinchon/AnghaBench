
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_tx_header {int dummy; } ;
typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;




 int * uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zdestroy (int *) ;
 int uma_zone_get_cur (int *) ;
 int * vtnet_tx_header_zone ;

__attribute__((used)) static int
vtnet_modevent(module_t mod, int type, void *unused)
{
 int error = 0;
 static int loaded = 0;

 switch (type) {
 case 131:
  if (loaded++ == 0)
   vtnet_tx_header_zone = uma_zcreate("vtnet_tx_hdr",
    sizeof(struct vtnet_tx_header),
    ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0);
  break;
 case 130:
  if (uma_zone_get_cur(vtnet_tx_header_zone) > 0)
   error = EBUSY;
  break;
 case 128:
  if (--loaded == 0) {
   uma_zdestroy(vtnet_tx_header_zone);
   vtnet_tx_header_zone = ((void*)0);
  }
  break;
 case 129:
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
