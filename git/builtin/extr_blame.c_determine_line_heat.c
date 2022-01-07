
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct commit_info {scalar_t__ author_time; } ;
struct blame_entry {TYPE_1__* suspect; } ;
struct TYPE_4__ {scalar_t__ hop; char* col; } ;
struct TYPE_3__ {int commit; } ;


 TYPE_2__* colorfield ;
 int colorfield_nr ;
 int get_commit_info (int ,struct commit_info*,int) ;

__attribute__((used)) static void determine_line_heat(struct blame_entry *ent, const char **dest_color)
{
 int i = 0;
 struct commit_info ci;
 get_commit_info(ent->suspect->commit, &ci, 1);

 while (i < colorfield_nr && ci.author_time > colorfield[i].hop)
  i++;

 *dest_color = colorfield[i].col;
}
