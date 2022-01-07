
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct note_info_list {int dummy; } ;
struct note_info {int type; size_t outsize; void* outarg; int (* outfunc ) (void*,int *,size_t*) ;} ;
typedef int (* outfunc_t ) (void*,int *,size_t*) ;
typedef int FREEBSD_ABI_VENDOR ;
typedef int Elf_Note ;


 int ELF_NOTE_ROUNDSIZE ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (struct note_info_list*,struct note_info*,int ) ;
 int link ;
 struct note_info* malloc (int,int ,int) ;
 int roundup2 (size_t,int ) ;

__attribute__((used)) static size_t
register_note(struct note_info_list *list, int type, outfunc_t out, void *arg)
{
 struct note_info *ninfo;
 size_t size, notesize;

 size = 0;
 out(arg, ((void*)0), &size);
 ninfo = malloc(sizeof(*ninfo), M_TEMP, M_ZERO | M_WAITOK);
 ninfo->type = type;
 ninfo->outfunc = out;
 ninfo->outarg = arg;
 ninfo->outsize = size;
 TAILQ_INSERT_TAIL(list, ninfo, link);

 if (type == -1)
  return (size);

 notesize = sizeof(Elf_Note) +
     roundup2(sizeof(FREEBSD_ABI_VENDOR), ELF_NOTE_ROUNDSIZE) +

     roundup2(size, ELF_NOTE_ROUNDSIZE);

 return (notesize);
}
