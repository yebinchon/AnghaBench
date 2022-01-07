
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct indir {struct indir* array; } ;


 int M_MD ;
 int M_MDSECT ;
 int free (struct indir*,int ) ;

__attribute__((used)) static void
del_indir(struct indir *ip)
{

 free(ip->array, M_MDSECT);
 free(ip, M_MD);
}
