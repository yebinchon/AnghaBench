
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {int dummy; } ;


 int M_TTM_OBJ_FILE ;
 int free (struct ttm_object_file*,int ) ;

__attribute__((used)) static void ttm_object_file_destroy(struct ttm_object_file *tfile)
{

 free(tfile, M_TTM_OBJ_FILE);
}
