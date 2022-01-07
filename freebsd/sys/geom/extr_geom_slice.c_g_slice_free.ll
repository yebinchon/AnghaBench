; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_slicer* }
%struct.g_slicer = type { %struct.g_slicer*, %struct.g_slicer*, %struct.g_slicer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_geom*)* @g_slice_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_slice_free(%struct.g_geom* %0) #0 {
  %2 = alloca %struct.g_geom*, align 8
  %3 = alloca %struct.g_slicer*, align 8
  store %struct.g_geom* %0, %struct.g_geom** %2, align 8
  %4 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %5 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %4, i32 0, i32 0
  %6 = load %struct.g_slicer*, %struct.g_slicer** %5, align 8
  store %struct.g_slicer* %6, %struct.g_slicer** %3, align 8
  %7 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %8 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %7, i32 0, i32 0
  store %struct.g_slicer* null, %struct.g_slicer** %8, align 8
  %9 = load %struct.g_slicer*, %struct.g_slicer** %3, align 8
  %10 = icmp eq %struct.g_slicer* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.g_slicer*, %struct.g_slicer** %3, align 8
  %14 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %13, i32 0, i32 2
  %15 = load %struct.g_slicer*, %struct.g_slicer** %14, align 8
  %16 = call i32 @g_free(%struct.g_slicer* %15)
  %17 = load %struct.g_slicer*, %struct.g_slicer** %3, align 8
  %18 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %17, i32 0, i32 1
  %19 = load %struct.g_slicer*, %struct.g_slicer** %18, align 8
  %20 = icmp ne %struct.g_slicer* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.g_slicer*, %struct.g_slicer** %3, align 8
  %23 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %22, i32 0, i32 1
  %24 = load %struct.g_slicer*, %struct.g_slicer** %23, align 8
  %25 = call i32 @g_free(%struct.g_slicer* %24)
  br label %26

26:                                               ; preds = %21, %12
  %27 = load %struct.g_slicer*, %struct.g_slicer** %3, align 8
  %28 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %27, i32 0, i32 0
  %29 = load %struct.g_slicer*, %struct.g_slicer** %28, align 8
  %30 = icmp ne %struct.g_slicer* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.g_slicer*, %struct.g_slicer** %3, align 8
  %33 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %32, i32 0, i32 0
  %34 = load %struct.g_slicer*, %struct.g_slicer** %33, align 8
  %35 = call i32 @g_free(%struct.g_slicer* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.g_slicer*, %struct.g_slicer** %3, align 8
  %38 = call i32 @g_free(%struct.g_slicer* %37)
  br label %39

39:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @g_free(%struct.g_slicer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
