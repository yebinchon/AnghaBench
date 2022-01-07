; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_dump_component.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_dump_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_virstor_component = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@g_virstor_debug = common dso_local global i64 0, align 8
@LVL_DEBUG2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Component %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  chunk_count: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"   chunk_next: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"        flags: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_virstor_component*)* @dump_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_component(%struct.g_virstor_component* %0) #0 {
  %2 = alloca %struct.g_virstor_component*, align 8
  store %struct.g_virstor_component* %0, %struct.g_virstor_component** %2, align 8
  %3 = load i64, i64* @g_virstor_debug, align 8
  %4 = load i64, i64* @LVL_DEBUG2, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %31

7:                                                ; preds = %1
  %8 = load %struct.g_virstor_component*, %struct.g_virstor_component** %2, align 8
  %9 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.g_virstor_component*, %struct.g_virstor_component** %2, align 8
  %12 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %17)
  %19 = load %struct.g_virstor_component*, %struct.g_virstor_component** %2, align 8
  %20 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.g_virstor_component*, %struct.g_virstor_component** %2, align 8
  %24 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.g_virstor_component*, %struct.g_virstor_component** %2, align 8
  %28 = getelementptr inbounds %struct.g_virstor_component, %struct.g_virstor_component* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
