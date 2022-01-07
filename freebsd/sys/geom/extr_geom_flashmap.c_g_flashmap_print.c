
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct g_flashmap_slice {scalar_t__ sl_start; scalar_t__ sl_end; int sl_name; } ;


 int printf (char*,int,int,int ,int) ;

__attribute__((used)) static void
g_flashmap_print(struct g_flashmap_slice *slice)
{

 printf("%08jx-%08jx: %s (%juKB)\n", (uintmax_t)slice->sl_start,
     (uintmax_t)slice->sl_end, slice->sl_name,
     (uintmax_t)(slice->sl_end - slice->sl_start) / 1024);
}
