
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;


 int ReadBankedUBYTE (int ,int ) ;
 int col_bank ;
 size_t collision_tiles_len ;
 int * scene_col_tiles ;
 int scene_load_col_ptr ;

void SceneInit_b8()
{
  UBYTE i;


  for (i = 0; i != collision_tiles_len; i++)
  {
    scene_col_tiles[i] = ReadBankedUBYTE(col_bank, scene_load_col_ptr);
    scene_load_col_ptr++;
  }
}
