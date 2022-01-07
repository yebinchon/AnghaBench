
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tuple_callbacks {char* name; } ;
typedef int device_t ;


 int EINVAL ;
 int printf (char*,char*,int) ;

__attribute__((used)) static int
decode_tuple_unhandled(device_t cbdev, device_t child, int id,
    int len, uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *info, void *argp)
{

 printf("TUPLE: %s [%d] is unhandled! Bailing...", info->name, len);
 return (EINVAL);
}
