; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c_mps_mapping_get_tid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c_mps_mapping_get_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i64, %struct.dev_mapping_table* }
%struct.dev_mapping_table = type { i64, i64, i32 }

@MPS_MAP_BAD_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_mapping_get_tid(%struct.mps_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mps_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dev_mapping_table*, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %38, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.mps_softc*, %struct.mps_softc** %5, align 8
  %13 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %10
  %17 = load %struct.mps_softc*, %struct.mps_softc** %5, align 8
  %18 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %17, i32 0, i32 1
  %19 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %19, i64 %20
  store %struct.dev_mapping_table* %21, %struct.dev_mapping_table** %9, align 8
  %22 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %9, align 8
  %23 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %9, align 8
  %29 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %9, align 8
  %35 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %27, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load i32, i32* @MPS_MAP_BAD_ID, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
