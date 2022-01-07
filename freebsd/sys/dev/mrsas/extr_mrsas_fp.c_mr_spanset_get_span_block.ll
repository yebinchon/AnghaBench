; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mr_spanset_get_span_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_mr_spanset_get_span_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@SPAN_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mr_spanset_get_span_block(%struct.mrsas_softc* %0, i64 %1, i64 %2, i64* %3, %struct.TYPE_20__* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.mrsas_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i64, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %23 = call %struct.TYPE_19__* @MR_LdRaidGet(i64 %21, %struct.TYPE_20__* %22)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %14, align 8
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %8, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %19, align 8
  store i64 0, i64* %18, align 8
  br label %27

27:                                               ; preds = %153, %6
  %28 = load i64, i64* %18, align 8
  %29 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %156

31:                                               ; preds = %27
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = load i64, i64* %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %37
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %15, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %156

44:                                               ; preds = %31
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %153

51:                                               ; preds = %44
  store i64 0, i64* %17, align 8
  br label %52

52:                                               ; preds = %149, %51
  %53 = load i64, i64* %17, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %152

58:                                               ; preds = %52
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %18, align 8
  %73 = add i64 %72, 1
  %74 = icmp uge i64 %71, %73
  br i1 %74, label %75, label %148

75:                                               ; preds = %58
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = load i64, i64* %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i64 %89
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %16, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %75
  %96 = load i32*, i32** %13, align 8
  store i32 1, i32* %96, align 4
  %97 = load i64, i64* %17, align 8
  store i64 %97, i64* %7, align 8
  br label %158

98:                                               ; preds = %75
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %147

104:                                              ; preds = %98
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %105, %108
  br i1 %109, label %110, label %147

110:                                              ; preds = %104
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %111, %114
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @mega_mod64(i64 %115, i64 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %147

121:                                              ; preds = %110
  %122 = load i64*, i64** %11, align 8
  %123 = icmp ne i64* %122, null
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %125, %128
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @mega_div64_32(i64 %129, i64 %132)
  store i64 %133, i64* %20, align 8
  %134 = load i64, i64* %20, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = shl i64 %138, %141
  store i64 %142, i64* %20, align 8
  %143 = load i64, i64* %20, align 8
  %144 = load i64*, i64** %11, align 8
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %124, %121
  %146 = load i64, i64* %17, align 8
  store i64 %146, i64* %7, align 8
  br label %158

147:                                              ; preds = %110, %104, %98
  br label %148

148:                                              ; preds = %147, %58
  br label %149

149:                                              ; preds = %148
  %150 = load i64, i64* %17, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %17, align 8
  br label %52

152:                                              ; preds = %52
  br label %153

153:                                              ; preds = %152, %50
  %154 = load i64, i64* %18, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %18, align 8
  br label %27

156:                                              ; preds = %43, %27
  %157 = load i64, i64* @SPAN_INVALID, align 8
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %156, %145, %95
  %159 = load i64, i64* %7, align 8
  ret i64 %159
}

declare dso_local %struct.TYPE_19__* @MR_LdRaidGet(i64, %struct.TYPE_20__*) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i64 @mega_div64_32(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
