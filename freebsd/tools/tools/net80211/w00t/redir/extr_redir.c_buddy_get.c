
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {size_t buddy_got; int * buddy_data; int s; } ;


 int buddy_reset (struct params*) ;
 int recv (int ,int *,int,int ) ;

int buddy_get(struct params *p, int len)
{
 int rd;

 rd = recv(p->s, &p->buddy_data[p->buddy_got], len, 0);
 if (rd <= 0) {
  buddy_reset(p);
  return 0;
 }

 p->buddy_got += rd;
 return rd == len;
}
