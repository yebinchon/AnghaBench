; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_ir_mt_idx_from_wwid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_ir_mt_idx_from_wwid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { %struct.dev_mapping_table* }
%struct.dev_mapping_table = type { i64 }

@MPR_MAPTABLE_BAD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mpr_softc*, i64)* @_mapping_get_ir_mt_idx_from_wwid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mapping_get_ir_mt_idx_from_wwid(%struct.mpr_softc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mpr_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dev_mapping_table*, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %11 = call i32 @_mapping_get_ir_maprange(%struct.mpr_softc* %10, i64* %6, i64* %7)
  %12 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %12, i32 0, i32 0
  %14 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %14, i64 %15
  store %struct.dev_mapping_table* %16, %struct.dev_mapping_table** %9, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %31, %2
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %9, align 8
  %24 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %3, align 8
  br label %38

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %8, align 8
  %34 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %9, align 8
  %35 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %34, i32 1
  store %struct.dev_mapping_table* %35, %struct.dev_mapping_table** %9, align 8
  br label %18

36:                                               ; preds = %18
  %37 = load i64, i64* @MPR_MAPTABLE_BAD_IDX, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @_mapping_get_ir_maprange(%struct.mpr_softc*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
