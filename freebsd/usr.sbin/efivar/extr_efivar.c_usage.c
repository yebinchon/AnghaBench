
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;

__attribute__((used)) static void
usage(void)
{

 errx(1, "efivar [-abdDHlLNpRtuw] [-n name] [-f file] [--append] [--ascii]\n"
     "\t[--attributes] [--binary] [--delete] [--fromfile file] [--hex]\n"
     "\t[--list-guids] [--list] [--load-option] [--name name] [--no-name]\n"
     "\t[--print] [--print-decimal] [--raw-guid] [--utf8] [--write]\n"
     "\tname[=value]");
}
