
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int ** adapter ;
 int adapters ;

video_adapter_t
*vid_get_adapter(int index)
{
 if ((index < 0) || (index >= adapters))
  return ((void*)0);
 return adapter[index];
}
