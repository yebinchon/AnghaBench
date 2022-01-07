
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int buf ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 int OF_getprop (int,char const*,char*,int) ;

__attribute__((used)) static int
ofw_get_uart_console(phandle_t opts, phandle_t *result, const char *inputdev,
    const char *outputdev)
{
 char buf[64];
 phandle_t input;

 if (OF_getprop(opts, inputdev, buf, sizeof(buf)) == -1)
  return (ENXIO);
 input = OF_finddevice(buf);
 if (input == -1)
  return (ENXIO);

 if (outputdev != ((void*)0)) {
  if (OF_getprop(opts, outputdev, buf, sizeof(buf)) == -1)
   return (ENXIO);
  if (OF_finddevice(buf) != input)
   return (ENXIO);
 }

 *result = input;
 return (0);
}
