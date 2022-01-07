
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocap {int * cc_dev; } ;
typedef int * device_t ;


 struct cryptocap* crypto_checkdriver (int) ;

device_t
crypto_find_device_byhid(int hid)
{
 struct cryptocap *cap = crypto_checkdriver(hid);
 return cap != ((void*)0) ? cap->cc_dev : ((void*)0);
}
