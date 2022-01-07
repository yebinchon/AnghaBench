
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct input_event {scalar_t__ value; void* code; void* type; } ;
typedef scalar_t__ int32_t ;
typedef int ie ;


 int assert (int) ;
 int memset (struct input_event*,int ,int) ;
 scalar_t__ write (scalar_t__,struct input_event*,int) ;

__attribute__((used)) static int32_t
uinput_write_event(int32_t fd, uint16_t type, uint16_t code, int32_t value)
{
 struct input_event ie;

 assert(fd >= 0);

 memset(&ie, 0, sizeof(ie));
 ie.type = type;
 ie.code = code;
 ie.value = value;
 return (write(fd, &ie, sizeof(ie)));
}
