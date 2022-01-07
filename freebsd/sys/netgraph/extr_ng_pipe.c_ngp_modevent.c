
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngp_hdr {int dummy; } ;
struct ngp_fifo {int dummy; } ;
typedef int module_t ;


 int EOPNOTSUPP ;


 int UMA_ALIGN_PTR ;
 int max (int,int) ;
 int * ngp_zone ;
 int panic (char*) ;
 int * uma_zcreate (char*,int ,int *,int *,int *,int *,int ,int ) ;
 int uma_zdestroy (int *) ;

__attribute__((used)) static int
ngp_modevent(module_t mod, int type, void *unused)
{
 int error = 0;

 switch (type) {
 case 129:
  ngp_zone = uma_zcreate("ng_pipe", max(sizeof(struct ngp_hdr),
      sizeof (struct ngp_fifo)), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
      UMA_ALIGN_PTR, 0);
  if (ngp_zone == ((void*)0))
   panic("ng_pipe: couldn't allocate descriptor zone");
  break;
 case 128:
  uma_zdestroy(ngp_zone);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
