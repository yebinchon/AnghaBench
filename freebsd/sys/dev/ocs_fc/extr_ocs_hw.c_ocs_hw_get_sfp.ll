; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_sfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_sfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@OCS_MIN_DMA_ALIGNMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate DMA buffer\0A\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_sfp = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"READ_TRANSCEIVER_DATA failed with status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_get_sfp(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %18 = load i32, i32* @OCS_M_ZERO, align 4
  %19 = load i32, i32* @OCS_M_NOWAIT, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.TYPE_11__* @ocs_malloc(i32 %16, i32 %17, i32 %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %12, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = icmp eq %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ocs_log_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %29, i64* %5, align 8
  br label %128

30:                                               ; preds = %4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OCS_M_NOWAIT, align 4
  %35 = call %struct.TYPE_11__* @ocs_malloc(i32 %33, i32 24, i32 %34)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %11, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %37 = icmp eq %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ocs_log_err(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %47 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %48 = call i32 @ocs_free(i32 %45, %struct.TYPE_11__* %46, i32 %47)
  %49 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %49, i64* %5, align 8
  br label %128

50:                                               ; preds = %30
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* @OCS_MIN_DMA_ALIGNMENT, align 4
  %63 = call i64 @ocs_dma_alloc(i32 %59, i32* %61, i32 4, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %50
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ocs_log_err(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %74 = call i32 @ocs_free(i32 %72, %struct.TYPE_11__* %73, i32 24)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %80 = call i32 @ocs_free(i32 %77, %struct.TYPE_11__* %78, i32 %79)
  %81 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %81, i64* %5, align 8
  br label %128

82:                                               ; preds = %50
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = call i64 @sli_cmd_common_read_transceiver_data(i32* %84, %struct.TYPE_11__* %85, i32 %86, i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %96 = load i32, i32* @ocs_hw_cb_sfp, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = call i64 @ocs_hw_command(%struct.TYPE_12__* %93, %struct.TYPE_11__* %94, i32 %95, i32 %96, %struct.TYPE_11__* %97)
  store i64 %98, i64* %10, align 8
  br label %99

99:                                               ; preds = %92, %82
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %99
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @ocs_log_test(i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = call i32 @ocs_dma_free(i32 %111, i32* %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %119 = call i32 @ocs_free(i32 %117, %struct.TYPE_11__* %118, i32 24)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %124 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %125 = call i32 @ocs_free(i32 %122, %struct.TYPE_11__* %123, i32 %124)
  br label %126

126:                                              ; preds = %103, %99
  %127 = load i64, i64* %10, align 8
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %126, %65, %38, %24
  %129 = load i64, i64* %5, align 8
  ret i64 %129
}

declare dso_local %struct.TYPE_11__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @ocs_dma_alloc(i32, i32*, i32, i32) #1

declare dso_local i64 @sli_cmd_common_read_transceiver_data(i32*, %struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

declare dso_local i32 @ocs_dma_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
