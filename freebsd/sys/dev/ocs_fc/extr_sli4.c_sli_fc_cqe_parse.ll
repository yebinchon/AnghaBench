; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fc_cqe_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fc_cqe_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SLI4_CQE_CODE_OFFSET = common dso_local global i64 0, align 8
@SLI_QENTRY_WQ = common dso_local global i32 0, align 4
@SLI4_FC_WCQE_STATUS_FCP_RSP_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"WCQE: status=%#x hw_status=%#x tag=%#x w1=%#x w2=%#x xb=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"      %08X %08X %08X %08X\0A\00", align 1
@SLI_QENTRY_RQ = common dso_local global i32 0, align 4
@SLI_QENTRY_OPT_WRITE_CMD = common dso_local global i32 0, align 4
@SLI_QENTRY_OPT_WRITE_DATA = common dso_local global i32 0, align 4
@SLI4_FC_WCQE_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"Optimized DATA CQE: status=%#x hw_status=%#x xri=%#x dpl=%#x w3=%#x xb=%d\0A\00", align 1
@SLI_QENTRY_XABT = common dso_local global i32 0, align 4
@SLI_QENTRY_WQ_RELEASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"CQE completion code %d not handled\0A\00", align 1
@SLI_QENTRY_MAX = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fc_cqe_parse(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* @SLI4_CQE_CODE_OFFSET, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %197 [
    i32 129, label %26
    i32 132, label %85
    i32 131, label %98
    i32 135, label %111
    i32 134, label %124
    i32 130, label %164
    i32 128, label %177
    i32 133, label %187
  ]

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = bitcast i8* %28 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %13, align 8
  %30 = load i32, i32* @SLI_QENTRY_WQ, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %26
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @SLI4_FC_WCQE_STATUS_FCP_RSP_FAILURE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ocs_log_test(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, i32, ...) @ocs_log_test(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %45, %41, %26
  br label %207

85:                                               ; preds = %5
  %86 = load i32*, i32** %8, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = bitcast i8* %87 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %14, align 8
  %89 = load i32, i32* @SLI_QENTRY_RQ, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  br label %207

98:                                               ; preds = %5
  %99 = load i32*, i32** %8, align 8
  %100 = bitcast i32* %99 to i8*
  %101 = bitcast i8* %100 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %15, align 8
  %102 = load i32, i32* @SLI_QENTRY_RQ, align 4
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %12, align 4
  br label %207

111:                                              ; preds = %5
  %112 = load i32*, i32** %8, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = bitcast i8* %113 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %114, %struct.TYPE_16__** %16, align 8
  %115 = load i32, i32* @SLI_QENTRY_OPT_WRITE_CMD, align 4
  %116 = load i32*, i32** %9, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  br label %207

124:                                              ; preds = %5
  %125 = load i32*, i32** %8, align 8
  %126 = bitcast i32* %125 to i8*
  %127 = bitcast i8* %126 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %127, %struct.TYPE_15__** %17, align 8
  %128 = load i32, i32* @SLI_QENTRY_OPT_WRITE_DATA, align 4
  %129 = load i32*, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %10, align 8
  store i32 %132, i32* %133, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @SLI4_FC_WCQE_STATUS_SUCCESS, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %124
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, ...) @ocs_log_test(i32 %143, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %140, %124
  br label %207

164:                                              ; preds = %5
  %165 = load i32*, i32** %8, align 8
  %166 = bitcast i32* %165 to i8*
  %167 = bitcast i8* %166 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %167, %struct.TYPE_17__** %18, align 8
  %168 = load i32, i32* @SLI_QENTRY_RQ, align 4
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %10, align 8
  store i32 %172, i32* %173, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %12, align 4
  br label %207

177:                                              ; preds = %5
  %178 = load i32*, i32** %8, align 8
  %179 = bitcast i32* %178 to i8*
  %180 = bitcast i8* %179 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %180, %struct.TYPE_12__** %19, align 8
  %181 = load i32, i32* @SLI_QENTRY_XABT, align 4
  %182 = load i32*, i32** %9, align 8
  store i32 %181, i32* %182, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %10, align 8
  store i32 %185, i32* %186, align 4
  store i32 0, i32* %12, align 4
  br label %207

187:                                              ; preds = %5
  %188 = load i32*, i32** %8, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = bitcast i8* %189 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %190, %struct.TYPE_13__** %20, align 8
  %191 = load i32, i32* @SLI_QENTRY_WQ_RELEASE, align 4
  %192 = load i32*, i32** %9, align 8
  store i32 %191, i32* %192, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %10, align 8
  store i32 %195, i32* %196, align 4
  store i32 0, i32* %12, align 4
  br label %207

197:                                              ; preds = %5
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %11, align 4
  %202 = call i32 (i32, i8*, i32, ...) @ocs_log_test(i32 %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* @SLI_QENTRY_MAX, align 4
  %204 = load i32*, i32** %9, align 8
  store i32 %203, i32* %204, align 4
  %205 = load i32, i32* @UINT16_MAX, align 4
  %206 = load i32*, i32** %10, align 8
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %197, %187, %177, %164, %163, %111, %98, %85, %84
  %208 = load i32, i32* %12, align 4
  ret i32 %208
}

declare dso_local i32 @ocs_log_test(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
