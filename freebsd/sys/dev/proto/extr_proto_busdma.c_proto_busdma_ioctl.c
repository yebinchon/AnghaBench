
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct proto_tag {int dummy; } ;
struct proto_softc {int sc_dev; } ;
struct proto_md {int dummy; } ;
struct TYPE_3__ {int tag; } ;
struct TYPE_4__ {TYPE_1__ md; } ;
struct proto_ioc_busdma {int request; int key; TYPE_2__ u; } ;
struct proto_busdma {int sxlck; int bd_roottag; } ;


 int EINVAL ;
 int bus_get_dma_tag (int ) ;
 int proto_busdma_md_create (struct proto_busdma*,struct proto_tag*,struct proto_ioc_busdma*) ;
 int proto_busdma_md_destroy (struct proto_busdma*,struct proto_md*) ;
 int proto_busdma_md_load (struct proto_busdma*,struct proto_md*,struct proto_ioc_busdma*,struct thread*) ;
 struct proto_md* proto_busdma_md_lookup (struct proto_busdma*,int ) ;
 int proto_busdma_md_unload (struct proto_busdma*,struct proto_md*) ;
 int proto_busdma_mem_alloc (struct proto_busdma*,struct proto_tag*,struct proto_ioc_busdma*) ;
 int proto_busdma_mem_free (struct proto_busdma*,struct proto_md*) ;
 int proto_busdma_sync (struct proto_busdma*,struct proto_md*,struct proto_ioc_busdma*) ;
 int proto_busdma_tag_create (struct proto_busdma*,struct proto_tag*,struct proto_ioc_busdma*) ;
 int proto_busdma_tag_destroy (struct proto_busdma*,struct proto_tag*) ;
 struct proto_tag* proto_busdma_tag_lookup (struct proto_busdma*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
proto_busdma_ioctl(struct proto_softc *sc, struct proto_busdma *busdma,
    struct proto_ioc_busdma *ioc, struct thread *td)
{
 struct proto_tag *tag;
 struct proto_md *md;
 int error;

 sx_xlock(&busdma->sxlck);

 error = 0;
 switch (ioc->request) {
 case 130:
  busdma->bd_roottag = bus_get_dma_tag(sc->sc_dev);
  error = proto_busdma_tag_create(busdma, ((void*)0), ioc);
  break;
 case 129:
  tag = proto_busdma_tag_lookup(busdma, ioc->key);
  if (tag == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_tag_create(busdma, tag, ioc);
  break;
 case 128:
  tag = proto_busdma_tag_lookup(busdma, ioc->key);
  if (tag == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_tag_destroy(busdma, tag);
  break;
 case 133:
  tag = proto_busdma_tag_lookup(busdma, ioc->u.md.tag);
  if (tag == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_mem_alloc(busdma, tag, ioc);
  break;
 case 132:
  md = proto_busdma_md_lookup(busdma, ioc->key);
  if (md == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_mem_free(busdma, md);
  break;
 case 137:
  tag = proto_busdma_tag_lookup(busdma, ioc->u.md.tag);
  if (tag == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_md_create(busdma, tag, ioc);
  break;
 case 136:
  md = proto_busdma_md_lookup(busdma, ioc->key);
  if (md == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_md_destroy(busdma, md);
  break;
 case 135:
  md = proto_busdma_md_lookup(busdma, ioc->key);
  if (md == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_md_load(busdma, md, ioc, td);
  break;
 case 134:
  md = proto_busdma_md_lookup(busdma, ioc->key);
  if (md == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_md_unload(busdma, md);
  break;
 case 131:
  md = proto_busdma_md_lookup(busdma, ioc->key);
  if (md == ((void*)0)) {
   error = EINVAL;
   break;
  }
  error = proto_busdma_sync(busdma, md, ioc);
  break;
 default:
  error = EINVAL;
  break;
 }

 sx_xunlock(&busdma->sxlck);

 return (error);
}
