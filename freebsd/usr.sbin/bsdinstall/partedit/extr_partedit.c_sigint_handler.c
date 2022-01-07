
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmesh {int dummy; } ;


 int end_dialog () ;
 int exit (int) ;
 int geom_deletetree (struct gmesh*) ;
 int geom_gettree (struct gmesh*) ;
 int gpart_revert_all (struct gmesh*) ;

__attribute__((used)) static void
sigint_handler(int sig)
{
 struct gmesh mesh;


 geom_gettree(&mesh);
 gpart_revert_all(&mesh);
 geom_deletetree(&mesh);

 end_dialog();

 exit(1);
}
