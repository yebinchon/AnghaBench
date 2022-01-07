; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_bcast64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_bcast64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i8*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"remote node %d in use\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_VPI = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_WQE_XMIT_BCAST64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_DIR_WRITE = common dso_local global i32 0, align 4
@SLI4_CMD_XMIT_BCAST64_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_xmit_bcast64_wqe(%struct.TYPE_17__* %0, i8* %1, i64 %2, %struct.TYPE_19__* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, %struct.TYPE_18__* %9, i8* %10, i8* %11, i8* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_18__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %15, align 8
  store i8* %1, i8** %16, align 8
  store i64 %2, i64* %17, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i8* %7, i8** %22, align 8
  store i8* %8, i8** %23, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %24, align 8
  store i8* %10, i8** %25, align 8
  store i8* %11, i8** %26, align 8
  store i8* %12, i8** %27, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %28, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %13
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ocs_log_test(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %14, align 4
  br label %129

43:                                               ; preds = %13
  %44 = load i8*, i8** %16, align 8
  %45 = load i64, i64* %17, align 8
  %46 = call i32 @ocs_memset(i8* %44, i32 0, i64 %45)
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 17
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 16
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 16
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ocs_addr32_lo(i32 %60)
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 16
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ocs_addr32_hi(i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 16
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 15
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %27, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 14
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** %26, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 13
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %25, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 12
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %21, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 11
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 10
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 9
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @SLI4_WQE_XMIT_BCAST64, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** %20, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %22, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @SLI4_ELS_REQUEST64_DIR_WRITE, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @SLI4_CMD_XMIT_BCAST64_WQE, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** %23, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  store i32 0, i32* %14, align 4
  br label %129

129:                                              ; preds = %43, %35
  %130 = load i32, i32* %14, align 4
  ret i32 %130
}

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
