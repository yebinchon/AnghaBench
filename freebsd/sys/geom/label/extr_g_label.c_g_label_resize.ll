; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/label/extr_g_label.c_g_label_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Label %s resized.\00", align 1
@G_SLICE_CONFIG_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"notused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_label_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_label_resize(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %3 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %4 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = call %struct.TYPE_6__* @LIST_FIRST(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @G_LABEL_DEBUG(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* @G_SLICE_CONFIG_FORCE, align 4
  %15 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %21 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @g_slice_config(%struct.TYPE_5__* %13, i32 0, i32 %14, i32 0, i32 %19, i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @G_LABEL_DEBUG(i32, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_slice_config(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
