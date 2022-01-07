; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i64, i32, i64 }

@OCS_HW_RTN_SUCCESS_SYNC = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"bad parameter(s) hw=%p rnode=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Chip is in an error state - reset needed\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no buffer for command\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Invalid count with HLM disabled, count=%d\0A\00", align 1
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_node_free = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"UNREG_RPI failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_node_detach(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load i64, i64* @OCS_HW_RTN_SUCCESS_SYNC, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* @UINT32_MAX, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = call i32 (i32, i8*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %19, %struct.TYPE_9__* %20)
  %22 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %22, i64* %3, align 8
  br label %139

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = call i64 @sli_fw_error_status(i32* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ocs_log_crit(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %33, i64* %3, align 8
  br label %139

34:                                               ; preds = %23
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %137

42:                                               ; preds = %34
  store i64 0, i64* %9, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* @OCS_HW_RTN_SUCCESS_SYNC, align 8
  store i64 %48, i64* %3, align 8
  br label %139

49:                                               ; preds = %42
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %54 = load i32, i32* @OCS_M_NOWAIT, align 4
  %55 = call i32* @ocs_malloc(i32 %52, i32 %53, i32 %54)
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %63, i64* %3, align 8
  br label %139

64:                                               ; preds = %49
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = call i64 @ocs_atomic_sub_return(i32* %70, i32 1)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ule i64 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load i64, i64* @UINT32_MAX, align 8
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %100

82:                                               ; preds = %64
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = call i64 @sli_get_hlm(i32* %84)
  %86 = load i64, i64* @FALSE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @ocs_log_test(i32 %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 16777215
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %94, %74
  %101 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %101, i64* %7, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %110 = load i64, i64* %10, align 8
  %111 = call i64 @sli_cmd_unreg_rpi(i32* %103, i32* %104, i32 %105, i32 %108, i32 %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %100
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %117 = load i32, i32* @ocs_hw_cb_node_free, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = call i64 @ocs_hw_command(%struct.TYPE_10__* %114, i32* %115, i32 %116, i32 %117, %struct.TYPE_9__* %118)
  store i64 %119, i64* %7, align 8
  br label %120

120:                                              ; preds = %113, %100
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %134 = call i32 @ocs_free(i32 %131, i32* %132, i32 %133)
  %135 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %135, i64* %7, align 8
  br label %136

136:                                              ; preds = %124, %120
  br label %137

137:                                              ; preds = %136, %34
  %138 = load i64, i64* %7, align 8
  store i64 %138, i64* %3, align 8
  br label %139

139:                                              ; preds = %137, %58, %47, %28, %18
  %140 = load i64, i64* %3, align 8
  ret i64 %140
}

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i64 @sli_fw_error_status(i32*) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i32* @ocs_malloc(i32, i32, i32) #1

declare dso_local i64 @ocs_atomic_sub_return(i32*, i32) #1

declare dso_local i64 @sli_get_hlm(i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

declare dso_local i64 @sli_cmd_unreg_rpi(i32*, i32*, i32, i32, i32, i64) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_10__*, i32*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
