
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_data {int dummy; } ;


 int M_TEMP ;
 int free (struct hid_data*,int ) ;

void
hid_end_parse(struct hid_data *s)
{
 if (s == ((void*)0))
  return;

 free(s, M_TEMP);
}
