
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_data {int * kd_data; scalar_t__ kd_length; } ;


 int M_GSSAPI ;
 int free (int *,int ) ;

__attribute__((used)) static void
delete_data(struct krb5_data *dp)
{
 if (dp->kd_data) {
  free(dp->kd_data, M_GSSAPI);
  dp->kd_length = 0;
  dp->kd_data = ((void*)0);
 }
}
