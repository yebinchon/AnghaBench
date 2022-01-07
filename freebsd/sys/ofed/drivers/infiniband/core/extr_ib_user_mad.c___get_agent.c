
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_file {struct ib_mad_agent** agent; scalar_t__ agents_dead; } ;
struct ib_mad_agent {int dummy; } ;



__attribute__((used)) static struct ib_mad_agent *__get_agent(struct ib_umad_file *file, int id)
{
 return file->agents_dead ? ((void*)0) : file->agent[id];
}
