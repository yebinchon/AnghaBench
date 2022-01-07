; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_SetXferRate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_trm_SetXferRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { %union.ccb* }
%union.ccb = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_18__*, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ccb_trans_settings = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"trm_SetXferRate\0A\00", align 1
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*)* @trm_SetXferRate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trm_SetXferRate(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca %struct.ccb_trans_settings, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %13 = call i32 @TRM_DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %union.ccb*, %union.ccb** %15, align 8
  store %union.ccb* %16, %union.ccb** %7, align 8
  %17 = call i32 @memset(%struct.ccb_trans_settings* %8, i32 0, i32 16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %35 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 0
  %41 = load %union.ccb*, %union.ccb** %7, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_16__*
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @xpt_setup_ccb(i32* %40, i32 %44, i32 1)
  %46 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %47 = load %union.ccb*, %union.ccb** %7, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_16__*
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @xpt_async(i32 %46, i32 %50, %struct.ccb_trans_settings* %8)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %101, label %57

57:                                               ; preds = %3
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %12, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %67

67:                                               ; preds = %97, %57
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %77, %71
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %12, align 8
  br label %97

97:                                               ; preds = %93
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %67

100:                                              ; preds = %67
  br label %101

101:                                              ; preds = %100, %3
  ret void
}

declare dso_local i32 @TRM_DPRINTF(i8*) #1

declare dso_local i32 @memset(%struct.ccb_trans_settings*, i32, i32) #1

declare dso_local i32 @xpt_setup_ccb(i32*, i32, i32) #1

declare dso_local i32 @xpt_async(i32, i32, %struct.ccb_trans_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
