
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vegas {int slow_start_toggle; } ;
struct cc_var {struct vegas* cc_data; } ;


 int ENOMEM ;
 int M_NOWAIT ;
 int M_VEGAS ;
 struct vegas* malloc (int,int ,int ) ;

__attribute__((used)) static int
vegas_cb_init(struct cc_var *ccv)
{
 struct vegas *vegas_data;

 vegas_data = malloc(sizeof(struct vegas), M_VEGAS, M_NOWAIT);

 if (vegas_data == ((void*)0))
  return (ENOMEM);

 vegas_data->slow_start_toggle = 1;
 ccv->cc_data = vegas_data;

 return (0);
}
