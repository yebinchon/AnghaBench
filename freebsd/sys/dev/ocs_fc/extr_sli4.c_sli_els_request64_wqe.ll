; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_els_request64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_els_request64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_25__*, i32, i64 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, %struct.TYPE_23__, i8*, i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_BDE_TYPE_BLP = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_WQE_ELS_REQUEST64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_DIR_READ = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_LOGO = common dso_local global i8* null, align 8
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i64 0, align 8
@SLI4_ELS_REQUEST64_CONTEXT_VPI = common dso_local global i64 0, align 8
@FC_ADDR_FABRIC = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_FDISC = common dso_local global i8* null, align 8
@SLI4_ELS_REQUEST64_OTHER = common dso_local global i8* null, align 8
@SLI4_ELS_REQUEST64_FLOGIN = common dso_local global i8* null, align 8
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid domain handle\0A\00", align 1
@SLI4_ELS_REQUEST64_CONTEXT_FCFI = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_PLOGI = common dso_local global i8* null, align 8
@SLI4_ELS_REQUEST64_CMD_FABRIC = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CMD_NON_FABRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_els_request64_wqe(%struct.TYPE_26__* %0, i8* %1, i64 %2, %struct.TYPE_18__* %3, i32 %4, i8* %5, i8* %6, i32 %7, i8* %8, i8* %9, i8* %10, %struct.TYPE_17__* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca %struct.TYPE_27__*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %14, align 8
  store i8* %1, i8** %15, align 8
  store i64 %2, i64* %16, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %17, align 8
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store i8* %6, i8** %20, align 8
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i8* %9, i8** %23, align 8
  store i8* %10, i8** %24, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %25, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %26, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %27, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %28, align 4
  %36 = load i8*, i8** %15, align 8
  %37 = load i64, i64* %16, align 8
  %38 = call i32 @ocs_memset(i8* %36, i32 0, i64 %37)
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %12
  %45 = load i8*, i8** @FALSE, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 20
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 21
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 19
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i8*, i8** %19, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 19
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 19
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %27, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 19
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  br label %107

78:                                               ; preds = %12
  %79 = load i8*, i8** @TRUE, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 20
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @SLI4_BDE_TYPE_BLP, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 19
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 19
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  store i32 16, i32* %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ocs_addr32_lo(i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 19
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ocs_addr32_hi(i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 19
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 4
  br label %107

107:                                              ; preds = %78, %44
  %108 = load i8*, i8** %19, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 18
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %20, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 17
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** %22, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 16
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %21, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 15
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @SLI4_WQE_ELS_REQUEST64, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 14
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** %23, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 13
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %107
  %134 = load i8*, i8** @TRUE, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 12
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 16777215
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %133, %107
  %144 = load i32, i32* @SLI4_ELS_REQUEST64_DIR_READ, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 11
  store i32 %144, i32* %146, align 8
  %147 = load i8*, i8** @TRUE, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 10
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %18, align 4
  switch i32 %150, label %327 [
    i32 130, label %151
    i32 132, label %189
    i32 131, label %229
    i32 129, label %299
    i32 128, label %313
  ]

151:                                              ; preds = %143
  %152 = load i8*, i8** @SLI4_ELS_REQUEST64_LOGO, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 7
  store i8* %152, i8** %154, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 4
  br label %179

168:                                              ; preds = %151
  %169 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %168, %159
  %180 = load i32, i32* @FC_ADDR_FABRIC, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i8*, i8** @TRUE, align 8
  %187 = ptrtoint i8* %186 to i32
  store i32 %187, i32* %28, align 4
  br label %188

188:                                              ; preds = %185, %179
  br label %356

189:                                              ; preds = %143
  %190 = load i32, i32* @FC_ADDR_FABRIC, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i8*, i8** @TRUE, align 8
  %197 = ptrtoint i8* %196 to i32
  store i32 %197, i32* %28, align 4
  br label %198

198:                                              ; preds = %195, %189
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 0, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load i8*, i8** @SLI4_ELS_REQUEST64_FDISC, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 7
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** @TRUE, align 8
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* %28, align 4
  br label %215

211:                                              ; preds = %198
  %212 = load i8*, i8** @SLI4_ELS_REQUEST64_OTHER, align 8
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 7
  store i8* %212, i8** %214, align 8
  br label %215

215:                                              ; preds = %211, %205
  %216 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 2
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 4
  %226 = load i8*, i8** @TRUE, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 9
  store i8* %226, i8** %228, align 8
  br label %356

229:                                              ; preds = %143
  %230 = load i8*, i8** @SLI4_ELS_REQUEST64_FLOGIN, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 7
  store i8* %230, i8** %232, align 8
  %233 = load i8*, i8** @TRUE, align 8
  %234 = ptrtoint i8* %233 to i32
  store i32 %234, i32* %28, align 4
  %235 = load i32, i32* @SLI4_IF_TYPE_BE3_SKH_PF, align 4
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %235, %238
  br i1 %239, label %240, label %268

240:                                              ; preds = %229
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %244, align 8
  %246 = icmp ne %struct.TYPE_24__* %245, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %240
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @ocs_log_test(i32 %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %13, align 4
  br label %395

252:                                              ; preds = %240
  %253 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_FCFI, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  store i64 %253, i64* %255, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 6
  store i32 %262, i32* %264, align 4
  %265 = load i8*, i8** @TRUE, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 9
  store i8* %265, i8** %267, align 8
  br label %298

268:                                              ; preds = %229
  %269 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 2
  store i64 %269, i64* %271, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 6
  store i32 %276, i32* %278, align 4
  %279 = load i8*, i8** @TRUE, align 8
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 9
  store i8* %279, i8** %281, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @UINT32_MAX, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %268
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 8
  store i32 %294, i32* %296, align 8
  br label %297

297:                                              ; preds = %289, %268
  br label %298

298:                                              ; preds = %297, %252
  br label %356

299:                                              ; preds = %143
  %300 = load i8*, i8** @SLI4_ELS_REQUEST64_PLOGI, align 8
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 7
  store i8* %300, i8** %302, align 8
  %303 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 2
  store i64 %303, i64* %305, align 8
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 6
  store i32 %310, i32* %312, align 4
  br label %356

313:                                              ; preds = %143
  %314 = load i8*, i8** @SLI4_ELS_REQUEST64_OTHER, align 8
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 7
  store i8* %314, i8** %316, align 8
  %317 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 8
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 2
  store i64 %317, i64* %319, align 8
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 6
  store i32 %324, i32* %326, align 4
  br label %356

327:                                              ; preds = %143
  %328 = load i8*, i8** @SLI4_ELS_REQUEST64_OTHER, align 8
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 7
  store i8* %328, i8** %330, align 8
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %344

335:                                              ; preds = %327
  %336 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 8
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 2
  store i64 %336, i64* %338, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 6
  store i32 %341, i32* %343, align 4
  br label %355

344:                                              ; preds = %327
  %345 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 8
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 2
  store i64 %345, i64* %347, align 8
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 6
  store i32 %352, i32* %354, align 4
  br label %355

355:                                              ; preds = %344, %335
  br label %356

356:                                              ; preds = %355, %313, %299, %298, %215, %188
  %357 = load i32, i32* %28, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = load i32, i32* @SLI4_ELS_REQUEST64_CMD_FABRIC, align 4
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 5
  store i32 %360, i32* %362, align 8
  br label %367

363:                                              ; preds = %356
  %364 = load i32, i32* @SLI4_ELS_REQUEST64_CMD_NON_FABRIC, align 4
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 5
  store i32 %364, i32* %366, align 8
  br label %367

367:                                              ; preds = %363, %359
  %368 = load i8*, i8** %24, align 8
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 4
  store i8* %368, i8** %370, align 8
  %371 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 8
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %371, %374
  br i1 %375, label %376, label %382

376:                                              ; preds = %367
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 1
  store i32 %379, i32* %381, align 4
  br label %382

382:                                              ; preds = %376, %367
  %383 = load i64, i64* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 8
  %384 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %385 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = icmp eq i64 %383, %386
  br i1 %387, label %388, label %394

388:                                              ; preds = %382
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 3
  store i32 %391, i32* %393, align 8
  br label %394

394:                                              ; preds = %388, %382
  store i32 0, i32* %13, align 4
  br label %395

395:                                              ; preds = %394, %247
  %396 = load i32, i32* %13, align 4
  ret i32 %396
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
