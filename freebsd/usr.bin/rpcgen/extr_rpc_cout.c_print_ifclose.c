
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_print (int ,char*) ;
 int fout ;
 int tabify (int ,int) ;

__attribute__((used)) static void
print_ifclose(int indent, int brace)
{
 f_print(fout, "))\n");
 tabify(fout, indent);
 f_print(fout, "\treturn (FALSE);\n");
 if (brace)
  f_print(fout, "\t}\n");
}
