; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_exec_dmtf_clp_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_exec_dmtf_clp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, i32*, i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to malloc cb_arg\00", align 1
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"ocs_hw_command failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"sli_cmd_dmtf_exec_clp_cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, i32*, i32*, i32, i32, i8*)* @ocs_hw_exec_dmtf_clp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_exec_dmtf_clp_cmd(%struct.TYPE_22__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %17, i64* %14, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %22 = load i32, i32* @OCS_M_ZERO, align 4
  %23 = load i32, i32* @OCS_M_NOWAIT, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.TYPE_21__* @ocs_malloc(i32 %20, i32 %21, i32 %24)
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %16, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %27 = icmp eq %struct.TYPE_21__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ocs_log_err(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %33, i64* %7, align 8
  br label %153

34:                                               ; preds = %6
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @OCS_M_NOWAIT, align 4
  %39 = call %struct.TYPE_21__* @ocs_malloc(i32 %37, i32 40, i32 %38)
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %15, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %41 = icmp eq %struct.TYPE_21__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ocs_log_err(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %51 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %52 = call i32 @ocs_free(i32 %49, %struct.TYPE_21__* %50, i32 %51)
  %53 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %53, i64* %7, align 8
  br label %153

54:                                               ; preds = %34
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %70 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 @sli_cmd_dmtf_exec_clp_cmd(%struct.TYPE_23__* %68, %struct.TYPE_21__* %69, i32 %70, i32* %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %134

75:                                               ; preds = %54
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %80 = call i64 @ocs_hw_command(%struct.TYPE_22__* %76, %struct.TYPE_21__* %77, i32 %78, i32 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*)* @ocs_hw_dmtf_clp_cb, %struct.TYPE_21__* %79)
  store i64 %80, i64* %14, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @OCS_CMD_POLL, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %75
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %96 = call i32 @ocs_memcpy(%struct.TYPE_21__* %89, i32 %94, i32 %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %100 = call i32 @ocs_hw_dmtf_clp_cb(%struct.TYPE_22__* %97, i32 0, %struct.TYPE_21__* %98, %struct.TYPE_21__* %99)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %14, align 8
  br label %104

104:                                              ; preds = %88, %84, %75
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @OCS_CMD_POLL, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %108, %104
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ocs_log_test(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %112
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %126 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %127 = call i32 @ocs_free(i32 %124, %struct.TYPE_21__* %125, i32 %126)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %132 = call i32 @ocs_free(i32 %130, %struct.TYPE_21__* %131, i32 40)
  br label %133

133:                                              ; preds = %121, %108
  br label %151

134:                                              ; preds = %54
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ocs_log_test(i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %139, i64* %14, align 8
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %144 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %145 = call i32 @ocs_free(i32 %142, %struct.TYPE_21__* %143, i32 %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %150 = call i32 @ocs_free(i32 %148, %struct.TYPE_21__* %149, i32 40)
  br label %151

151:                                              ; preds = %134, %133
  %152 = load i64, i64* %14, align 8
  store i64 %152, i64* %7, align 8
  br label %153

153:                                              ; preds = %151, %42, %28
  %154 = load i64, i64* %7, align 8
  ret i64 %154
}

declare dso_local %struct.TYPE_21__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i64 @sli_cmd_dmtf_exec_clp_cmd(%struct.TYPE_23__*, %struct.TYPE_21__*, i32, i32*, i32*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*)*, %struct.TYPE_21__*) #1

declare dso_local i32 @ocs_hw_dmtf_clp_cb(%struct.TYPE_22__*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
