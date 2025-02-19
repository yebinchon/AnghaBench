; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_free_mt_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_free_mt_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i64, i64, i64, %struct.TYPE_2__, %struct.dev_mapping_table* }
%struct.TYPE_2__ = type { i32 }
%struct.dev_mapping_table = type { i32 }

@MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE = common dso_local global i32 0, align 4
@MPI2_IOCPAGE8_IRFLAGS_HIGH_VOLUME_MAPPING = common dso_local global i32 0, align 4
@MPR_MAP_IN_USE = common dso_local global i32 0, align 4
@MPR_DEV_RESERVED = common dso_local global i32 0, align 4
@MPR_MAPTABLE_BAD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mpr_softc*, i64)* @_mapping_get_free_mt_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mapping_get_free_mt_idx(%struct.mpr_softc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mpr_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dev_mapping_table*, align 8
  %9 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %14 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %13, i32 0, i32 4
  %15 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %15, i64 %16
  store %struct.dev_mapping_table* %17, %struct.dev_mapping_table** %8, align 8
  %18 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le16toh(i32 %21)
  %23 = load i32, i32* @MPI2_IOCPAGE8_IRFLAGS_MASK_VOLUME_MAPPING_MODE, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MPI2_IOCPAGE8_IRFLAGS_HIGH_VOLUME_MAPPING, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.mpr_softc*, %struct.mpr_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %33, %29, %2
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %57, %39
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %8, align 8
  %47 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MPR_MAP_IN_USE, align 4
  %50 = load i32, i32* @MPR_DEV_RESERVED, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %3, align 8
  br label %64

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  %60 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %8, align 8
  %61 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %60, i32 1
  store %struct.dev_mapping_table* %61, %struct.dev_mapping_table** %8, align 8
  br label %41

62:                                               ; preds = %41
  %63 = load i64, i64* @MPR_MAPTABLE_BAD_IDX, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %62, %54
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
