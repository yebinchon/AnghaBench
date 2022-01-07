; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_iread64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_iread64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i32 }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_32__, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i64, i64, %struct.TYPE_28__, i8*, i8* }
%struct.TYPE_32__ = type { %struct.TYPE_31__, i64, i8* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i64, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"bad parameter sgl=%p virt=%p\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BLP = common dso_local global i8* null, align 8
@SLI4_SGE_TYPE_SKIP = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_WQE_FCP_IREAD64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_CMD_FCP_IREAD64_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fcp_iread64_wqe(%struct.TYPE_33__* %0, i8* %1, i64 %2, %struct.TYPE_24__* %3, i64 %4, i64 %5, i8* %6, i8* %7, i8* %8, i64 %9, %struct.TYPE_22__* %10, i8* %11, i8* %12, i8* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_33__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_21__*, align 8
  %31 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %16, align 8
  store i8* %1, i8** %17, align 8
  store i64 %2, i64* %18, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %19, align 8
  store i64 %4, i64* %20, align 8
  store i64 %5, i64* %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i64 %9, i64* %25, align 8
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %26, align 8
  store i8* %11, i8** %27, align 8
  store i8* %12, i8** %28, align 8
  store i8* %13, i8** %29, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %30, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %31, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i64, i64* %18, align 8
  %36 = call i32 @ocs_memset(i8* %34, i32 0, i64 %35)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %38 = icmp ne %struct.TYPE_24__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %14
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %39, %14
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %50 = icmp ne %struct.TYPE_24__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi %struct.TYPE_20__* [ %54, %51 ], [ null, %55 ]
  %58 = call i32 @ocs_log_err(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %48, %struct.TYPE_20__* %57)
  store i32 -1, i32* %15, align 4
  br label %269

59:                                               ; preds = %39
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %31, align 8
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %59
  %69 = load i8*, i8** @FALSE, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 23
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 24
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 22
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 22
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 22
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  store i32 %89, i32* %94, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 22
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 8
  br label %146

104:                                              ; preds = %59
  %105 = load i8*, i8** @TRUE, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 23
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @SLI4_BDE_TYPE_BLP, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 22
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 22
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  store i64 %114, i64* %117, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ocs_addr32_lo(i32 %120)
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 22
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  store i32 %121, i32* %126, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @ocs_addr32_hi(i32 %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 22
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  store i32 %130, i32* %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 21
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* @SLI4_SGE_TYPE_SKIP, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 8
  br label %146

146:                                              ; preds = %104, %68
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i64 0
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i64 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %150, %154
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 20
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load i8*, i8** %22, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 19
  store i8* %161, i8** %163, align 8
  %164 = load i64, i64* %25, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load i8*, i8** %29, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 18
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 2
  store i32 2, i32* %171, align 8
  %172 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 17
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @SLI4_WQE_FCP_IREAD64, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 16
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 15
  store i32 %178, i32* %180, align 8
  %181 = load i8*, i8** %27, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 14
  store i8* %181, i8** %183, align 8
  %184 = load i8*, i8** %28, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 13
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** %22, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 12
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** %23, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 11
  store i8* %190, i8** %192, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 3
  store i32 3, i32* %194, align 4
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %146
  %200 = load i8*, i8** @TRUE, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 10
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 16777215
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %199, %146
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to %struct.TYPE_23__*
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %209
  %218 = load i8*, i8** @TRUE, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 9
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %217, %209
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 5
  store i32 1, i32* %223, align 4
  %224 = load i32, i32* @SLI4_CMD_FCP_IREAD64_WQE, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 8
  %227 = load i8*, i8** %24, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 7
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %268

235:                                              ; preds = %221
  %236 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 2
  store i8* %236, i8** %239, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %241 = load i64, i64* %20, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 6
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 1
  store i64 %244, i64* %247, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %249 = load i64, i64* %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 1
  store i32 %252, i32* %257, align 4
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %259 = load i64, i64* %20, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 0
  store i32 %262, i32* %267, align 8
  br label %268

268:                                              ; preds = %235, %221
  store i32 0, i32* %15, align 4
  br label %269

269:                                              ; preds = %268, %56
  %270 = load i32, i32* %15, align 4
  ret i32 %270
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
