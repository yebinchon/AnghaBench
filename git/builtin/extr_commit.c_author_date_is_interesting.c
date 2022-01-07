
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ author_message ;
 scalar_t__ force_date ;

__attribute__((used)) static int author_date_is_interesting(void)
{
 return author_message || force_date;
}
