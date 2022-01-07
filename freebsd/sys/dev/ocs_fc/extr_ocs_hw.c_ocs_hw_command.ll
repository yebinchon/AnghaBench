; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_18__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i8*, i8*, i8* }

@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_REG_SLIPORT_ERROR1 = common dso_local global i32 0, align 4
@SLI4_REG_SLIPORT_ERROR2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Emulex: Heartbeat expired after %d seconds\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Chip is in an error state - reset needed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"status=%#x error1=%#x error2=%#x\0A\00", align 1
@SLI4_REG_SLIPORT_STATUS = common dso_local global i32 0, align 4
@OCS_CMD_POLL = common dso_local global i32 0, align 4
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"can't allocate command context\0A\00", align 1
@OCS_HW_RTN_NO_RESOURCES = common dso_local global i32 0, align 4
@OCS_HW_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Can't send command, HW state=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_command(%struct.TYPE_15__* %0, i8* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 5
  %20 = call i64 @sli_fw_error_status(%struct.TYPE_17__* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %5
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 5
  %25 = load i32, i32* @SLI4_REG_SLIPORT_ERROR1, align 4
  %26 = call i32 @sli_reg_read(%struct.TYPE_17__* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 5
  %29 = load i32, i32* @SLI4_REG_SLIPORT_ERROR2, align 4
  %30 = call i32 @sli_reg_read(%struct.TYPE_17__* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %22
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @ocs_log_crit(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %41, %38, %35, %22
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @ocs_log_crit(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 5
  %61 = load i32, i32* @SLI4_REG_SLIPORT_STATUS, align 4
  %62 = call i32 @sli_reg_read(%struct.TYPE_17__* %60, i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 (i32, i8*, ...) @ocs_log_crit(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %66, i32* %6, align 4
  br label %195

67:                                               ; preds = %5
  %68 = load i32, i32* @OCS_CMD_POLL, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %67
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = call i32 @ocs_lock(i32* %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = call i32 @sli_queue_is_empty(%struct.TYPE_17__* %83, %struct.TYPE_18__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %90, i32* %12, align 4
  br label %115

91:                                               ; preds = %81, %71
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %15, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %99 = call i32 @ocs_memset(i8* %97, i32 0, i32 %98)
  %100 = load i8*, i8** %15, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %103 = call i32 @ocs_memcpy(i8* %100, i8* %101, i32 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 5
  %106 = call i64 @sli_bmbx_command(%struct.TYPE_17__* %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %91
  %109 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %113 = call i32 @ocs_memcpy(i8* %110, i8* %111, i32 %112)
  br label %114

114:                                              ; preds = %108, %91
  br label %115

115:                                              ; preds = %114, %89
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = call i32 @ocs_unlock(i32* %117)
  br label %193

119:                                              ; preds = %67
  %120 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %192

123:                                              ; preds = %119
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %16, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @OCS_M_ZERO, align 4
  %128 = load i32, i32* @OCS_M_NOWAIT, align 4
  %129 = or i32 %127, %128
  %130 = call %struct.TYPE_16__* @ocs_malloc(i32 %126, i32 32, i32 %129)
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %16, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %132 = icmp ne %struct.TYPE_16__* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %123
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @OCS_HW_RTN_NO_RESOURCES, align 4
  store i32 %138, i32* %6, align 4
  br label %195

139:                                              ; preds = %123
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @OCS_HW_STATE_ACTIVE, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %139
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %157 = call i32 @ocs_free(i32 %155, %struct.TYPE_16__* %156, i32 32)
  %158 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %158, i32* %6, align 4
  br label %195

159:                                              ; preds = %139
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i8*, i8** %10, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  br label %169

169:                                              ; preds = %162, %159
  %170 = load i8*, i8** %8, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store %struct.TYPE_15__* %173, %struct.TYPE_15__** %175, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = call i32 @ocs_lock(i32* %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %182 = call i32 @ocs_list_add_tail(i32* %180, %struct.TYPE_16__* %181)
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %184 = call i64 @ocs_hw_cmd_submit_pending(%struct.TYPE_15__* %183)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %169
  %187 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %186, %169
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 2
  %191 = call i32 @ocs_unlock(i32* %190)
  br label %192

192:                                              ; preds = %188, %119
  br label %193

193:                                              ; preds = %192, %115
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %193, %145, %133, %51
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i64 @sli_fw_error_status(%struct.TYPE_17__*) #1

declare dso_local i32 @sli_reg_read(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ocs_log_crit(i32, i8*, ...) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @sli_queue_is_empty(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ocs_memset(i8*, i32, i32) #1

declare dso_local i32 @ocs_memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sli_bmbx_command(%struct.TYPE_17__*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local %struct.TYPE_16__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @ocs_hw_cmd_submit_pending(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
