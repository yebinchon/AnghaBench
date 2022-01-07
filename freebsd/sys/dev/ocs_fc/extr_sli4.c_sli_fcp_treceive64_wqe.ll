; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_treceive64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_treceive64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i64, i64, i64 }
%struct.TYPE_26__ = type { i64, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_35__, i64, i8*, i32, %struct.TYPE_31__, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i64, i8*, i8*, i64, %struct.TYPE_30__, i8*, i8* }
%struct.TYPE_35__ = type { i64, %struct.TYPE_34__, i8* }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_29__, i8* }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64* }

@.str = private unnamed_addr constant [30 x i8] c"bad parameter sgl=%p virt=%p\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BLP = common dso_local global i8* null, align 8
@SLI4_IO_CONTINUATION = common dso_local global i64 0, align 8
@SLI4_IO_AUTO_GOOD_RESPONSE = common dso_local global i64 0, align 8
@SLI4_WQE_FCP_TRECEIVE64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_CMD_FCP_TRECEIVE64_WQE = common dso_local global i32 0, align 4
@SLI4_MASK_CCP = common dso_local global i32 0, align 4
@SLI4_WQE_EXT_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fcp_treceive64_wqe(%struct.TYPE_21__* %0, i8* %1, i64 %2, %struct.TYPE_26__* %3, i64 %4, i64 %5, i64 %6, i8* %7, i8* %8, i8* %9, i8* %10, i64 %11, %struct.TYPE_25__* %12, i64 %13, i32 %14, i32 %15, i32 %16, i64 %17) #0 {
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_25__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  %38 = alloca %struct.TYPE_23__*, align 8
  %39 = alloca %struct.TYPE_24__*, align 8
  %40 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %20, align 8
  store i8* %1, i8** %21, align 8
  store i64 %2, i64* %22, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %23, align 8
  store i64 %4, i64* %24, align 8
  store i64 %5, i64* %25, align 8
  store i64 %6, i64* %26, align 8
  store i8* %7, i8** %27, align 8
  store i8* %8, i8** %28, align 8
  store i8* %9, i8** %29, align 8
  store i8* %10, i8** %30, align 8
  store i64 %11, i64* %31, align 8
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %32, align 8
  store i64 %13, i64* %33, align 8
  store i32 %14, i32* %34, align 4
  store i32 %15, i32* %35, align 4
  store i32 %16, i32* %36, align 4
  store i64 %17, i64* %37, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = bitcast i8* %41 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %38, align 8
  %43 = load i8*, i8** %21, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %39, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %40, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = load i64, i64* %22, align 8
  %47 = call i32 @ocs_memset(i8* %45, i32 0, i64 %46)
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %49 = icmp ne %struct.TYPE_26__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %18
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  %54 = icmp ne %struct.TYPE_22__* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %50, %18
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %61 = icmp ne %struct.TYPE_26__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %64, align 8
  br label %67

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi %struct.TYPE_22__* [ %65, %62 ], [ null, %66 ]
  %69 = call i32 @ocs_log_err(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %59, %struct.TYPE_22__* %68)
  store i32 -1, i32* %19, align 4
  br label %355

70:                                               ; preds = %50
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  store %struct.TYPE_22__* %73, %struct.TYPE_22__** %40, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %70
  %80 = load i8*, i8** @FALSE, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 29
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @TRUE, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 28
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 27
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 27
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 27
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 27
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %197

121:                                              ; preds = %70
  %122 = load i8*, i8** @TRUE, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 29
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %34, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %167, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* %26, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i64 2
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sle i64 %128, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %127
  %135 = load i8*, i8** @TRUE, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 28
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 27
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 2
  store i8* %138, i8** %141, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i64 2
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 27
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  store i64 %145, i64* %148, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i64 2
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 27
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 1
  store i32 %152, i32* %157, align 4
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i64 2
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 27
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  store i32 %161, i32* %166, align 8
  br label %196

167:                                              ; preds = %127, %121
  %168 = load i8*, i8** @SLI4_BDE_TYPE_BLP, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 27
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 2
  store i8* %168, i8** %171, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 27
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 0
  store i64 %174, i64* %177, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @ocs_addr32_lo(i32 %180)
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 27
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 1
  store i32 %181, i32* %186, align 4
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @ocs_addr32_hi(i32 %189)
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 27
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 0
  store i32 %190, i32* %195, align 8
  br label %196

196:                                              ; preds = %167, %134
  br label %197

197:                                              ; preds = %196, %79
  %198 = load i64, i64* %25, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 26
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* %33, align 8
  %202 = load i64, i64* @SLI4_IO_CONTINUATION, align 8
  %203 = and i64 %201, %202
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load i8*, i8** @TRUE, align 8
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 25
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %205, %197
  %210 = load i8*, i8** %27, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 24
  store i8* %210, i8** %212, align 8
  %213 = load i64, i64* %31, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 23
  store i64 %213, i64* %215, align 8
  %216 = load i8*, i8** @TRUE, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 22
  store i8* %216, i8** %218, align 8
  %219 = load i64, i64* %33, align 8
  %220 = load i64, i64* @SLI4_IO_AUTO_GOOD_RESPONSE, align 8
  %221 = and i64 %219, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %209
  %224 = load i8*, i8** @TRUE, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 21
  store i8* %224, i8** %226, align 8
  br label %227

227:                                              ; preds = %223, %209
  %228 = load i32, i32* @SLI4_WQE_FCP_TRECEIVE64, align 4
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 20
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 19
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 18
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* %34, align 4
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* %35, align 4
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  %243 = load i8*, i8** %30, align 8
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 17
  store i8* %243, i8** %245, align 8
  %246 = load i8*, i8** %28, align 8
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 16
  store i8* %246, i8** %248, align 8
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 3
  store i32 1, i32* %250, align 8
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 4
  store i32 2, i32* %252, align 4
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %227
  %258 = load i8*, i8** @TRUE, align 8
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 15
  store i8* %258, i8** %260, align 8
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, 16777215
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 14
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 4
  br label %268

268:                                              ; preds = %257, %227
  %269 = load i32, i32* @SLI4_CMD_FCP_TRECEIVE64_WQE, align 4
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 13
  store i32 %269, i32* %271, align 8
  %272 = load i8*, i8** %29, align 8
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 12
  store i8* %272, i8** %274, align 8
  %275 = load i64, i64* %26, align 8
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 11
  store i64 %275, i64* %277, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %316

283:                                              ; preds = %268
  %284 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 10
  %287 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %286, i32 0, i32 2
  store i8* %284, i8** %287, align 8
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %289 = load i64, i64* %24, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 10
  %295 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %294, i32 0, i32 0
  store i64 %292, i64* %295, align 8
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %297 = load i64, i64* %24, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 10
  %303 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %304, i32 0, i32 1
  store i32 %300, i32* %305, align 4
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %40, align 8
  %307 = load i64, i64* %24, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 10
  %313 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 0
  store i32 %310, i32* %315, align 8
  br label %316

316:                                              ; preds = %283, %268
  %317 = load i32, i32* %36, align 4
  %318 = load i32, i32* @SLI4_MASK_CCP, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %316
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 5
  store i32 1, i32* %323, align 8
  %324 = load i32, i32* %36, align 4
  %325 = load i32, i32* @SLI4_MASK_CCP, align 4
  %326 = and i32 %324, %325
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 6
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %321, %316
  %330 = load i64, i64* %37, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %354

332:                                              ; preds = %329
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @SLI4_WQE_EXT_BYTES, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %354

339:                                              ; preds = %332
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 9
  %342 = load i32, i32* %341, align 8
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %354, label %344

344:                                              ; preds = %339
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 7
  store i32 1, i32* %346, align 8
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 8
  store i32 1, i32* %348, align 4
  %349 = load i64, i64* %37, align 8
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i64*, i64** %351, align 8
  %353 = getelementptr inbounds i64, i64* %352, i64 31
  store i64 %349, i64* %353, align 8
  br label %354

354:                                              ; preds = %344, %339, %332, %329
  store i32 0, i32* %19, align 4
  br label %355

355:                                              ; preds = %354, %67
  %356 = load i32, i32* %19, align 4
  ret i32 %356
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_26__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
