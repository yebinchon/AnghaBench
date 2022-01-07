; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c__mapping_get_high_missing_mt_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_mapping.c__mapping_get_high_missing_mt_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, %struct.dev_mapping_table*, i64, %struct.TYPE_2__ }
%struct.dev_mapping_table = type { i64 }
%struct.TYPE_2__ = type { i32 }

@MPS_MAPTABLE_BAD_IDX = common dso_local global i32 0, align 4
@MPI2_IOCPAGE8_FLAGS_RESERVED_TARGETID_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_softc*)* @_mapping_get_high_missing_mt_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mapping_get_high_missing_mt_idx(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dev_mapping_table*, align 8
  %11 = alloca i32, align 4
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  %12 = load i32, i32* @MPS_MAPTABLE_BAD_IDX, align 4
  store i32 %12, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %13 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le16toh(i32 %16)
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MPI2_IOCPAGE8_FLAGS_RESERVED_TARGETID_0, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %33 = call i32 @_mapping_get_ir_maprange(%struct.mps_softc* %32, i32* %8, i32* %9)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %45 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %44, i32 0, i32 1
  %46 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %46, i64 %48
  store %struct.dev_mapping_table* %49, %struct.dev_mapping_table** %10, align 8
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %67, %43
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %10, align 8
  %57 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %10, align 8
  %63 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %5, align 8
  %65 = load i32, i32* %3, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  %70 = load %struct.dev_mapping_table*, %struct.dev_mapping_table** %10, align 8
  %71 = getelementptr inbounds %struct.dev_mapping_table, %struct.dev_mapping_table* %70, i32 1
  store %struct.dev_mapping_table* %71, %struct.dev_mapping_table** %10, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @_mapping_get_ir_maprange(%struct.mps_softc*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
