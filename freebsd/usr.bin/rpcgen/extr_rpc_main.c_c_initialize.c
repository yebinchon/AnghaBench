
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_type (int,char*) ;

void
c_initialize(void)
{


 add_type(1, "int");
 add_type(1, "long");
 add_type(1, "short");
 add_type(1, "bool");
 add_type(1, "u_int");
 add_type(1, "u_long");
 add_type(1, "u_short");

}
