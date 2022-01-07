
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfioc_table {int pfrio_flags; int pfrio_ndel; int pfrio_table; } ;
typedef int io ;


 int bzero (struct pfioc_table*,int) ;
 int pfr_clr_tables (int *,int *,int ) ;

__attribute__((used)) static int
pf_clear_tables(void)
{
 struct pfioc_table io;
 int error;

 bzero(&io, sizeof(io));

 error = pfr_clr_tables(&io.pfrio_table, &io.pfrio_ndel,
     io.pfrio_flags);

 return (error);
}
