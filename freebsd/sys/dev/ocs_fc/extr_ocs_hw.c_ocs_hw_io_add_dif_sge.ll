; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_add_dif_sge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_add_dif_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, i32*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"bad parameter hw=%p io=%p addr=%lx\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"SGL full (%d)\0A\00", align 1
@SLI4_SGE_TYPE_DIF = common dso_local global i32 0, align 4
@OCS_HW_IO_TARGET_WRITE = common dso_local global i64 0, align 8
@OCS_HW_IO_INITIATOR_READ = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@SLI4_SGE_TYPE_SKIP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_io_add_dif_sge(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = icmp ne %struct.TYPE_15__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14, %11, %3
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32* [ %23, %20 ], [ null, %24 ]
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = ptrtoint %struct.TYPE_15__* %27 to i64
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 (i32*, i8*, i64, ...) @ocs_log_err(i32* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %28, %struct.TYPE_16__* %29, i64 %30)
  %32 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %32, i64* %4, align 8
  br label %122

33:                                               ; preds = %14
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = call i64 @ocs_hw_io_overflow_sgl(%struct.TYPE_15__* %44, %struct.TYPE_16__* %45)
  %47 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32*, i8*, i64, ...) @ocs_log_err(i32* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %57, i64* %4, align 8
  br label %122

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %33
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %8, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %67
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %8, align 8
  %70 = load i32, i32* @SLI4_SGE_TYPE_DIF, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @OCS_HW_IO_TARGET_WRITE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %59
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OCS_HW_IO_INITIATOR_READ, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78, %59
  %85 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load i32, i32* @SLI4_SGE_TYPE_SKIP, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %84, %78
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @ocs_addr32_hi(i64 %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @ocs_addr32_lo(i64 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @TRUE, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %95
  %112 = load i32, i32* @FALSE, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 -1
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %95
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %121, i64* %4, align 8
  br label %122

122:                                              ; preds = %116, %49, %25
  %123 = load i64, i64* %4, align 8
  ret i64 %123
}

declare dso_local i32 @ocs_log_err(i32*, i8*, i64, ...) #1

declare dso_local i64 @ocs_hw_io_overflow_sgl(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
