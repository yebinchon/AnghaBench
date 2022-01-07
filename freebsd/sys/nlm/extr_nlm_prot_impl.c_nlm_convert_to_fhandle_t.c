
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netobj {int n_bytes; } ;
typedef int fhandle_t ;


 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
nlm_convert_to_fhandle_t(fhandle_t *fhp, struct netobj *p)
{
 memcpy(fhp, p->n_bytes, sizeof(fhandle_t));
}
