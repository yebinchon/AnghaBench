; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c_mps_mapping_get_raid_tid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c_mps_mapping_get_raid_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { %struct.dev_mapping_table* }
%struct.dev_mapping_table = type { i64, i64, i32 }

@MPS_MAP_BAD_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_mapping_get_raid_tid(%struct.mps_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mps_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dev_mapping_table*, align 8
  store %struct.mps_softc* %0, %struct.mps_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mps_softc*, %struct.mps_softc** %5, align 8
  %13 = call i32 @_mapping_get_ir_maprange(%struct.mps_softc* %12, i64* %8, i64* %9)
  %14 = load %struct.mps_softc*, %struct.mps_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %14, i32 0, i32 0
  %16 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %16, i64 %17
  store %struct.dev_mapping_table* %18, %struct.dev_mapping_table** %11, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %41, %3
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %11, align 8
  %26 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %11, align 8
  %32 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %11, align 8
  %38 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %48

40:                                               ; preds = %30, %24
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  %44 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %11, align 8
  %45 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %44, i32 1
  store %struct.dev_mapping_table* %45, %struct.dev_mapping_table** %11, align 8
  br label %20

46:                                               ; preds = %20
  %47 = load i32, i32* @MPS_MAP_BAD_ID, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %36
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @_mapping_get_ir_maprange(%struct.mps_softc*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
