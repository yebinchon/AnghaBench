; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_release_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_release_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i32, i32*, i32, i32, i32, i32 }

@FIRE_MSIX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @fire_release_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_release_msix(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fire_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.fire_softc* @device_get_softc(i32 %9)
  store %struct.fire_softc* %10, %struct.fire_softc** %8, align 8
  %11 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %12 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FIRE_MSIX, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %21 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %20, i32 0, i32 3
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %24 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %27 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %31 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %28, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clrbit(i32 %25, i32 %36)
  %38 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %39 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %43 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %41, %44
  %46 = call i32 @clrbit(i32 %40, i32 %45)
  %47 = load %struct.fire_softc*, %struct.fire_softc** %8, align 8
  %48 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %47, i32 0, i32 3
  %49 = call i32 @mtx_unlock(i32* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %19, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.fire_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @clrbit(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
