; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_linkcfg_skyhawk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_set_linkcfg_skyhawk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8*, i32 }

@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Link config %d not supported by Skyhawk\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SET_RECONFIG_LINK_ID failed\0A\00", align 1
@OCS_CMD_POLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32, i64, i32, i8*)* @ocs_hw_set_linkcfg_skyhawk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_set_linkcfg_skyhawk(%struct.TYPE_18__* %0, i32 %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @ocs_hw_config_id_from_linkcfg(i32 %17)
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ocs_log_test(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %27, i64* %6, align 8
  br label %135

28:                                               ; preds = %5
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %33 = load i32, i32* @OCS_M_ZERO, align 4
  %34 = load i32, i32* @OCS_M_NOWAIT, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.TYPE_17__* @ocs_malloc(i32 %31, i32 %32, i32 %35)
  store %struct.TYPE_17__* %36, %struct.TYPE_17__** %12, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = icmp eq %struct.TYPE_17__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocs_log_err(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %44, i64* %6, align 8
  br label %135

45:                                               ; preds = %28
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @OCS_M_NOWAIT, align 4
  %50 = call %struct.TYPE_17__* @ocs_malloc(i32 %48, i32 16, i32 %49)
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %13, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %52 = icmp eq %struct.TYPE_17__* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ocs_log_err(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %62 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %63 = call i32 @ocs_free(i32 %60, %struct.TYPE_17__* %61, i32 %62)
  %64 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %64, i64* %6, align 8
  br label %135

65:                                               ; preds = %45
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %75 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %76 = load i64, i64* %15, align 8
  %77 = call i64 @sli_cmd_common_set_reconfig_link_id(i32* %73, %struct.TYPE_17__* %74, i32 %75, i32* null, i32 0, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %65
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %84 = call i64 @ocs_hw_command(%struct.TYPE_18__* %80, %struct.TYPE_17__* %81, i64 %82, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*)* @ocs_hw_set_active_link_config_cb, %struct.TYPE_17__* %83)
  store i64 %84, i64* %14, align 8
  br label %85

85:                                               ; preds = %79, %65
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ocs_log_err(i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %98 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %99 = call i32 @ocs_free(i32 %96, %struct.TYPE_17__* %97, i32 %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %104 = call i32 @ocs_free(i32 %102, %struct.TYPE_17__* %103, i32 16)
  br label %133

105:                                              ; preds = %85
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @OCS_CMD_POLL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %113 = call i32 @ocs_hw_set_active_link_config_cb(%struct.TYPE_18__* %110, i32 0, %struct.TYPE_17__* %111, %struct.TYPE_17__* %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %118 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %119 = call i32 @ocs_free(i32 %116, %struct.TYPE_17__* %117, i32 %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %124 = call i32 @ocs_free(i32 %122, %struct.TYPE_17__* %123, i32 16)
  br label %132

125:                                              ; preds = %105
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %130 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %131 = call i32 @ocs_free(i32 %128, %struct.TYPE_17__* %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %109
  br label %133

133:                                              ; preds = %132, %89
  %134 = load i64, i64* %14, align 8
  store i64 %134, i64* %6, align 8
  br label %135

135:                                              ; preds = %133, %53, %39, %21
  %136 = load i64, i64* %6, align 8
  ret i64 %136
}

declare dso_local i64 @ocs_hw_config_id_from_linkcfg(i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @sli_cmd_common_set_reconfig_link_id(i32*, %struct.TYPE_17__*, i32, i32*, i32, i64) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_18__*, %struct.TYPE_17__*, i64, i32 (%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*)*, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_hw_set_active_link_config_cb(%struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
