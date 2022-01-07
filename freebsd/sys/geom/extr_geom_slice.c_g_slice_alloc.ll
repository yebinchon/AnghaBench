; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_slicer = type { i32, i8*, i32* }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_slicer* (i32, i32)* @g_slice_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_slicer* @g_slice_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_slicer*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @g_malloc(i32 24, i32 %8)
  %10 = bitcast i8* %9 to %struct.g_slicer*
  store %struct.g_slicer* %10, %struct.g_slicer** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @g_malloc(i32 %14, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.g_slicer*, %struct.g_slicer** %5, align 8
  %21 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.g_slicer*, %struct.g_slicer** %5, align 8
  %24 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @g_malloc(i32 %29, i32 %32)
  %34 = load %struct.g_slicer*, %struct.g_slicer** %5, align 8
  %35 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.g_slicer*, %struct.g_slicer** %5, align 8
  %38 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.g_slicer*, %struct.g_slicer** %5, align 8
  ret %struct.g_slicer* %39
}

declare dso_local i8* @g_malloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
