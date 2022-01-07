
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt_list {char* o_name; char* o_file; scalar_t__ o_flags; } ;


 int EXIT_FAILURE ;
 int SLIST_INSERT_HEAD (int *,struct opt_list*,int ) ;
 scalar_t__ calloc (int,int) ;
 int check_duplicate (char const*,char*) ;
 int err (int ,char*) ;
 int o_next ;
 int otab ;

__attribute__((used)) static void
insert_option(const char *fname, char *this, char *val)
{
 struct opt_list *po;

 check_duplicate(fname, this);
 po = (struct opt_list *) calloc(1, sizeof *po);
 if (po == ((void*)0))
  err(EXIT_FAILURE, "calloc");
 po->o_name = this;
 po->o_file = val;
 po->o_flags = 0;
 SLIST_INSERT_HEAD(&otab, po, o_next);
}
