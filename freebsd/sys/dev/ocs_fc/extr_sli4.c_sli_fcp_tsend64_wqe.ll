; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_tsend64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_tsend64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i64, i64, i64 }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__, i64, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i64, i8*, i8*, i64, %struct.TYPE_28__, i8*, i8* }
%struct.TYPE_31__ = type { i64, %struct.TYPE_30__, i8* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_27__, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64* }

@.str = private unnamed_addr constant [30 x i8] c"bad parameter sgl=%p virt=%p\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BLP = common dso_local global i8* null, align 8
@SLI4_IO_CONTINUATION = common dso_local global i64 0, align 8
@SLI4_IO_AUTO_GOOD_RESPONSE = common dso_local global i64 0, align 8
@SLI4_WQE_FCP_TSEND64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_CMD_FCP_TSEND64_WQE = common dso_local global i32 0, align 4
@SLI4_MASK_CCP = common dso_local global i32 0, align 4
@SLI4_WQE_EXT_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fcp_tsend64_wqe(%struct.TYPE_33__* %0, i8* %1, i64 %2, %struct.TYPE_24__* %3, i64 %4, i64 %5, i64 %6, i8* %7, i8* %8, i8* %9, i8* %10, i64 %11, %struct.TYPE_23__* %12, i64 %13, i32 %14, i32 %15, i32 %16, i64 %17) #0 {
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_33__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_23__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca %struct.TYPE_21__*, align 8
  %39 = alloca %struct.TYPE_22__*, align 8
  %40 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %20, align 8
  store i8* %1, i8** %21, align 8
  store i64 %2, i64* %22, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %23, align 8
  store i64 %4, i64* %24, align 8
  store i64 %5, i64* %25, align 8
  store i64 %6, i64* %26, align 8
  store i8* %7, i8** %27, align 8
  store i8* %8, i8** %28, align 8
  store i8* %9, i8** %29, align 8
  store i8* %10, i8** %30, align 8
  store i64 %11, i64* %31, align 8
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %32, align 8
  store i64 %13, i64* %33, align 8
  store i32 %14, i32* %34, align 4
  store i32 %15, i32* %35, align 4
  store i32 %16, i32* %36, align 4
  store i64 %17, i64* %37, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %38, align 8
  %43 = load i8*, i8** %21, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %39, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %40, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = load i64, i64* %22, align 8
  %47 = call i32 @ocs_memset(i8* %45, i32 0, i64 %46)
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %49 = icmp ne %struct.TYPE_24__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %18
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = icmp ne %struct.TYPE_20__* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %50, %18
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %61 = icmp ne %struct.TYPE_24__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  br label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi %struct.TYPE_20__* [ %65, %62 ], [ null, %66 ]
  %69 = call i32 @ocs_log_err(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %59, %struct.TYPE_20__* %68)
  store i32 -1, i32* %19, align 4
  br label %346

70:                                               ; preds = %50
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %72, align 8
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %40, align 8
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %70
  %80 = load i8*, i8** @FALSE, align 8
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 27
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 26
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 25
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i64 2
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 25
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i64 2
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 25
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 25
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 8
  br label %191

115:                                              ; preds = %70
  %116 = load i8*, i8** @TRUE, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 27
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %34, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %161, label %121

121:                                              ; preds = %115
  %122 = load i64, i64* %26, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i64 2
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sle i64 %122, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %121
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 26
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 25
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 2
  store i8* %132, i8** %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i64 2
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 25
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i64 2
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 25
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  store i32 %146, i32* %151, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i64 2
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 25
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  store i32 %155, i32* %160, align 8
  br label %190

161:                                              ; preds = %121, %115
  %162 = load i8*, i8** @SLI4_BDE_TYPE_BLP, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 25
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 2
  store i8* %162, i8** %165, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 25
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  store i64 %168, i64* %171, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ocs_addr32_lo(i32 %174)
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 25
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  store i32 %175, i32* %180, align 4
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ocs_addr32_hi(i32 %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 25
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  store i32 %184, i32* %189, align 8
  br label %190

190:                                              ; preds = %161, %128
  br label %191

191:                                              ; preds = %190, %79
  %192 = load i64, i64* %25, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 24
  store i64 %192, i64* %194, align 8
  %195 = load i64, i64* %33, align 8
  %196 = load i64, i64* @SLI4_IO_CONTINUATION, align 8
  %197 = and i64 %195, %196
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %191
  %200 = load i8*, i8** @TRUE, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 23
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %199, %191
  %204 = load i8*, i8** %27, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 22
  store i8* %204, i8** %206, align 8
  %207 = load i64, i64* %31, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 21
  store i64 %207, i64* %209, align 8
  %210 = load i8*, i8** @TRUE, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 20
  store i8* %210, i8** %212, align 8
  %213 = load i64, i64* %33, align 8
  %214 = load i64, i64* @SLI4_IO_AUTO_GOOD_RESPONSE, align 8
  %215 = and i64 %213, %214
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %203
  %218 = load i8*, i8** @TRUE, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 19
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %217, %203
  %222 = load i32, i32* @SLI4_WQE_FCP_TSEND64, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 18
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 17
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 16
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %34, align 4
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %35, align 4
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i8*, i8** %30, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 15
  store i8* %237, i8** %239, align 8
  %240 = load i8*, i8** %28, align 8
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 14
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 2
  store i32 2, i32* %244, align 8
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %221
  %250 = load i8*, i8** @TRUE, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 13
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, 16777215
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %249, %221
  %260 = load i8*, i8** %29, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 12
  store i8* %260, i8** %262, align 8
  %263 = load i32, i32* @SLI4_CMD_FCP_TSEND64_WQE, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 11
  store i32 %263, i32* %265, align 8
  %266 = load i64, i64* %26, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %267, i32 0, i32 10
  store i64 %266, i64* %268, align 8
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %307

274:                                              ; preds = %259
  %275 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 9
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 2
  store i8* %275, i8** %278, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %280 = load i64, i64* %24, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 9
  %286 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %285, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %288 = load i64, i64* %24, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 9
  %294 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 1
  store i32 %291, i32* %296, align 4
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %298 = load i64, i64* %24, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 9
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %305, i32 0, i32 0
  store i32 %301, i32* %306, align 8
  br label %307

307:                                              ; preds = %274, %259
  %308 = load i32, i32* %36, align 4
  %309 = load i32, i32* @SLI4_MASK_CCP, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %307
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 4
  store i32 1, i32* %314, align 8
  %315 = load i32, i32* %36, align 4
  %316 = load i32, i32* @SLI4_MASK_CCP, align 4
  %317 = and i32 %315, %316
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 5
  store i32 %317, i32* %319, align 4
  br label %320

320:                                              ; preds = %312, %307
  %321 = load i64, i64* %37, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %345

323:                                              ; preds = %320
  %324 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %325 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @SLI4_WQE_EXT_BYTES, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %345

330:                                              ; preds = %323
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %345, label %335

335:                                              ; preds = %330
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %337 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i32 0, i32 6
  store i32 1, i32* %337, align 8
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %338, i32 0, i32 7
  store i32 1, i32* %339, align 4
  %340 = load i64, i64* %37, align 8
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 0
  %343 = load i64*, i64** %342, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 31
  store i64 %340, i64* %344, align 8
  br label %345

345:                                              ; preds = %335, %330, %323, %320
  store i32 0, i32* %19, align 4
  br label %346

346:                                              ; preds = %345, %67
  %347 = load i32, i32* %19, align 4
  ret i32 %347
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_24__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
