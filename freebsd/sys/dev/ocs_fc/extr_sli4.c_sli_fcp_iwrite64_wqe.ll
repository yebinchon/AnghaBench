; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_iwrite64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_iwrite64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i32 }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, %struct.TYPE_32__, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i64, i64, %struct.TYPE_28__, i8*, i8* }
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
@SLI4_WQE_FCP_IWRITE64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_CMD_FCP_IWRITE64_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fcp_iwrite64_wqe(%struct.TYPE_33__* %0, i8* %1, i64 %2, %struct.TYPE_24__* %3, i64 %4, i64 %5, i64 %6, i8* %7, i8* %8, i8* %9, i64 %10, %struct.TYPE_22__* %11, i8* %12, i8* %13, i8* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_33__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_22__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_21__*, align 8
  %33 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %17, align 8
  store i8* %1, i8** %18, align 8
  store i64 %2, i64* %19, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %20, align 8
  store i64 %4, i64* %21, align 8
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i8* %7, i8** %24, align 8
  store i8* %8, i8** %25, align 8
  store i8* %9, i8** %26, align 8
  store i64 %10, i64* %27, align 8
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %28, align 8
  store i8* %12, i8** %29, align 8
  store i8* %13, i8** %30, align 8
  store i8* %14, i8** %31, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %33, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = load i64, i64* %19, align 8
  %38 = call i32 @ocs_memset(i8* %36, i32 0, i64 %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %40 = icmp ne %struct.TYPE_24__* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %15
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = icmp ne %struct.TYPE_20__* %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %41, %15
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %52 = icmp ne %struct.TYPE_24__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  br label %58

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi %struct.TYPE_20__* [ %56, %53 ], [ null, %57 ]
  %60 = call i32 @ocs_log_err(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %50, %struct.TYPE_20__* %59)
  store i32 -1, i32* %16, align 4
  br label %274

61:                                               ; preds = %41
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %33, align 8
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %61
  %71 = load i8*, i8** @FALSE, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 23
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 24
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 22
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 22
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 1
  store i64 %84, i64* %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 22
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 22
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 8
  br label %148

106:                                              ; preds = %61
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 23
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @SLI4_BDE_TYPE_BLP, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 22
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 2
  store i8* %110, i8** %113, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 22
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 1
  store i64 %116, i64* %119, align 8
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ocs_addr32_lo(i32 %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 22
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  store i32 %123, i32* %128, align 4
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ocs_addr32_hi(i32 %131)
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 22
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  store i32 %132, i32* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 21
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* @SLI4_SGE_TYPE_SKIP, align 4
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 3
  store i32 %144, i32* %147, align 8
  br label %148

148:                                              ; preds = %106, %70
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %152, %156
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 20
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %22, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %22, align 8
  %164 = load i64, i64* %23, align 8
  %165 = call i32 @MIN(i64 %163, i64 %164)
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 19
  store i32 %165, i32* %167, align 8
  %168 = load i8*, i8** %24, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 18
  store i8* %168, i8** %170, align 8
  %171 = load i64, i64* %27, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load i8*, i8** %31, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 17
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 2
  store i32 2, i32* %178, align 8
  %179 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 16
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* @SLI4_WQE_FCP_IWRITE64, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 15
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 14
  store i32 %185, i32* %187, align 8
  %188 = load i8*, i8** %29, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 13
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** %30, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 12
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** %24, align 8
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 11
  store i8* %194, i8** %196, align 8
  %197 = load i8*, i8** %25, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 10
  store i8* %197, i8** %199, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 3
  store i32 3, i32* %201, align 4
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %148
  %207 = load i8*, i8** @TRUE, align 8
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 9
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, 16777215
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %206, %148
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to %struct.TYPE_23__*
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %216
  %225 = load i8*, i8** @TRUE, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 8
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %224, %216
  %229 = load i32, i32* @SLI4_CMD_FCP_IWRITE64_WQE, align 4
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 7
  store i32 %229, i32* %231, align 8
  %232 = load i8*, i8** %26, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 6
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %273

240:                                              ; preds = %228
  %241 = load i8*, i8** @SLI4_BDE_TYPE_BDE_64, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 2
  store i8* %241, i8** %244, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %246 = load i64, i64* %21, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 1
  store i64 %249, i64* %252, align 8
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %254 = load i64, i64* %21, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 1
  store i32 %257, i32* %262, align 4
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %264 = load i64, i64* %21, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 0
  store i32 %267, i32* %272, align 8
  br label %273

273:                                              ; preds = %240, %228
  store i32 0, i32* %16, align 4
  br label %274

274:                                              ; preds = %273, %58
  %275 = load i32, i32* %16, align 4
  ret i32 %275
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_24__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

declare dso_local i32 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
