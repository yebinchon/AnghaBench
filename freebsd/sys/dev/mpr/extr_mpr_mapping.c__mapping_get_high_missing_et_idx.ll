; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_high_missing_et_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_high_missing_et_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i64, %struct.enc_mapping_table* }
%struct.enc_mapping_table = type { i64, i32 }

@MPR_ENCTABLE_BAD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mpr_softc*)* @_mapping_get_high_missing_et_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mapping_get_high_missing_et_idx(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  %3 = alloca %struct.enc_mapping_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  store i64 0, i64* %4, align 8
  %7 = load i64, i64* @MPR_ENCTABLE_BAD_IDX, align 8
  store i64 %7, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %15, i32 0, i32 1
  %17 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %17, i64 %18
  store %struct.enc_mapping_table* %19, %struct.enc_mapping_table** %3, align 8
  %20 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %3, align 8
  %21 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %14
  %26 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %3, align 8
  %27 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.enc_mapping_table*, %struct.enc_mapping_table** %3, align 8
  %32 = getelementptr inbounds %struct.enc_mapping_table, %struct.enc_mapping_table* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %30, %25, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %8

39:                                               ; preds = %8
  %40 = load i64, i64* %6, align 8
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
