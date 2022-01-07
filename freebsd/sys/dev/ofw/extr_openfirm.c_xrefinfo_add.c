
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrefinfo {int dev; void* xref; void* node; } ;
typedef void* phandle_t ;
typedef int device_t ;


 int M_OFWPROP ;
 int M_WAITOK ;
 int SLIST_INSERT_HEAD (int *,struct xrefinfo*,int ) ;
 struct xrefinfo* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next_entry ;
 int xreflist ;
 int xreflist_lock ;

__attribute__((used)) static struct xrefinfo *
xrefinfo_add(phandle_t node, phandle_t xref, device_t dev)
{
 struct xrefinfo *xi;

 xi = malloc(sizeof(*xi), M_OFWPROP, M_WAITOK);
 xi->node = node;
 xi->xref = xref;
 xi->dev = dev;
 mtx_lock(&xreflist_lock);
 SLIST_INSERT_HEAD(&xreflist, xi, next_entry);
 mtx_unlock(&xreflist_lock);
 return (xi);
}
