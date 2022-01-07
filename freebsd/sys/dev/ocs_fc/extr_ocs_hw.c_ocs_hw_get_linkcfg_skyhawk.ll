; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_linkcfg_skyhawk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_linkcfg_skyhawk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i8*, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate DMA buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"GET_RECONFIG_LINK_INFO failed\0A\00", align 1
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32, i32, i8*)* @ocs_hw_get_linkcfg_skyhawk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_get_linkcfg_skyhawk(%struct.TYPE_18__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %18 = load i32, i32* @OCS_M_ZERO, align 4
  %19 = load i32, i32* @OCS_M_NOWAIT, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.TYPE_17__* @ocs_malloc(i32 %16, i32 %17, i32 %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %10, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = icmp eq %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ocs_log_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %29, i64* %5, align 8
  br label %161

30:                                               ; preds = %4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OCS_M_NOWAIT, align 4
  %35 = call %struct.TYPE_17__* @ocs_malloc(i32 %33, i32 24, i32 %34)
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %11, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = icmp eq %struct.TYPE_17__* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %30
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ocs_log_err(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %48 = call i32 @ocs_free(i32 %45, %struct.TYPE_17__* %46, i32 %47)
  %49 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %49, i64* %5, align 8
  br label %161

50:                                               ; preds = %30
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = call i64 @ocs_dma_alloc(i32 %62, i32* %64, i32 4, i32 4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %50
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ocs_log_err(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %77 = call i32 @ocs_free(i32 %74, %struct.TYPE_17__* %75, i32 %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %82 = call i32 @ocs_free(i32 %80, %struct.TYPE_17__* %81, i32 24)
  %83 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %83, i64* %5, align 8
  br label %161

84:                                               ; preds = %50
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = call i64 @sli_cmd_common_get_reconfig_link_info(i32* %86, %struct.TYPE_17__* %87, i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = call i64 @ocs_hw_command(%struct.TYPE_18__* %94, %struct.TYPE_17__* %95, i32 %96, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*)* @ocs_hw_get_active_link_config_cb, %struct.TYPE_17__* %97)
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %93, %84
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ocs_log_err(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %113 = call i32 @ocs_free(i32 %110, %struct.TYPE_17__* %111, i32 %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = call i32 @ocs_dma_free(i32 %116, i32* %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %124 = call i32 @ocs_free(i32 %122, %struct.TYPE_17__* %123, i32 24)
  br label %159

125:                                              ; preds = %99
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @OCS_CMD_POLL, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %133 = call i32 @ocs_hw_get_active_link_config_cb(%struct.TYPE_18__* %130, i32 0, %struct.TYPE_17__* %131, %struct.TYPE_17__* %132)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %139 = call i32 @ocs_free(i32 %136, %struct.TYPE_17__* %137, i32 %138)
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = call i32 @ocs_dma_free(i32 %142, i32* %144)
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %150 = call i32 @ocs_free(i32 %148, %struct.TYPE_17__* %149, i32 24)
  br label %158

151:                                              ; preds = %125
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %156 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %157 = call i32 @ocs_free(i32 %154, %struct.TYPE_17__* %155, i32 %156)
  br label %158

158:                                              ; preds = %151, %129
  br label %159

159:                                              ; preds = %158, %103
  %160 = load i64, i64* %12, align 8
  store i64 %160, i64* %5, align 8
  br label %161

161:                                              ; preds = %159, %67, %38, %24
  %162 = load i64, i64* %5, align 8
  ret i64 %162
}

declare dso_local %struct.TYPE_17__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @ocs_dma_alloc(i32, i32*, i32, i32) #1

declare dso_local i64 @sli_cmd_common_get_reconfig_link_info(i32*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*)*, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_hw_get_active_link_config_cb(%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_dma_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
