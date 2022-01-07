; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_els_rsp64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_els_rsp64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32, %struct.TYPE_17__*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i8*, %struct.TYPE_16__, i8*, i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_WQE_ELS_RSP64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_DIR_WRITE = common dso_local global i32 0, align 4
@SLI4_IO_CONTINUATION = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_VPI = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CMD_GEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_xmit_els_rsp64_wqe(%struct.TYPE_19__* %0, i8* %1, i64 %2, %struct.TYPE_21__* %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, %struct.TYPE_20__* %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_20__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i64 %2, i64* %15, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %25, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = call i32 @ocs_memset(i8* %28, i32 0, i64 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %12
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 20
  store i8* %37, i8** %39, align 8
  br label %44

40:                                               ; preds = %12
  %41 = load i8*, i8** @TRUE, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 19
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 18
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 18
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ocs_addr32_lo(i32 %55)
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 18
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ocs_addr32_hi(i32 %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 18
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 17
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 16
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @SLI4_WQE_ELS_RSP64, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 15
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 14
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 13
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @SLI4_ELS_REQUEST64_DIR_WRITE, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @TRUE, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 11
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %44
  %100 = load i8*, i8** @TRUE, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 10
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %99, %44
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 4
  br label %151

117:                                              ; preds = %103
  %118 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 16777215
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @UINT32_MAX, align 4
  %140 = load i32, i32* %24, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %117
  %143 = load i8*, i8** @TRUE, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 6
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %24, align 4
  %147 = and i32 %146, 16777215
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %142, %117
  br label %151

151:                                              ; preds = %150, %108
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load i8*, i8** @TRUE, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 5
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, 16777215
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %156, %151
  %167 = load i32, i32* @SLI4_ELS_REQUEST64_CMD_GEN, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load i8*, i8** %20, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  ret i32 0
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
