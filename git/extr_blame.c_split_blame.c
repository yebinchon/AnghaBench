
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {scalar_t__ suspect; } ;


 int add_blame_entry (struct blame_entry***,struct blame_entry*) ;
 int dup_entry (struct blame_entry***,struct blame_entry*,struct blame_entry*) ;

__attribute__((used)) static void split_blame(struct blame_entry ***blamed,
   struct blame_entry ***unblamed,
   struct blame_entry *split,
   struct blame_entry *e)
{
 if (split[0].suspect && split[2].suspect) {

  dup_entry(unblamed, e, &split[0]);


  add_blame_entry(unblamed, &split[2]);


  add_blame_entry(blamed, &split[1]);
 }
 else if (!split[0].suspect && !split[2].suspect)




  dup_entry(blamed, e, &split[1]);
 else if (split[0].suspect) {

  dup_entry(unblamed, e, &split[0]);
  add_blame_entry(blamed, &split[1]);
 }
 else {

  dup_entry(blamed, e, &split[1]);
  add_blame_entry(unblamed, &split[2]);
 }
}
