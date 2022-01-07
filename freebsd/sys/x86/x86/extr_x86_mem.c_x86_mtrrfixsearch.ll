; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mtrrfixsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_x86_mem.c_x86_mtrrfixsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_desc = type { i64, i64 }
%struct.mem_range_softc = type { %struct.mem_range_desc* }

@MTRR_N64K = common dso_local global i32 0, align 4
@MTRR_N16K = common dso_local global i32 0, align 4
@MTRR_N4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_range_desc* (%struct.mem_range_softc*, i64)* @x86_mtrrfixsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_range_desc* @x86_mtrrfixsearch(%struct.mem_range_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_range_desc*, align 8
  %4 = alloca %struct.mem_range_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_range_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.mem_range_softc* %0, %struct.mem_range_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mem_range_softc*, %struct.mem_range_softc** %4, align 8
  %9 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %8, i32 0, i32 0
  %10 = load %struct.mem_range_desc*, %struct.mem_range_desc** %9, align 8
  store %struct.mem_range_desc* %10, %struct.mem_range_desc** %6, align 8
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @MTRR_N64K, align 4
  %14 = load i32, i32* @MTRR_N16K, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @MTRR_N4K, align 4
  %17 = add nsw i32 %15, %16
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %22 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %28 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %31 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = icmp slt i64 %26, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  store %struct.mem_range_desc* %36, %struct.mem_range_desc** %3, align 8
  br label %44

37:                                               ; preds = %25, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %42 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %41, i32 1
  store %struct.mem_range_desc* %42, %struct.mem_range_desc** %6, align 8
  br label %11

43:                                               ; preds = %11
  store %struct.mem_range_desc* null, %struct.mem_range_desc** %3, align 8
  br label %44

44:                                               ; preds = %43, %35
  %45 = load %struct.mem_range_desc*, %struct.mem_range_desc** %3, align 8
  ret %struct.mem_range_desc* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
