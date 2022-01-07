
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_color_fields (char*) ;

__attribute__((used)) static void setup_default_color_by_age(void)
{
 parse_color_fields("blue,12 month ago,white,1 month ago,red");
}
