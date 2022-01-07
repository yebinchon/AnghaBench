
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout_handle {int * callout; } ;



void
callout_handle_init(struct callout_handle *handle)
{
 handle->callout = ((void*)0);
}
