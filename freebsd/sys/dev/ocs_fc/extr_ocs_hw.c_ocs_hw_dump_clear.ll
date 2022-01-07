; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_dump_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_dump_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@OCS_HW_STATE_ACTIVE = common dso_local global i64 0, align 8
@OCS_CMD_NOWAIT = common dso_local global i64 0, align 8
@OCS_CMD_POLL = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Function only supported for I/F type 2\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/dbg/dump.bin\00", align 1
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"COMMON_DELETE_OBJECT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_dump_clear(%struct.TYPE_23__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCS_HW_STATE_ACTIVE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @OCS_CMD_NOWAIT, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load i64, i64* @OCS_CMD_POLL, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 2
  %27 = call i64 @sli_get_if_type(%struct.TYPE_24__* %26)
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ocs_log_test(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %34, i64* %4, align 8
  br label %136

35:                                               ; preds = %22
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %40 = load i32, i32* @OCS_M_ZERO, align 4
  %41 = load i32, i32* @OCS_M_NOWAIT, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.TYPE_22__* @ocs_malloc(i32 %38, i32 %39, i32 %42)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %9, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %45 = icmp eq %struct.TYPE_22__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ocs_log_err(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %51, i64* %4, align 8
  br label %136

52:                                               ; preds = %35
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OCS_M_NOWAIT, align 4
  %57 = call %struct.TYPE_22__* @ocs_malloc(i32 %55, i32 24, i32 %56)
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %10, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %59 = icmp eq %struct.TYPE_22__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ocs_log_err(i32 %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %69 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %70 = call i32 @ocs_free(i32 %67, %struct.TYPE_22__* %68, i32 %69)
  %71 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %71, i64* %4, align 8
  br label %136

72:                                               ; preds = %52
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  store %struct.TYPE_22__* %79, %struct.TYPE_22__** %81, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %85 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %86 = call i64 @sli_cmd_common_delete_object(%struct.TYPE_24__* %83, %struct.TYPE_22__* %84, i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %72
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %93 = call i64 @ocs_hw_command(%struct.TYPE_23__* %89, %struct.TYPE_22__* %90, i64 %91, i64 (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, %struct.TYPE_22__*)* @ocs_hw_cb_dump_clear, %struct.TYPE_22__* %92)
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %88
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @OCS_CMD_POLL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %108 = call i32 @ocs_memcpy(%struct.TYPE_22__* %101, i32 %106, i32 %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %112 = call i64 @ocs_hw_cb_dump_clear(%struct.TYPE_23__* %109, i32 0, %struct.TYPE_22__* %110, %struct.TYPE_22__* %111)
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %100, %96, %88
  br label %114

114:                                              ; preds = %113, %72
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ocs_log_test(i32 %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %127 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %128 = call i32 @ocs_free(i32 %125, %struct.TYPE_22__* %126, i32 %127)
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %133 = call i32 @ocs_free(i32 %131, %struct.TYPE_22__* %132, i32 24)
  br label %134

134:                                              ; preds = %118, %114
  %135 = load i64, i64* %8, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %134, %60, %46, %29
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i64 @sli_get_if_type(%struct.TYPE_24__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local %struct.TYPE_22__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i64 @sli_cmd_common_delete_object(%struct.TYPE_24__*, %struct.TYPE_22__*, i32, i8*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_23__*, %struct.TYPE_22__*, i64, i64 (%struct.TYPE_23__*, i32, %struct.TYPE_22__*, %struct.TYPE_22__*)*, %struct.TYPE_22__*) #1

declare dso_local i64 @ocs_hw_cb_dump_clear(%struct.TYPE_23__*, i32, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
