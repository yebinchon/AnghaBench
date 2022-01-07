
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {int threads_num; } ;


 int assert (int ) ;

__attribute__((used)) static void
set_threads_num(struct configuration *config, int value)
{

 assert(config != ((void*)0));
 config->threads_num = value;
}
