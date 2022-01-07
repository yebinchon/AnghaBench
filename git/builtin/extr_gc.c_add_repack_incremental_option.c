
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int argv_array_push (int *,char*) ;
 int repack ;

__attribute__((used)) static void add_repack_incremental_option(void)
{
 argv_array_push(&repack, "--no-write-bitmap-index");
}
