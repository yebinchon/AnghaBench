
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int critical_section_t ;


 int EX_SOFTWARE ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int cs_tailq ;
 int links ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 int stop (char*,int ) ;

critical_section_t *
cs_alloc(void)
{
 critical_section_t *new_cs;

 new_cs= (critical_section_t *)malloc(sizeof(critical_section_t));
 if (new_cs == ((void*)0))
  stop("Unable to malloc critical_section object", EX_SOFTWARE);
 memset(new_cs, 0, sizeof(*new_cs));

 TAILQ_INSERT_TAIL(&cs_tailq, new_cs, links);
 return new_cs;
}
