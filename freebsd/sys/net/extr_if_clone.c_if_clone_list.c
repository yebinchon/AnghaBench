
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clonereq {scalar_t__ ifcr_count; int ifcr_total; char* ifcr_buffer; } ;
struct if_clone {int ifc_name; } ;


 int EINVAL ;
 int IFNAMSIZ ;
 int IF_CLONERS_LOCK () ;
 int IF_CLONERS_UNLOCK () ;
 struct if_clone* LIST_FIRST (int *) ;
 struct if_clone* LIST_NEXT (struct if_clone*,int ) ;
 int M_CLONE ;
 int M_WAITOK ;
 int M_ZERO ;
 int V_if_cloners ;
 int V_if_cloners_count ;
 int copyout (char*,char*,int) ;
 int free (char*,int ) ;
 int ifc_list ;
 char* malloc (int,int ,int) ;
 int strlcpy (char*,int ,int) ;

int
if_clone_list(struct if_clonereq *ifcr)
{
 char *buf, *dst, *outbuf = ((void*)0);
 struct if_clone *ifc;
 int buf_count, count, err = 0;

 if (ifcr->ifcr_count < 0)
  return (EINVAL);

 IF_CLONERS_LOCK();
 buf_count = (V_if_cloners_count < ifcr->ifcr_count) ?
     V_if_cloners_count : ifcr->ifcr_count;
 IF_CLONERS_UNLOCK();

 outbuf = malloc(IFNAMSIZ*buf_count, M_CLONE, M_WAITOK | M_ZERO);

 IF_CLONERS_LOCK();

 ifcr->ifcr_total = V_if_cloners_count;
 if ((dst = ifcr->ifcr_buffer) == ((void*)0)) {

  goto done;
 }
 count = (V_if_cloners_count < buf_count) ?
     V_if_cloners_count : buf_count;

 for (ifc = LIST_FIRST(&V_if_cloners), buf = outbuf;
     ifc != ((void*)0) && count != 0;
     ifc = LIST_NEXT(ifc, ifc_list), count--, buf += IFNAMSIZ) {
  strlcpy(buf, ifc->ifc_name, IFNAMSIZ);
 }

done:
 IF_CLONERS_UNLOCK();
 if (err == 0 && dst != ((void*)0))
  err = copyout(outbuf, dst, buf_count*IFNAMSIZ);
 if (outbuf != ((void*)0))
  free(outbuf, M_CLONE);
 return (err);
}
