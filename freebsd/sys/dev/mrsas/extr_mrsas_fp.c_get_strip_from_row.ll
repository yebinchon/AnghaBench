; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_get_strip_from_row.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_get_strip_from_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i64, i64*, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@MRSAS_PRL11 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"AVAGO Debug - get_strip_from_row: returns invalid strip for ld=%x, row=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mrsas_softc*, i64, i64, %struct.TYPE_20__*)* @get_strip_from_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_strip_from_row(%struct.mrsas_softc* %0, i64 %1, i64 %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mrsas_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %19 = call %struct.TYPE_19__* @MR_LdRaidGet(i64 %17, %struct.TYPE_20__* %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %10, align 8
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %6, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %13, align 8
  store i64 0, i64* %15, align 8
  br label %23

23:                                               ; preds = %148, %4
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %151

27:                                               ; preds = %23
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = load i64, i64* %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i64 %33
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %11, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %151

40:                                               ; preds = %27
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %148

47:                                               ; preds = %40
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %144, %47
  %49 = load i64, i64* %14, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %147

54:                                               ; preds = %48
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = add i64 %68, 1
  %70 = icmp uge i64 %67, %69
  br i1 %70, label %71, label %143

71:                                               ; preds = %54
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i64 %85
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %12, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %142

92:                                               ; preds = %71
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sle i64 %93, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %92
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @mega_mod64(i64 %103, i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %98
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @mega_div64_32(i64 %118, i32 %121)
  store i64 %122, i64* %16, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %16, align 8
  %127 = mul nsw i64 %126, %125
  store i64 %127, i64* %16, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %16, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %16, align 8
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %16, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %16, align 8
  %141 = load i64, i64* %16, align 8
  store i64 %141, i64* %5, align 8
  br label %157

142:                                              ; preds = %98, %92, %71
  br label %143

143:                                              ; preds = %142, %54
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %14, align 8
  br label %48

147:                                              ; preds = %48
  br label %148

148:                                              ; preds = %147, %46
  %149 = load i64, i64* %15, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %15, align 8
  br label %23

151:                                              ; preds = %39, %23
  %152 = load %struct.mrsas_softc*, %struct.mrsas_softc** %6, align 8
  %153 = load i32, i32* @MRSAS_PRL11, align 4
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @mrsas_dprint(%struct.mrsas_softc* %152, i32 %153, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %154, i64 %155)
  store i64 -1, i64* %5, align 8
  br label %157

157:                                              ; preds = %151, %109
  %158 = load i64, i64* %5, align 8
  ret i64 %158
}

declare dso_local %struct.TYPE_19__* @MR_LdRaidGet(i64, %struct.TYPE_20__*) #1

declare dso_local i64 @mega_mod64(i64, i32) #1

declare dso_local i64 @mega_div64_32(i64, i32) #1

declare dso_local i32 @mrsas_dprint(%struct.mrsas_softc*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
