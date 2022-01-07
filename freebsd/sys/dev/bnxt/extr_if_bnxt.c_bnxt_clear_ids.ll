; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_clear_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_clear_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i8* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i8* }
%struct.TYPE_16__ = type { i8* }

@HWRM_NA_SIGNATURE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_softc*)* @bnxt_clear_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_clear_ids(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  %4 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %5 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %5, i32 0, i32 9
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i8* %4, i8** %7, align 8
  %8 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i8* %8, i8** %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %45, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %21 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %21, i32 0, i32 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  store i8* %20, i8** %27, align 8
  %28 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %29, i32 0, i32 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i8* %28, i8** %36, align 8
  %37 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %38 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %38, i32 0, i32 7
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i8* %37, i8** %44, align 8
  br label %45

45:                                               ; preds = %19
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %13

48:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %97, %48
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %57 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %58 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %57, i32 0, i32 6
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  store i8* %56, i8** %63, align 8
  %64 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %65 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %65, i32 0, i32 6
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  store i8* %64, i8** %72, align 8
  %73 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %74 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %75 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %74, i32 0, i32 5
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  store i8* %73, i8** %80, align 8
  %81 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %82 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %83 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  store i8* %81, i8** %88, align 8
  %89 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %90 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %91 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %90, i32 0, i32 3
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i8* %89, i8** %96, align 8
  br label %97

97:                                               ; preds = %55
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %49

100:                                              ; preds = %49
  %101 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %102 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  store i32 -1, i32* %103, align 8
  %104 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %105 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %106 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  store i8* %104, i8** %107, align 8
  %108 = load i8*, i8** @HWRM_NA_SIGNATURE, align 8
  %109 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %110 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  %112 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %113 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %118 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memset(i32 %116, i32 255, i32 %121)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
