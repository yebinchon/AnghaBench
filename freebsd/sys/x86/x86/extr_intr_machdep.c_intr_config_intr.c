
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intsrc {TYPE_1__* is_pic; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
struct TYPE_2__ {int (* pic_config_intr ) (struct intsrc*,int,int) ;} ;


 int EINVAL ;
 struct intsrc* intr_lookup_source (int) ;
 int stub1 (struct intsrc*,int,int) ;

int
intr_config_intr(int vector, enum intr_trigger trig, enum intr_polarity pol)
{
 struct intsrc *isrc;

 isrc = intr_lookup_source(vector);
 if (isrc == ((void*)0))
  return (EINVAL);
 return (isrc->is_pic->pic_config_intr(isrc, trig, pol));
}
