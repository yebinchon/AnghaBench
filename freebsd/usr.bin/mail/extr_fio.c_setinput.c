
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_offset; int m_block; } ;
typedef int FILE ;


 int SEEK_SET ;
 int err (int,char*) ;
 int fflush (int ) ;
 scalar_t__ fseeko (int *,int ,int ) ;
 int * itf ;
 int otf ;
 int positionof (int ,int ) ;

FILE *
setinput(struct message *mp)
{

 (void)fflush(otf);
 if (fseeko(itf,
     positionof(mp->m_block, mp->m_offset), SEEK_SET) < 0)
  err(1, "fseeko");
 return (itf);
}
