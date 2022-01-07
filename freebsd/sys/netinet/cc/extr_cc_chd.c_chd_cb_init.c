
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chd {scalar_t__ shadow_w; } ;
struct cc_var {struct chd* cc_data; } ;


 int ENOMEM ;
 int M_CHD ;
 int M_NOWAIT ;
 struct chd* malloc (int,int ,int ) ;

__attribute__((used)) static int
chd_cb_init(struct cc_var *ccv)
{
 struct chd *chd_data;

 chd_data = malloc(sizeof(struct chd), M_CHD, M_NOWAIT);
 if (chd_data == ((void*)0))
  return (ENOMEM);

 chd_data->shadow_w = 0;
 ccv->cc_data = chd_data;

 return (0);
}
