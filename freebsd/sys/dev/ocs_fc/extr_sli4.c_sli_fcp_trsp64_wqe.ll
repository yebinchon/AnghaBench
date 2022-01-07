; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_trsp64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fcp_trsp64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, %struct.TYPE_17__, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32* }

@SLI4_IO_AUTO_GOOD_RESPONSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_IO_CONTINUATION = common dso_local global i32 0, align 4
@SLI4_WQE_FCP_TRSP64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_IO_DNRX = common dso_local global i32 0, align 4
@SLI4_CMD_FCP_TRSP64_WQE = common dso_local global i32 0, align 4
@SLI4_MASK_CCP = common dso_local global i32 0, align 4
@SLI4_WQE_EXT_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fcp_trsp64_wqe(%struct.TYPE_19__* %0, i8* %1, i64 %2, %struct.TYPE_14__* %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 %9, %struct.TYPE_23__* %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_23__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_21__*, align 8
  %32 = alloca %struct.TYPE_22__*, align 8
  %33 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %16, align 8
  store i8* %1, i8** %17, align 8
  store i64 %2, i64* %18, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %19, align 8
  store i32 %4, i32* %20, align 4
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i32 %9, i32* %25, align 4
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %26, align 8
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %34 = load i8*, i8** %17, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %31, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %37, %struct.TYPE_22__** %32, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load i64, i64* %18, align 8
  %40 = call i32 @ocs_memset(i8* %38, i32 0, i64 %39)
  %41 = load i32, i32* %27, align 4
  %42 = load i32, i32* @SLI4_IO_AUTO_GOOD_RESPONSE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %15
  %46 = load i8*, i8** @TRUE, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 22
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 19
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  store i32 12, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %45
  br label %112

59:                                               ; preds = %15
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %33, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %29, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %59
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 21
  store i8* %72, i8** %74, align 8
  br label %79

75:                                               ; preds = %68
  %76 = load i8*, i8** @TRUE, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 20
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 19
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 19
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 19
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  store i32 %94, i32* %99, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 19
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %79, %58
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i8*, i8** @TRUE, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 18
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %112
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load i8*, i8** @TRUE, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 17
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, 16777215
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %126, %121
  %137 = load i8*, i8** %21, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 16
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* %25, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @SLI4_WQE_FCP_TRSP64, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 15
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 14
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** %24, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 13
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** %22, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 12
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* @SLI4_IO_DNRX, align 4
  %157 = and i32 %155, %156
  %158 = icmp eq i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 0, i32 1
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 4
  store i32 1, i32* %164, align 8
  %165 = load i8*, i8** %23, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 11
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @SLI4_CMD_FCP_TRSP64_WQE, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 10
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %28, align 4
  %172 = load i32, i32* @SLI4_MASK_CCP, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %136
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 5
  store i32 1, i32* %177, align 4
  %178 = load i32, i32* %28, align 4
  %179 = load i32, i32* @SLI4_MASK_CCP, align 4
  %180 = and i32 %178, %179
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %175, %136
  %184 = load i32, i32* %30, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %208

186:                                              ; preds = %183
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SLI4_WQE_EXT_BYTES, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %186
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 7
  store i32 1, i32* %200, align 4
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 8
  store i32 1, i32* %202, align 8
  %203 = load i32, i32* %30, align 4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 31
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %198, %193, %186, %183
  ret i32 0
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
