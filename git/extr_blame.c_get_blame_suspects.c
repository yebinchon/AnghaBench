
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;
struct blame_origin {int dummy; } ;


 int blame_suspects ;
 struct blame_origin** blame_suspects_peek (int *,struct commit*) ;

struct blame_origin *get_blame_suspects(struct commit *commit)
{
 struct blame_origin **result;

 result = blame_suspects_peek(&blame_suspects, commit);

 return result ? *result : ((void*)0);
}
