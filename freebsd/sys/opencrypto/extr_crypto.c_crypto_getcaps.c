
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptocap {int cc_flags; } ;


 struct cryptocap* crypto_checkdriver (int) ;

int
crypto_getcaps(int hid)
{
 struct cryptocap *cap = crypto_checkdriver(hid);
 return cap != ((void*)0) ? cap->cc_flags : 0;
}
