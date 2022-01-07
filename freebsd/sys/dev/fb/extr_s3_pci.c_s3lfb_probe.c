
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_adapter_t ;
struct TYPE_2__ {int (* probe ) (int,int **,void*,int) ;} ;


 TYPE_1__* prevvidsw ;
 int stub1 (int,int **,void*,int) ;

__attribute__((used)) static int
s3lfb_probe(int unit, video_adapter_t **adpp, void *arg, int flags)
{
 return (*prevvidsw->probe)(unit, adpp, arg, flags);
}
