
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_CUR ;
 int * fp ;
 int fseek (int ,long,int ) ;

__attribute__((used)) static void
repos(int nchar)
{
 int i;

 for (i = 0; i < 2; i++)
  (void)fseek(fp[i], (long)-nchar, SEEK_CUR);
}
