; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_f54_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_f54_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@E1 = common dso_local global i64 0, align 8
@E1U = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn_softc*)* @f54_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f54_init(%struct.mn_softc* %0) #0 {
  %2 = alloca %struct.mn_softc*, align 8
  store %struct.mn_softc* %0, %struct.mn_softc** %2, align 8
  %3 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 7, i32* %6, align 4
  %7 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 189, i32* %10, align 4
  %11 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 3, i32* %14, align 4
  %15 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 0, i32* %18, align 4
  %19 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 24, i32* %22, align 4
  %23 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 8, i32* %26, align 4
  %27 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  store i32 0, i32* %30, align 4
  %31 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i32 56, i32* %34, align 4
  %35 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 8
  store i32 0, i32* %38, align 4
  %39 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 9
  store i32 240, i32* %42, align 4
  %43 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %44 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 10
  store i32 14, i32* %46, align 4
  %47 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @E1, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 11
  store i32 3, i32* %56, align 4
  br label %69

57:                                               ; preds = %1
  %58 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @E1U, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %65 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 11
  store i32 51, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %52
  %70 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %71 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 12
  store i32 176, i32* %73, align 4
  %74 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 13
  store i32 10, i32* %77, align 4
  %78 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %79 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 14
  store i32 21, i32* %81, align 4
  %82 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %83 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 15
  store i32 159, i32* %85, align 4
  %86 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @E1, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %69
  %92 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %93 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 16
  store i32 28, i32* %95, align 4
  br label %108

96:                                               ; preds = %69
  %97 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %98 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @E1U, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %104 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 16
  store i32 60, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %96
  br label %108

108:                                              ; preds = %107, %91
  %109 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %110 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 17
  store i32 7, i32* %112, align 4
  %113 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %114 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 18
  store i32 61, i32* %116, align 4
  %117 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %118 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 19
  store i32 5, i32* %120, align 4
  %121 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %122 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 20
  store i32 0, i32* %124, align 4
  %125 = load %struct.mn_softc*, %struct.mn_softc** %2, align 8
  %126 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %125, i32 0, i32 1
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 21
  store i32 81, i32* %128, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
