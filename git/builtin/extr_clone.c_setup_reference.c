
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_one_reference ;
 int for_each_string_list (int *,int ,int*) ;
 int option_optional_reference ;
 int option_required_reference ;

__attribute__((used)) static void setup_reference(void)
{
 int required = 1;
 for_each_string_list(&option_required_reference,
        add_one_reference, &required);
 required = 0;
 for_each_string_list(&option_optional_reference,
        add_one_reference, &required);
}
