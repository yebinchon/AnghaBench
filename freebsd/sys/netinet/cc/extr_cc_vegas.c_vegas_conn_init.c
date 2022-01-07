
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vegas {int slow_start_toggle; } ;
struct cc_var {struct vegas* cc_data; } ;



__attribute__((used)) static void
vegas_conn_init(struct cc_var *ccv)
{
 struct vegas *vegas_data;

 vegas_data = ccv->cc_data;
 vegas_data->slow_start_toggle = 1;
}
