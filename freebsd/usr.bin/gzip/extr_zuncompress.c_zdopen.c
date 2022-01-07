
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zs_size; scalar_t__ zs_roffset; } ;
struct TYPE_4__ {TYPE_1__ r; } ;
struct s_zstate {int zs_in_count; int * zs_fp; TYPE_2__ u; scalar_t__ zs_out_count; int zs_checkpoint; scalar_t__ zs_ratio; scalar_t__ zs_clear_flg; int zs_block_compress; scalar_t__ zs_free_ent; int zs_hsize; int zs_state; } ;
typedef int FILE ;


 int BLOCK_MASK ;
 int CHECK_GAP ;
 int HSIZE ;
 int S_START ;
 struct s_zstate* calloc (int,int) ;
 int * fdopen (int,char*) ;
 int free (struct s_zstate*) ;
 int * funopen (struct s_zstate*,int ,int *,int *,int ) ;
 int zclose ;
 int zread ;

FILE *
zdopen(int fd)
{
 struct s_zstate *zs;

 if ((zs = calloc(1, sizeof(struct s_zstate))) == ((void*)0))
  return (((void*)0));

 zs->zs_state = S_START;


 zs->zs_hsize = HSIZE;
 zs->zs_free_ent = 0;
 zs->zs_block_compress = BLOCK_MASK;
 zs->zs_clear_flg = 0;
 zs->zs_ratio = 0;
 zs->zs_checkpoint = CHECK_GAP;
 zs->zs_in_count = 1;
 zs->zs_out_count = 0;
 zs->u.r.zs_roffset = 0;
 zs->u.r.zs_size = 0;





 if ((zs->zs_fp = fdopen(fd, "r")) == ((void*)0)) {
  free(zs);
  return ((void*)0);
 }

 return funopen(zs, zread, ((void*)0), ((void*)0), zclose);
}
