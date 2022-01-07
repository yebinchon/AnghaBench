
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {int suspect; } ;


 int blame_origin_decref (int ) ;

__attribute__((used)) static void decref_split(struct blame_entry *split)
{
 int i;

 for (i = 0; i < 3; i++)
  blame_origin_decref(split[i].suspect);
}
