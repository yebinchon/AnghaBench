
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_compunit {int type; char* s; struct s_compunit* next; } ;
typedef enum e_cut { ____Placeholder_e_cut } e_cut ;


 struct s_compunit** cu_nextp ;
 int err (int,char*) ;
 struct s_compunit* malloc (int) ;

__attribute__((used)) static void
add_compunit(enum e_cut type, char *s)
{
 struct s_compunit *cu;

 if ((cu = malloc(sizeof(struct s_compunit))) == ((void*)0))
  err(1, "malloc");
 cu->type = type;
 cu->s = s;
 cu->next = ((void*)0);
 *cu_nextp = cu;
 cu_nextp = &cu->next;
}
