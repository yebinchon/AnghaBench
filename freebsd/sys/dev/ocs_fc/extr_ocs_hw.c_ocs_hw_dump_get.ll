; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_dump_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_dump_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, i8*, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@OCS_HW_STATE_ACTIVE = common dso_local global i64 0, align 8
@OCS_CMD_NOWAIT = common dso_local global i64 0, align 8
@OCS_CMD_POLL = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Function only supported for I/F type 2\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"No dump is present\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"device reset required\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to malloc mbox\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to malloc cb_arg\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"/dbg/dump.bin\00", align 1
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"COMMON_READ_OBJECT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_dump_get(%struct.TYPE_25__* %0, i32* %1, i64 %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %18, i64* %14, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OCS_HW_STATE_ACTIVE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* @OCS_CMD_NOWAIT, align 8
  br label %28

26:                                               ; preds = %6
  %27 = load i64, i64* @OCS_CMD_POLL, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 2
  %33 = call i64 @sli_get_if_type(%struct.TYPE_26__* %32)
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ocs_log_test(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %40 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %40, i64* %7, align 8
  br label %167

41:                                               ; preds = %28
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 2
  %44 = call i32 @sli_dump_is_present(%struct.TYPE_26__* %43)
  %45 = icmp ne i32 1, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ocs_log_test(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %51, i64* %7, align 8
  br label %167

52:                                               ; preds = %41
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 2
  %55 = call i32 @sli_reset_required(%struct.TYPE_26__* %54)
  %56 = icmp eq i32 1, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ocs_log_test(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %62, i64* %7, align 8
  br label %167

63:                                               ; preds = %52
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %68 = load i32, i32* @OCS_M_ZERO, align 4
  %69 = load i32, i32* @OCS_M_NOWAIT, align 4
  %70 = or i32 %68, %69
  %71 = call %struct.TYPE_24__* @ocs_malloc(i32 %66, i32 %67, i32 %70)
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %15, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %73 = icmp eq %struct.TYPE_24__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ocs_log_err(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %79, i64* %7, align 8
  br label %167

80:                                               ; preds = %63
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @OCS_M_NOWAIT, align 4
  %85 = call %struct.TYPE_24__* @ocs_malloc(i32 %83, i32 24, i32 %84)
  store %struct.TYPE_24__* %85, %struct.TYPE_24__** %16, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %87 = icmp eq %struct.TYPE_24__* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ocs_log_err(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %97 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %98 = call i32 @ocs_free(i32 %95, %struct.TYPE_24__* %96, i32 %97)
  %99 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %99, i64* %7, align 8
  br label %167

100:                                              ; preds = %80
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  store %struct.TYPE_24__* %107, %struct.TYPE_24__** %109, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %113 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call i64 @sli_cmd_common_read_object(%struct.TYPE_26__* %111, %struct.TYPE_24__* %112, i32 %113, i64 %114, i64 %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %100
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %124 = call i64 @ocs_hw_command(%struct.TYPE_25__* %120, %struct.TYPE_24__* %121, i64 %122, i64 (%struct.TYPE_25__*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*)* @ocs_hw_cb_dump_get, %struct.TYPE_24__* %123)
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %14, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %119
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* @OCS_CMD_POLL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %139 = call i32 @ocs_memcpy(%struct.TYPE_24__* %132, i32 %137, i32 %138)
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %143 = call i64 @ocs_hw_cb_dump_get(%struct.TYPE_25__* %140, i32 0, %struct.TYPE_24__* %141, %struct.TYPE_24__* %142)
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %131, %127, %119
  br label %145

145:                                              ; preds = %144, %100
  %146 = load i64, i64* %14, align 8
  %147 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ocs_log_test(i32 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %158 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %159 = call i32 @ocs_free(i32 %156, %struct.TYPE_24__* %157, i32 %158)
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %164 = call i32 @ocs_free(i32 %162, %struct.TYPE_24__* %163, i32 24)
  br label %165

165:                                              ; preds = %149, %145
  %166 = load i64, i64* %14, align 8
  store i64 %166, i64* %7, align 8
  br label %167

167:                                              ; preds = %165, %88, %74, %57, %46, %35
  %168 = load i64, i64* %7, align 8
  ret i64 %168
}

declare dso_local i64 @sli_get_if_type(%struct.TYPE_26__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i32 @sli_dump_is_present(%struct.TYPE_26__*) #1

declare dso_local i32 @sli_reset_required(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_24__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @sli_cmd_common_read_object(%struct.TYPE_26__*, %struct.TYPE_24__*, i32, i64, i64, i8*, i32*) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_25__*, %struct.TYPE_24__*, i64, i64 (%struct.TYPE_25__*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*)*, %struct.TYPE_24__*) #1

declare dso_local i64 @ocs_hw_cb_dump_get(%struct.TYPE_25__*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ocs_memcpy(%struct.TYPE_24__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
