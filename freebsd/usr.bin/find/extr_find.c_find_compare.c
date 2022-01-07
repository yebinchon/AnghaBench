
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fts_name; } ;
typedef TYPE_1__ FTSENT ;


 int strcoll (int ,int ) ;

__attribute__((used)) static int
find_compare(const FTSENT * const *s1, const FTSENT * const *s2)
{

 return (strcoll((*s1)->fts_name, (*s2)->fts_name));
}
