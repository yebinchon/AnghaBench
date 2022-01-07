
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {scalar_t__ data_size; int * data; } ;


 int ENODEV ;
 int printf (char*) ;
 TYPE_1__ txt_decoder ;

__attribute__((used)) static int
txt_init(video_adapter_t *adp)
{


 if (txt_decoder.data == ((void*)0) || txt_decoder.data_size <= 0) {
  printf("splash_txt: No ASCII bitmap file found\n");
  return (ENODEV);
 }
 return (0);
}
