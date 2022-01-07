
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*) ;
 int fout ;

__attribute__((used)) static void
print_trailer(void)
{
 f_print(fout, "\treturn (TRUE);\n");
 f_print(fout, "}\n");
}
