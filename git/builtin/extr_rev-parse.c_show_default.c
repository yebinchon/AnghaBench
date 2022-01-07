
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int NORMAL ;
 char* def ;
 int get_oid (char const*,struct object_id*) ;
 int show_rev (int ,struct object_id*,char const*) ;

__attribute__((used)) static int show_default(void)
{
 const char *s = def;

 if (s) {
  struct object_id oid;

  def = ((void*)0);
  if (!get_oid(s, &oid)) {
   show_rev(NORMAL, &oid, s);
   return 1;
  }
 }
 return 0;
}
