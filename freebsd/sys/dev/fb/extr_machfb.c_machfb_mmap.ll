; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }
%struct.machfb_softc = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64*, i32, i32*)* @machfb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_mmap(%struct.TYPE_5__* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.machfb_softc*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = bitcast %struct.TYPE_5__* %14 to %struct.machfb_softc*
  store %struct.machfb_softc* %15, %struct.machfb_softc** %12, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %13, align 8
  %18 = load %struct.machfb_softc*, %struct.machfb_softc** %12, align 8
  %19 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.machfb_softc*, %struct.machfb_softc** %12, align 8
  %25 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.machfb_softc*, %struct.machfb_softc** %12, align 8
  %31 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = icmp slt i64 %29, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.machfb_softc*, %struct.machfb_softc** %12, align 8
  %45 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %6, align 4
  br label %91

49:                                               ; preds = %28, %22, %5
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.machfb_softc*, %struct.machfb_softc** %12, align 8
  %52 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %49
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.machfb_softc*, %struct.machfb_softc** %12, align 8
  %58 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = icmp slt i64 %56, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.machfb_softc*, %struct.machfb_softc** %12, align 8
  %72 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load i64*, i64** %9, align 8
  store i64 %74, i64* %75, align 8
  store i32 0, i32* %6, align 4
  br label %91

76:                                               ; preds = %55, %49
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  store i32 0, i32* %6, align 4
  br label %91

89:                                               ; preds = %76
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %82, %65, %38
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
