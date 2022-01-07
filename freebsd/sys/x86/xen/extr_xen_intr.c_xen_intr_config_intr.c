
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intsrc {int dummy; } ;
typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;


 int ENODEV ;

__attribute__((used)) static int
xen_intr_config_intr(struct intsrc *isrc, enum intr_trigger trig,
    enum intr_polarity pol)
{

 return (ENODEV);
}
