
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENT_STRICT ;
 int die (char*) ;
 char* git_editor () ;

__attribute__((used)) static const char *editor(int flag)
{
 const char *pgm = git_editor();

 if (!pgm && flag & IDENT_STRICT)
  die("Terminal is dumb, but EDITOR unset");

 return pgm;
}
