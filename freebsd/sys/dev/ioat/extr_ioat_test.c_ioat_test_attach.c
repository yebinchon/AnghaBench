
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Giant ;
 int enable_ioat_test (int) ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ strcmp (char*,char*) ;

void
ioat_test_attach(void)
{
 char *val;

 val = kern_getenv("hw.ioat.enable_ioat_test");
 if (val != ((void*)0) && strcmp(val, "0") != 0) {
  mtx_lock(&Giant);
  enable_ioat_test(1);
  mtx_unlock(&Giant);
 }
 freeenv(val);
}
