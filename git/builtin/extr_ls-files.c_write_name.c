
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int line_terminator ;
 int * prefix ;
 scalar_t__ prefix_len ;
 int stdout ;
 int write_name_quoted_relative (char const*,int *,int ,int ) ;

__attribute__((used)) static void write_name(const char *name)
{




 write_name_quoted_relative(name, prefix_len ? prefix : ((void*)0),
       stdout, line_terminator);
}
