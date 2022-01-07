
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uma_zone_t ;
typedef int uma_release ;
typedef int uma_init ;
typedef int uma_import ;
typedef int uma_fini ;
typedef int uma_dtor ;
typedef int uma_ctor ;
struct uma_zctor_args {char* name; int size; int flags; scalar_t__ align; void* arg; int release; int import; int fini; int uminit; int dtor; int ctor; } ;
typedef int args ;


 int M_WAITOK ;
 int UMA_ANYDOMAIN ;
 int UMA_ZFLAG_CACHE ;
 int memset (struct uma_zctor_args*,int ,int) ;
 int zone_alloc_item (int ,struct uma_zctor_args*,int ,int ) ;
 int zones ;

uma_zone_t
uma_zcache_create(char *name, int size, uma_ctor ctor, uma_dtor dtor,
      uma_init zinit, uma_fini zfini, uma_import zimport,
      uma_release zrelease, void *arg, int flags)
{
 struct uma_zctor_args args;

 memset(&args, 0, sizeof(args));
 args.name = name;
 args.size = size;
 args.ctor = ctor;
 args.dtor = dtor;
 args.uminit = zinit;
 args.fini = zfini;
 args.import = zimport;
 args.release = zrelease;
 args.arg = arg;
 args.align = 0;
 args.flags = flags | UMA_ZFLAG_CACHE;

 return (zone_alloc_item(zones, &args, UMA_ANYDOMAIN, M_WAITOK));
}
