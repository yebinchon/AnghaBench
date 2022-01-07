
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _tomb (char*,int ) ;
 int free (int *) ;
 int warn (char*,int *) ;
 int * widemsg ;

int
to_mb(char *mb, wchar_t wc)
{
 int rv;

 if ((rv = _tomb(mb, wc)) < 0) {
  warn("%s", widemsg);
  free(widemsg);
  widemsg = ((void*)0);
 }
 return (rv);
}
