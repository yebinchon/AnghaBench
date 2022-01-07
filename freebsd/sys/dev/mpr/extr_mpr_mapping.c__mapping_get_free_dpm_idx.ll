; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_free_dpm_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_mapping.c__mapping_get_free_dpm_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i64, %struct.dev_mapping_table*, i64, i64* }
%struct.dev_mapping_table = type { i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MPR_DPM_BAD_IDX = common dso_local global i64 0, align 8
@MPI2_DRVMAP0_MAPINFO_MISSING_MASK = common dso_local global i64 0, align 8
@MPR_MAPTABLE_BAD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mpr_softc*)* @_mapping_get_free_dpm_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_mapping_get_free_dpm_idx(%struct.mpr_softc* %0) #0 {
  %2 = alloca %struct.mpr_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dev_mapping_table*, align 8
  %10 = alloca i64, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %2, align 8
  %11 = load i64, i64* @MPR_DPM_BAD_IDX, align 8
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %66, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  %19 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = bitcast i32* %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %25
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MPI2_DRVMAP0_MAPINFO_MISSING_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %6, align 8
  %33 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %18
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %66

44:                                               ; preds = %40, %18
  %45 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = load i64, i64* %3, align 8
  store i64 %53, i64* %5, align 8
  br label %69

54:                                               ; preds = %44
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @MPR_DPM_BAD_IDX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58, %54
  %63 = load i64, i64* %3, align 8
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %62, %58
  br label %66

66:                                               ; preds = %65, %43
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %12

69:                                               ; preds = %52, %12
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @MPR_DPM_BAD_IDX, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %118

73:                                               ; preds = %69
  %74 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %73
  %82 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %83 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = bitcast i32* %86 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %88
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %4, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %95, 32
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %96, %100
  store i32 %101, i32* %8, align 4
  %102 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @_mapping_get_mt_idx_from_id(%struct.mpr_softc* %102, i32 %103)
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @MPR_MAPTABLE_BAD_IDX, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %81
  %109 = load %struct.mpr_softc*, %struct.mpr_softc** %2, align 8
  %110 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %109, i32 0, i32 1
  %111 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %111, i64 %112
  store %struct.dev_mapping_table* %113, %struct.dev_mapping_table** %9, align 8
  %114 = load i64, i64* @MPR_DPM_BAD_IDX, align 8
  %115 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %9, align 8
  %116 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %108, %81
  br label %118

118:                                              ; preds = %117, %73, %69
  %119 = load i64, i64* %5, align 8
  ret i64 %119
}

declare dso_local i64 @_mapping_get_mt_idx_from_id(%struct.mpr_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
