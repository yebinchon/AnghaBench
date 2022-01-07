
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plot {int width; int separate_bars; int num_datasets; int min; int max; int * bar; int * data; scalar_t__ height; } ;


 struct plot plot ;

__attribute__((used)) static void
SetupPlot(int width, int separate, int num_datasets)
{
 struct plot *pl;

 pl = &plot;
 pl->width = width;
 pl->height = 0;
 pl->data = ((void*)0);
 pl->bar = ((void*)0);
 pl->separate_bars = separate;
 pl->num_datasets = num_datasets;
 pl->min = 999e99;
 pl->max = -999e99;
}
