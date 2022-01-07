
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int strdup_strings; } ;
struct TYPE_7__ {int strdup_strings; } ;
struct TYPE_6__ {int strdup_strings; } ;
struct TYPE_5__ {int strdup_strings; } ;
struct src_data {TYPE_4__ generic; TYPE_3__ r_branch; TYPE_2__ tag; TYPE_1__ branch; } ;



__attribute__((used)) static void init_src_data(struct src_data *data)
{
 data->branch.strdup_strings = 1;
 data->tag.strdup_strings = 1;
 data->r_branch.strdup_strings = 1;
 data->generic.strdup_strings = 1;
}
