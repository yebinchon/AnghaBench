; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__*, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"bad parameter(s) hw=%p rnode=%p sparms=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Chip is in an error state - reset needed\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no buffer for command\0A\00", align 1
@OCS_HW_RTN_NO_MEMORY = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"bad parameter rnode->index invalid\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"attach to already attached node HLM=%d count=%d\0A\00", align 1
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@OCS_HW_RTN_SUCCESS_SYNC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"reg rpi\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@ocs_hw_cb_node_attach = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"%s error\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"HLM\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"REG_RPI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_node_attach(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %11 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %11, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = icmp ne %struct.TYPE_17__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = icmp ne %struct.TYPE_18__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17, %14, %3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = call i32 (i32, i8*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %21, %struct.TYPE_16__* %22, %struct.TYPE_18__* %23)
  %25 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %25, i64* %4, align 8
  br label %205

26:                                               ; preds = %17
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 4
  %29 = call i64 @sli_fw_error_status(i32* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ocs_log_crit(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %36, i64* %4, align 8
  br label %205

37:                                               ; preds = %26
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %42 = load i32, i32* @OCS_M_NOWAIT, align 4
  %43 = call i32* @ocs_malloc(i32 %40, i32 %41, i32 %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i64, i64* @OCS_HW_RTN_NO_MEMORY, align 8
  store i64 %51, i64* %4, align 8
  br label %205

52:                                               ; preds = %37
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @UINT32_MAX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = call i32 (i32, i8*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %65 = call i32 @ocs_free(i32 %62, i32* %63, i32 %64)
  %66 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %66, i64* %4, align 8
  br label %205

67:                                               ; preds = %52
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = call i64 @ocs_atomic_add_return(i32* %75, i32 1)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %67
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 4
  %82 = call i64 @sli_get_hlm(i32* %81)
  %83 = load i64, i64* @FALSE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 4
  %91 = call i64 @sli_get_hlm(i32* %90)
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @ocs_log_test(i32 %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %91, i64 %92)
  %94 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %94, i64* %8, align 8
  br label %120

95:                                               ; preds = %79
  %96 = load i64, i64* @TRUE, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = call i64 @ocs_atomic_read(i32* %106)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %95
  %115 = load i64, i64* @OCS_HW_RTN_SUCCESS_SYNC, align 8
  br label %118

116:                                              ; preds = %95
  %117 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  store i64 %119, i64* %8, align 8
  br label %120

120:                                              ; preds = %118, %85
  br label %168

121:                                              ; preds = %67
  %122 = load i64, i64* @FALSE, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ocs_display_sparams(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, i32* null, i32 %127)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %121
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %149, %121
  %156 = phi i1 [ false, %121 ], [ %154, %149 ]
  %157 = zext i1 %156 to i32
  %158 = call i64 @sli_cmd_reg_rpi(i32* %130, i32* %131, i32 %132, i32 %135, i32 %138, i32 %143, %struct.TYPE_18__* %144, i32 0, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %164 = load i32, i32* @ocs_hw_cb_node_attach, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %166 = call i64 @ocs_hw_command(%struct.TYPE_17__* %161, i32* %162, i32 %163, i32 %164, %struct.TYPE_16__* %165)
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %160, %155
  br label %168

168:                                              ; preds = %167, %120
  %169 = load i64, i64* %10, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i64, i64* %8, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %203

174:                                              ; preds = %171, %168
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %174
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %180, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = call i32 @ocs_atomic_sub_return(i32* %186, i32 1)
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %10, align 8
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %195 = call i32 (i32, i8*, ...) @ocs_log_err(i32 %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %194)
  br label %196

196:                                              ; preds = %178, %174
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %202 = call i32 @ocs_free(i32 %199, i32* %200, i32 %201)
  br label %203

203:                                              ; preds = %196, %171
  %204 = load i64, i64* %8, align 8
  store i64 %204, i64* %4, align 8
  br label %205

205:                                              ; preds = %203, %58, %46, %31, %20
  %206 = load i64, i64* %4, align 8
  ret i64 %206
}

declare dso_local i32 @ocs_log_err(i32, i8*, ...) #1

declare dso_local i64 @sli_fw_error_status(i32*) #1

declare dso_local i32 @ocs_log_crit(i32, i8*) #1

declare dso_local i32* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

declare dso_local i64 @ocs_atomic_add_return(i32*, i32) #1

declare dso_local i64 @sli_get_hlm(i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64, i64) #1

declare dso_local i64 @ocs_atomic_read(i32*) #1

declare dso_local i32 @ocs_display_sparams(i8*, i8*, i32, i32*, i32) #1

declare dso_local i64 @sli_cmd_reg_rpi(i32*, i32*, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @ocs_hw_command(%struct.TYPE_17__*, i32*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ocs_atomic_sub_return(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
