
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int FALSE ;
 int blanked ;

__attribute__((used)) static int
star_init(video_adapter_t *adp)
{
 blanked = FALSE;
 return 0;
}
