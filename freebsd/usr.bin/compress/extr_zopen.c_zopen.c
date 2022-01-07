
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_zstate {int dummy; } ;
typedef int FILE ;


 int BITS ;
 int BLOCK_MASK ;
 int CHECK_GAP ;
 int EINVAL ;
 int HSIZE ;
 int S_START ;
 int block_compress ;
 struct s_zstate* calloc (int,int) ;
 int checkpoint ;
 scalar_t__ clear_flg ;
 int errno ;
 int * fopen (char const*,char const*) ;
 int * fp ;
 int free (struct s_zstate*) ;
 scalar_t__ free_ent ;
 int * funopen (struct s_zstate*,int *,int *,int *,int ) ;
 int hsize ;
 int in_count ;
 long maxbits ;
 long maxmaxcode ;
 scalar_t__ out_count ;
 scalar_t__ ratio ;
 scalar_t__ roffset ;
 scalar_t__ size ;
 int state ;
 int zclose ;
 char zmode ;
 int * zread ;
 int * zwrite ;

FILE *
zopen(const char *fname, const char *mode, int bits)
{
 struct s_zstate *zs;

 if ((mode[0] != 'r' && mode[0] != 'w') || mode[1] != '\0' ||
     bits < 0 || bits > BITS) {
  errno = EINVAL;
  return (((void*)0));
 }

 if ((zs = calloc(1, sizeof(struct s_zstate))) == ((void*)0))
  return (((void*)0));

 maxbits = bits ? bits : BITS;
 maxmaxcode = 1L << maxbits;
 hsize = HSIZE;
 free_ent = 0;
 block_compress = BLOCK_MASK;
 clear_flg = 0;
 ratio = 0;
 checkpoint = CHECK_GAP;
 in_count = 1;
 out_count = 0;
 state = S_START;
 roffset = 0;
 size = 0;





 if ((fp = fopen(fname, mode)) == ((void*)0)) {
  free(zs);
  return (((void*)0));
 }
 switch (*mode) {
 case 'r':
  zmode = 'r';
  return (funopen(zs, zread, ((void*)0), ((void*)0), zclose));
 case 'w':
  zmode = 'w';
  return (funopen(zs, ((void*)0), zwrite, ((void*)0), zclose));
 }

 return (((void*)0));
}
