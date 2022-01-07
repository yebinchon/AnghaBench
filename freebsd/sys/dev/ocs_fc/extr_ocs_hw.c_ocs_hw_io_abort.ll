; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32*, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__, %struct.TYPE_18__*, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@SLI_ABORT_MAX = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"bad parameter hw=%p io=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i64 0, align 8
@OCS_HW_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot send IO abort, HW state=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"io not active xri=0x%x tag=0x%x\0A\00", align 1
@OCS_HW_RTN_IO_NOT_ACTIVE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"io_to_abort xri=0x%x not active on WQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"io already being aborted xri=0x%x tag=0x%x\0A\00", align 1
@OCS_HW_RTN_IO_ABORT_IN_PROGRESS = common dso_local global i64 0, align 8
@SLI_ABORT_XRI = common dso_local global i32 0, align 4
@ocs_hw_wq_process_abort = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"can't allocate request tag\0A\00", align 1
@OCS_HW_RTN_NO_RESOURCES = common dso_local global i64 0, align 8
@SLI4_CQ_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"ABORT WQE error\0A\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ocs_hw_io_abort(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* @SLI_ABORT_MAX, align 4
  store i32 %17, i32* %12, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %18 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  store i64 %18, i64* %15, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = icmp ne %struct.TYPE_21__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %23 = icmp ne %struct.TYPE_22__* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %21, %5
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32* [ %30, %27 ], [ null, %31 ]
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = call i32 (i32*, i8*, ...) @ocs_log_err(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %34, %struct.TYPE_22__* %35)
  %37 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %37, i64* %6, align 8
  br label %290

38:                                               ; preds = %21
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCS_HW_STATE_ACTIVE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32*, i8*, ...) @ocs_log_err(i32* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %52, i64* %6, align 8
  br label %290

53:                                               ; preds = %38
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = call i64 @ocs_ref_get_unless_zero(i32* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %60 = icmp ne %struct.TYPE_21__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32* [ %64, %61 ], [ null, %65 ]
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32*, i8*, i8*, ...) @ocs_log_test(i32* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %73)
  %75 = load i64, i64* @OCS_HW_RTN_IO_NOT_ACTIVE, align 8
  store i64 %75, i64* %6, align 8
  br label %290

76:                                               ; preds = %53
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = icmp eq %struct.TYPE_18__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i32*, i8*, i8*, ...) @ocs_log_test(i32* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = call i32 @ocs_ref_put(i32* %90)
  %92 = load i64, i64* @OCS_HW_RTN_IO_NOT_ACTIVE, align 8
  store i64 %92, i64* %6, align 8
  br label %290

93:                                               ; preds = %76
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = call i32 @ocs_lock(i32* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %93
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = call i32 @ocs_unlock(i32* %103)
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = call i32 @ocs_ref_put(i32* %106)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %109 = icmp ne %struct.TYPE_21__* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  br label %115

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i32* [ %113, %110 ], [ null, %114 ]
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 5
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ocs_log_debug(i32* %116, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %119, i32 %122)
  %124 = load i64, i64* @OCS_HW_RTN_IO_ABORT_IN_PROGRESS, align 8
  store i64 %124, i64* %6, align 8
  br label %290

125:                                              ; preds = %93
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = call i32 @ocs_unlock(i32* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 7
  store i8* %131, i8** %133, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @SLI_ABORT_XRI, align 4
  store i32 %137, i32* %12, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 5
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %13, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %142 = load i32, i32* @ocs_hw_wq_process_abort, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %144 = call %struct.TYPE_23__* @ocs_hw_reqtag_alloc(%struct.TYPE_21__* %141, i32 %142, %struct.TYPE_22__* %143)
  store %struct.TYPE_23__* %144, %struct.TYPE_23__** %16, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %146 = icmp eq %struct.TYPE_23__* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %125
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 (i32*, i8*, ...) @ocs_log_err(i32* %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i64, i64* @OCS_HW_RTN_NO_RESOURCES, align 8
  store i64 %152, i64* %6, align 8
  br label %290

153:                                              ; preds = %125
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = icmp ne %struct.TYPE_18__* %161, null
  br i1 %162, label %163, label %206

163:                                              ; preds = %153
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @sli_queue_lock(i32 %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 5
  %173 = call i64 @ocs_list_on_list(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %163
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 4
  store i8* %179, i8** %182, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 3
  store i8* %183, i8** %186, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  store i32 %189, i32* %192, align 8
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @sli_queue_unlock(i32 %197)
  store i64 0, i64* %6, align 8
  br label %290

199:                                              ; preds = %163
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @sli_queue_unlock(i32 %204)
  br label %206

206:                                              ; preds = %199, %153
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = load i8*, i8** %9, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = load i8*, i8** %14, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %226 = call i64 @sli_abort_wqe(%struct.TYPE_24__* %208, i32 %212, i32 %217, i32 %218, i8* %219, i8* %220, i8* %221, i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %206
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 (i32*, i8*, ...) @ocs_log_err(i32* %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %233 = load i32, i32* @UINT32_MAX, align 4
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 8
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %238 = call i32 @ocs_hw_reqtag_free(%struct.TYPE_21__* %236, %struct.TYPE_23__* %237)
  %239 = load i64, i64* @OCS_HW_RTN_ERROR, align 8
  store i64 %239, i64* %15, align 8
  br label %240

240:                                              ; preds = %228, %206
  %241 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %242 = load i64, i64* %15, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %272

244:                                              ; preds = %240
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %246, align 8
  %248 = icmp eq %struct.TYPE_18__* %247, null
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %252 = call %struct.TYPE_18__* @ocs_hw_queue_next_wq(%struct.TYPE_21__* %250, %struct.TYPE_22__* %251)
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 3
  store %struct.TYPE_18__* %252, %struct.TYPE_18__** %254, align 8
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  %258 = icmp ne %struct.TYPE_18__* %257, null
  %259 = zext i1 %258 to i32
  %260 = call i32 @ocs_hw_assert(i32 %259)
  br label %261

261:                                              ; preds = %249, %244
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %263, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 2
  %267 = call i64 @hw_wq_write(%struct.TYPE_18__* %264, %struct.TYPE_19__* %266)
  store i64 %267, i64* %15, align 8
  %268 = load i64, i64* %15, align 8
  %269 = icmp sgt i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %261
  store i64 0, i64* %15, align 8
  br label %271

271:                                              ; preds = %270, %261
  br label %272

272:                                              ; preds = %271, %240
  %273 = load i64, i64* @OCS_HW_RTN_SUCCESS, align 8
  %274 = load i64, i64* %15, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %272
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 0
  %279 = call i32 @ocs_lock(i32* %278)
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 0
  store i32 0, i32* %281, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  %284 = call i32 @ocs_unlock(i32* %283)
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 1
  %287 = call i32 @ocs_ref_put(i32* %286)
  br label %288

288:                                              ; preds = %276, %272
  %289 = load i64, i64* %15, align 8
  store i64 %289, i64* %6, align 8
  br label %290

290:                                              ; preds = %288, %175, %147, %115, %81, %66, %44, %32
  %291 = load i64, i64* %6, align 8
  ret i64 %291
}

declare dso_local i32 @ocs_log_err(i32*, i8*, ...) #1

declare dso_local i64 @ocs_ref_get_unless_zero(i32*) #1

declare dso_local i32 @ocs_log_test(i32*, i8*, i8*, ...) #1

declare dso_local i32 @ocs_ref_put(i32*) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_log_debug(i32*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @ocs_hw_reqtag_alloc(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @sli_queue_lock(i32) #1

declare dso_local i64 @ocs_list_on_list(i32*) #1

declare dso_local i32 @sli_queue_unlock(i32) #1

declare dso_local i64 @sli_abort_wqe(%struct.TYPE_24__*, i32, i32, i32, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ocs_hw_reqtag_free(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_18__* @ocs_hw_queue_next_wq(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i64 @hw_wq_write(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
