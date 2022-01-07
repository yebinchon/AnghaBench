
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cubic {int max_cwnd; } ;
struct cc_var {struct cubic* cc_data; } ;


 int CCV (struct cc_var*,int ) ;
 int snd_cwnd ;

__attribute__((used)) static void
cubic_conn_init(struct cc_var *ccv)
{
 struct cubic *cubic_data;

 cubic_data = ccv->cc_data;






 cubic_data->max_cwnd = CCV(ccv, snd_cwnd);
}
