
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int ofwfb_blank_display32 (int *,int) ;

__attribute__((used)) static int
ofwfb_set_border32(video_adapter_t *adp, int border)
{

 return (ofwfb_blank_display32(adp, border));
}
