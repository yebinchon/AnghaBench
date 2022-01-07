; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_alloc_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_cpcht_alloc_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcht_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@cpcht_msipic = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_MSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @cpcht_alloc_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcht_alloc_msix(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cpcht_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.cpcht_softc* @device_get_softc(i32 %10)
  store %struct.cpcht_softc* %11, %struct.cpcht_softc** %8, align 8
  %12 = load i64, i64* @cpcht_msipic, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %3
  %17 = load %struct.cpcht_softc*, %struct.cpcht_softc** %8, align 8
  %18 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %17, i32 0, i32 0
  %19 = call i32 @mtx_lock(i32* %18)
  store i32 8, i32* %9, align 4
  br label %20

20:                                               ; preds = %51, %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 124
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = load %struct.cpcht_softc*, %struct.cpcht_softc** %8, align 8
  %25 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IRQ_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %23
  %35 = load i64, i64* @IRQ_MSI, align 8
  %36 = load %struct.cpcht_softc*, %struct.cpcht_softc** %8, align 8
  %37 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %35, i64* %42, align 8
  %43 = load i64, i64* @cpcht_msipic, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @MAP_IRQ(i64 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.cpcht_softc*, %struct.cpcht_softc** %8, align 8
  %48 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %47, i32 0, i32 0
  %49 = call i32 @mtx_unlock(i32* %48)
  store i32 0, i32* %4, align 4
  br label %59

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %20

54:                                               ; preds = %20
  %55 = load %struct.cpcht_softc*, %struct.cpcht_softc** %8, align 8
  %56 = getelementptr inbounds %struct.cpcht_softc, %struct.cpcht_softc* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %34, %14
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.cpcht_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MAP_IRQ(i64, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
