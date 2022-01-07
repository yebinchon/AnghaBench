
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linker_no_more_classes ;

__attribute__((used)) static void
linker_stop_class_add(void *arg)
{

 linker_no_more_classes = 1;
}
