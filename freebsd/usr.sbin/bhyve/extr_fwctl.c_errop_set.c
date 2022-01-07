
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errop_code ;

__attribute__((used)) static void
errop_set(int err)
{

 errop_code = err;
}
