; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_unsolq_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_unsolq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i64, i64*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@HDAC_UNSOLQ_READY = common dso_local global i64 0, align 8
@HDAC_UNSOLQ_BUSY = common dso_local global i64 0, align 8
@HDAC_UNSOLQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_softc*)* @hdac_unsolq_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_unsolq_flush(%struct.hdac_softc* %0) #0 {
  %2 = alloca %struct.hdac_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hdac_softc* %0, %struct.hdac_softc** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %8 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HDAC_UNSOLQ_READY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %1
  %13 = load i64, i64* @HDAC_UNSOLQ_BUSY, align 8
  %14 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %67, %12
  %17 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %18 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %21 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %16
  %25 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %26 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %29 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i64, i64* %27, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  %35 = load i32, i32* @HDAC_UNSOLQ_MAX, align 4
  %36 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %37 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %41 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %44 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i64, i64* %42, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  %50 = load i32, i32* @HDAC_UNSOLQ_MAX, align 4
  %51 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %52 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = srem i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %56 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %3, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %24
  %64 = load i32*, i32** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @HDAC_UNSOL_INTR(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %24
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %16

70:                                               ; preds = %16
  %71 = load i64, i64* @HDAC_UNSOLQ_READY, align 8
  %72 = load %struct.hdac_softc*, %struct.hdac_softc** %2, align 8
  %73 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %1
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @HDAC_UNSOL_INTR(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
