; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_icmnd64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_icmnd64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, i32 }
%struct.TYPE_27__ = type { i32, i64, i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i64, %struct.TYPE_23__, i8*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"bad parameter sgl=%p virt=%p\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_BDE_TYPE_BLP = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_WQE_FCP_ICMND64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_CMD_FCP_ICMND64_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fcp_icmnd64_wqe(%struct.TYPE_24__* %0, i8* %1, i64 %2, %struct.TYPE_18__* %3, i8* %4, i8* %5, i8* %6, i32 %7, %struct.TYPE_27__* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_27__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.TYPE_27__* %8, %struct.TYPE_27__** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %23, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @ocs_memset(i8* %26, i32 0, i64 %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %30 = icmp ne %struct.TYPE_18__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %10
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %35 = icmp ne %struct.TYPE_25__* %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %31, %10
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %42 = icmp ne %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  br label %48

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi %struct.TYPE_25__* [ %46, %43 ], [ null, %47 ]
  %50 = call i32 @ocs_log_err(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %40, %struct.TYPE_25__* %49)
  store i32 -1, i32* %11, align 4
  br label %201

51:                                               ; preds = %31
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  store %struct.TYPE_25__* %54, %struct.TYPE_25__** %23, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %51
  %61 = load i8*, i8** @FALSE, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 17
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @TRUE, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 18
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 16
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 16
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 16
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 16
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 8
  br label %128

96:                                               ; preds = %51
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 17
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @SLI4_BDE_TYPE_BLP, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 16
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 16
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ocs_addr32_lo(i32 %112)
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 16
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  store i32 %113, i32* %118, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ocs_addr32_hi(i32 %121)
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 16
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  store i32 %122, i32* %127, align 8
  br label %128

128:                                              ; preds = %96, %60
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %132, %136
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 15
  store i64 %137, i64* %139, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 14
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %19, align 4
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 13
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %21, align 4
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 12
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  store i32 2, i32* %150, align 8
  %151 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 11
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @SLI4_WQE_FCP_ICMND64, align 4
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 8
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %17, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 7
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  store i32 3, i32* %167, align 4
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %128
  %173 = load i8*, i8** @TRUE, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 6
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 16777215
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %172, %128
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to %struct.TYPE_17__*
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %182
  %191 = load i8*, i8** @TRUE, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 5
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %190, %182
  %195 = load i32, i32* @SLI4_CMD_FCP_ICMND64_WQE, align 4
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 4
  store i32 %195, i32* %197, align 8
  %198 = load i8*, i8** %18, align 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %194, %48
  %202 = load i32, i32* %11, align 4
  ret i32 %202
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_18__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
