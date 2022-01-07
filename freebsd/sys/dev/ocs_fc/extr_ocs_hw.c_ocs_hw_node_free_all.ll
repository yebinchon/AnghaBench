; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"bad parameter hw=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Chip is in an error state - reset needed\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no buffer for command\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@SLI_RSRC_FCOE_FCFI = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_node_free_all = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"UNREG_RPI failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_node_free_all(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i32 (i32, i8*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %10)
  %12 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %12, i64* %2, align 8
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i64 @sli_fw_error_status(i32* %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ocs_log_crit(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %72

24:                                               ; preds = %13
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %29 = load i32, i32* @OCS_M_NOWAIT, align 4
  %30 = call i32* @ocs_malloc(i32 %27, i32 %28, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %38, i64* %2, align 8
  br label %72

39:                                               ; preds = %24
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %44 = load i32, i32* @SLI_RSRC_FCOE_FCFI, align 4
  %45 = load i32, i32* @UINT32_MAX, align 4
  %46 = call i64 @sli_cmd_unreg_rpi(i32* %41, i32* %42, i32 %43, i32 65535, i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %52 = load i32, i32* @ocs_hw_cb_node_free_all, align 4
  %53 = call i64 @ocs_hw_command(%struct.TYPE_4__* %49, i32* %50, i32 %51, i32 %52, i32* null)
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %48, %39
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %68 = call i32 @ocs_free(i32 %65, i32* %66, i32 %67)
  %69 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %58, %54
  %71 = load i64, i64* %5, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %70, %33, %18, %9
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i64 @sli_fw_error_status(i32*) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i32* @ocs_malloc(i32, i32, i32) #1

declare dso_local i64 @sli_cmd_unreg_rpi(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_4__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
