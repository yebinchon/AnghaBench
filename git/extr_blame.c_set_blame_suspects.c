
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit {int dummy; } ;
struct blame_origin {int dummy; } ;


 int blame_suspects ;
 struct blame_origin** blame_suspects_at (int *,struct commit*) ;

__attribute__((used)) static void set_blame_suspects(struct commit *commit, struct blame_origin *origin)
{
 *blame_suspects_at(&blame_suspects, commit) = origin;
}
