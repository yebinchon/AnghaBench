; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_gen_request64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_gen_request64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i64, i32 }
%struct.TYPE_24__ = type { i32, i8*, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_21__, i8*, i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"bad parameter sgl=%p virt=%p\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_BDE_TYPE_BLP = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_WQE_GEN_REQUEST64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_DIR_READ = common dso_local global i32 0, align 4
@SLI4_CMD_GEN_REQUEST64_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_gen_request64_wqe(%struct.TYPE_22__* %0, i8* %1, i64 %2, %struct.TYPE_16__* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, %struct.TYPE_25__* %10, i8* %11, i8* %12, i8* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_25__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_24__*, align 8
  %31 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %16, align 8
  store i8* %1, i8** %17, align 8
  store i64 %2, i64* %18, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store %struct.TYPE_25__* %10, %struct.TYPE_25__** %26, align 8
  store i8* %11, i8** %27, align 8
  store i8* %12, i8** %28, align 8
  store i8* %13, i8** %29, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %31, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i64, i64* %18, align 8
  %36 = call i32 @ocs_memset(i8* %34, i32 0, i64 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %14
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  %43 = icmp ne %struct.TYPE_23__* %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %39, %14
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %50 = icmp ne %struct.TYPE_16__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  br label %56

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi %struct.TYPE_23__* [ %54, %51 ], [ null, %55 ]
  %58 = call i32 @ocs_log_err(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %48, %struct.TYPE_23__* %57)
  store i32 -1, i32* %15, align 4
  br label %197

59:                                               ; preds = %39
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  store %struct.TYPE_23__* %62, %struct.TYPE_23__** %31, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %59
  %69 = load i8*, i8** @FALSE, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 19
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 20
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 18
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load i8*, i8** %20, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 18
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 18
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  store i32 %87, i32* %92, align 4
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 18
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  store i32 %96, i32* %101, align 4
  br label %131

102:                                              ; preds = %59
  %103 = load i8*, i8** @TRUE, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 19
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @SLI4_BDE_TYPE_BLP, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 18
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 18
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  store i32 16, i32* %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ocs_addr32_lo(i32 %115)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 18
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  store i32 %116, i32* %121, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ocs_addr32_hi(i32 %124)
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 18
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  store i32 %125, i32* %130, align 4
  br label %131

131:                                              ; preds = %102, %68
  %132 = load i8*, i8** %20, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 17
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %21, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 16
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** %29, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 15
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %28, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 14
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** %27, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 13
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %23, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 12
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 11
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 10
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 9
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @SLI4_WQE_GEN_REQUEST64, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 8
  store i32 %161, i32* %163, align 8
  %164 = load i8*, i8** %22, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 7
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** %24, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @SLI4_ELS_REQUEST64_DIR_READ, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  %173 = load i8*, i8** @TRUE, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %131
  %181 = load i8*, i8** @TRUE, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 3
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, 16777215
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %180, %131
  %191 = load i32, i32* @SLI4_CMD_GEN_REQUEST64_WQE, align 4
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i8*, i8** %25, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %190, %56
  %198 = load i32, i32* %15, align 4
  ret i32 %198
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_16__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
