
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PACKDIR_FILE_IDX ;
 int pack_garbage ;
 int string_list_append (int *,char const*) ;

__attribute__((used)) static void report_pack_garbage(unsigned seen_bits, const char *path)
{
 if (seen_bits == PACKDIR_FILE_IDX)
  string_list_append(&pack_garbage, path);
}
