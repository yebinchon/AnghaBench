; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_port_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_port_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate DMA buffer\0A\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_set_port_protocol_cb1 = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"GET_PROFILE_CONFIG failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_set_port_protocol(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %15, i64* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = call i64 @sli_get_if_type(i32* %17)
  %19 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %22, i64* %6, align 8
  br label %141

23:                                               ; preds = %5
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %28 = load i32, i32* @OCS_M_ZERO, align 4
  %29 = load i32, i32* @OCS_M_NOWAIT, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_11__* @ocs_malloc(i32 %26, i32 %27, i32 %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %12, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %33 = icmp eq %struct.TYPE_11__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ocs_log_err(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %39, i64* %6, align 8
  br label %141

40:                                               ; preds = %23
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OCS_M_NOWAIT, align 4
  %45 = call %struct.TYPE_11__* @ocs_malloc(i32 %43, i32 32, i32 %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %13, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %47 = icmp eq %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ocs_log_err(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %58 = call i32 @ocs_free(i32 %55, %struct.TYPE_11__* %56, i32 %57)
  %59 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %59, i64* %6, align 8
  br label %141

60:                                               ; preds = %40
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = call i64 @ocs_dma_alloc(i32 %75, i32* %77, i32 4096, i32 4)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %60
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ocs_log_err(i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %90 = call i32 @ocs_free(i32 %87, %struct.TYPE_11__* %88, i32 %89)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %95 = call i32 @ocs_free(i32 %93, %struct.TYPE_11__* %94, i32 4)
  %96 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %96, i64* %6, align 8
  br label %141

97:                                               ; preds = %60
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = call i64 @sli_cmd_common_get_profile_config(i32* %99, %struct.TYPE_11__* %100, i32 %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %109 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %110 = load i32, i32* @ocs_hw_set_port_protocol_cb1, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %112 = call i64 @ocs_hw_command(%struct.TYPE_12__* %107, %struct.TYPE_11__* %108, i32 %109, i32 %110, %struct.TYPE_11__* %111)
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %106, %97
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %113
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ocs_log_test(i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %126 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %127 = call i32 @ocs_free(i32 %124, %struct.TYPE_11__* %125, i32 %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %132 = call i32 @ocs_free(i32 %130, %struct.TYPE_11__* %131, i32 4)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = call i32 @ocs_dma_free(i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %117, %113
  %140 = load i64, i64* %14, align 8
  store i64 %140, i64* %6, align 8
  br label %141

141:                                              ; preds = %139, %80, %48, %34, %21
  %142 = load i64, i64* %6, align 8
  ret i64 %142
}

declare dso_local i64 @sli_get_if_type(i32*) #1

declare dso_local %struct.TYPE_11__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @ocs_dma_alloc(i32, i32*, i32, i32) #1

declare dso_local i64 @sli_cmd_common_get_profile_config(i32*, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i32 @ocs_dma_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
