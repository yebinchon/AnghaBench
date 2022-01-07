; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fc_rqe_rqid_and_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fc_rqe_rqid_and_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@SLI4_CQE_CODE_OFFSET = common dso_local global i64 0, align 8
@SLI4_CQE_CODE_RQ_ASYNC = common dso_local global i64 0, align 8
@SLI4_FC_ASYNC_RQ_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"status=%02x (%s) rq_id=%d, index=%x pdpl=%x sof=%02x eof=%02x hdpl=%x\0A\00", align 1
@SLI4_CQE_CODE_RQ_ASYNC_V1 = common dso_local global i64 0, align 8
@SLI4_CQE_CODE_OPTIMIZED_WRITE_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"status=%02x (%s) rq_id=%d, index=%x pdpl=%x hdpl=%x oox=%d agxr=%d xri=0x%x rpi=0x%x\0A\00", align 1
@SLI4_CQE_CODE_RQ_COALESCING = common dso_local global i64 0, align 8
@SLI4_FC_COALESCE_RQ_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"status=%02x (%s) rq_id=%d, index=%x rq_id=%#x sdpl=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"status=%02x rq_id=%d, index=%x pdpl=%x sof=%02x eof=%02x hdpl=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fc_rqe_rqid_and_index(%struct.TYPE_7__* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = bitcast i64* %15 to i8*
  %17 = bitcast i8* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = bitcast i64* %18 to i8*
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  store i32 -1, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @UINT32_MAX, align 4
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* @SLI4_CQE_CODE_OFFSET, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @SLI4_CQE_CODE_RQ_ASYNC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %87

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i64, i64* @SLI4_FC_ASYNC_RQ_SUCCESS, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %11, align 4
  br label %86

46:                                               ; preds = %31
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @sli_fc_get_status_string(i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32, ...) @ocs_log_test(i32 %57, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %46, %41
  br label %307

87:                                               ; preds = %4
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @SLI4_CQE_CODE_RQ_ASYNC_V1, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %147

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i64, i64* @SLI4_FC_ASYNC_RQ_SUCCESS, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  store i32 0, i32* %11, align 4
  br label %146

106:                                              ; preds = %91
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @sli_fc_get_status_string(i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32, ...) @ocs_log_test(i32 %117, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %121, i32 %126, i32 %129, i32 %132, i32 %135, i32 %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %106, %101
  br label %306

147:                                              ; preds = %87
  %148 = load i64, i64* %12, align 8
  %149 = load i64, i64* @SLI4_CQE_CODE_OPTIMIZED_WRITE_CMD, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %216

151:                                              ; preds = %147
  %152 = load i64*, i64** %6, align 8
  %153 = bitcast i64* %152 to i8*
  %154 = bitcast i8* %153 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %154, %struct.TYPE_8__** %13, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  %159 = load i64, i64* @SLI4_FC_ASYNC_RQ_SUCCESS, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %151
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %8, align 8
  store i32 %167, i32* %168, align 4
  store i32 0, i32* %11, align 4
  br label %215

169:                                              ; preds = %151
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = load i32*, i32** %8, align 8
  store i32 %172, i32* %173, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %11, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @sli_fc_get_status_string(i32 %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32, ...) @ocs_log_test(i32 %180, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %189, i32 %192, i32 %195, i32 %198, i32 %201, i32 %204, i32 %207, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %169, %164
  br label %305

216:                                              ; preds = %147
  %217 = load i64, i64* %12, align 8
  %218 = load i64, i64* @SLI4_CQE_CODE_RQ_COALESCING, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %271

220:                                              ; preds = %216
  %221 = load i64*, i64** %6, align 8
  %222 = bitcast i64* %221 to i8*
  %223 = bitcast i8* %222 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %223, %struct.TYPE_9__** %14, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %7, align 8
  store i32 %226, i32* %227, align 4
  %228 = load i64, i64* @SLI4_FC_COALESCE_RQ_SUCCESS, align 8
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %228, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %220
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load i32*, i32** %8, align 8
  store i32 %236, i32* %237, align 4
  store i32 0, i32* %11, align 4
  br label %270

238:                                              ; preds = %220
  %239 = load i32, i32* @UINT32_MAX, align 4
  %240 = load i32*, i32** %8, align 8
  store i32 %239, i32* %240, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %11, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = call i32 @sli_fc_get_status_string(i32 %255)
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i32, ...) @ocs_log_test(i32 %247, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %251, i32 %256, i32 %259, i32 %262, i32 %265, i32 %268)
  br label %270

270:                                              ; preds = %238, %233
  br label %304

271:                                              ; preds = %216
  %272 = load i32, i32* @UINT32_MAX, align 4
  %273 = load i32*, i32** %8, align 8
  store i32 %272, i32* %273, align 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %11, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = trunc i64 %283 to i32
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @ocs_log_debug(i32 %280, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %284, i32 %287, i32 %290, i32 %293, i32 %296, i32 %299, i32 %302)
  br label %304

304:                                              ; preds = %271, %270
  br label %305

305:                                              ; preds = %304, %215
  br label %306

306:                                              ; preds = %305, %146
  br label %307

307:                                              ; preds = %306, %86
  %308 = load i32, i32* %11, align 4
  ret i32 %308
}

declare dso_local i32 @ocs_log_test(i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @sli_fc_get_status_string(i32) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
