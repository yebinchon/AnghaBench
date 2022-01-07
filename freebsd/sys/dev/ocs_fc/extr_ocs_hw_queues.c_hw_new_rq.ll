; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_hw_new_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_hw_new_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32*, i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64*, i32, %struct.TYPE_16__**, i32, %struct.TYPE_14__, %struct.TYPE_18__*, i32 }
%struct.TYPE_14__ = type { i32 }

@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@OCS_HW_MAX_RQ_ENTRIES = common dso_local global i32 0, align 4
@SLI_QTYPE_RQ = common dso_local global i32 0, align 4
@OCS_HW_RQ_NUM_HDR = common dso_local global i32 0, align 4
@OCS_HW_RQ_HEADER_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RQ allocation failure - header\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"create rq[%2d] id %3d len %4d hdr  size %4d ulp %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"RQ allocation failure - first burst\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"create rq[%2d] id %3d len %4d data size %4d ulp %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"RQ tracker buf allocation failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @hw_new_rq(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @OCS_M_ZERO, align 4
  %20 = load i32, i32* @OCS_M_NOWAIT, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @ocs_malloc(i32 %18, i32 72, i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %9, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = load i32, i32* @OCS_HW_MAX_RQ_ENTRIES, align 4
  %26 = call i32 @ocs_hw_get(%struct.TYPE_15__* %24, i32 %25, i32* %10)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = icmp ne %struct.TYPE_16__* %27, null
  br i1 %28, label %29, label %266

29:                                               ; preds = %3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = sext i32 %32 to i64
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 9
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %39, align 8
  %40 = load i32, i32* @SLI_QTYPE_RQ, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @OCS_HW_RQ_NUM_HDR, align 4
  %49 = call i32 @OCS_MIN(i32 %47, i32 %48)
  %50 = call i32 @OCS_MIN(i32 %46, i32 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = call i64 @ARRAY_SIZE(%struct.TYPE_18__* %58)
  %60 = icmp ult i64 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ocs_hw_assert(i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i64 %68
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 7
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %71, align 8
  %72 = load i32, i32* @OCS_HW_RQ_HEADER_SIZE, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @TRUE, align 4
  %91 = call i64 @sli_fc_rq_alloc(i32* %76, %struct.TYPE_18__* %79, i32 %82, i32 %85, i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %29
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ocs_log_err(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %102 = call i32 @ocs_free(i32 %100, %struct.TYPE_16__* %101, i32 72)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %268

103:                                              ; preds = %29
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  store i64 %106, i64* %113, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 7
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ocs_log_debug(i32 %120, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %123, i32 %128, i32 %131, i32 %134, i32 %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 6
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %143, align 8
  %145 = call i64 @ARRAY_SIZE(%struct.TYPE_18__* %144)
  %146 = icmp ult i64 %141, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @ocs_hw_assert(i32 %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 6
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i64 %154
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 5
  store %struct.TYPE_18__* %155, %struct.TYPE_18__** %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @FALSE, align 4
  %180 = call i64 @sli_fc_rq_alloc(i32* %165, %struct.TYPE_18__* %168, i32 %171, i32 %174, i32 %177, i32 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %103
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @ocs_log_err(i32 %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %191 = call i32 @ocs_free(i32 %189, %struct.TYPE_16__* %190, i32 72)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %268

192:                                              ; preds = %103
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i64, i64* %198, i64 %201
  store i64 %195, i64* %202, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 5
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @ocs_log_debug(i32 %209, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %212, i32 %217, i32 %220, i32 %223, i32 %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 3
  %231 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %230, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %231, i64 %234
  store %struct.TYPE_16__* %228, %struct.TYPE_16__** %235, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %239 = call i32 @ocs_list_add_tail(i32* %237, %struct.TYPE_16__* %238)
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = mul i64 8, %246
  %248 = trunc i64 %247 to i32
  %249 = load i32, i32* @OCS_M_ZERO, align 4
  %250 = load i32, i32* @OCS_M_NOWAIT, align 4
  %251 = or i32 %249, %250
  %252 = call i8* @ocs_malloc(i32 %242, i32 %248, i32 %251)
  %253 = bitcast i8* %252 to i32*
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  store i32* %253, i32** %255, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = icmp eq i32* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %192
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @ocs_log_err(i32 %263, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %268

265:                                              ; preds = %192
  br label %266

266:                                              ; preds = %265, %3
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %267, %struct.TYPE_16__** %4, align 8
  br label %268

268:                                              ; preds = %266, %260, %182, %93
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %269
}

declare dso_local i8* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_hw_get(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @OCS_MIN(i32, i32) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_18__*) #1

declare dso_local i64 @sli_fc_rq_alloc(i32*, %struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
