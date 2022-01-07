; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_release_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_release_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fire_softc = type { i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @fire_release_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_release_msi(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fire_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.fire_softc* @device_get_softc(i32 %11)
  store %struct.fire_softc* %12, %struct.fire_softc** %9, align 8
  %13 = load %struct.fire_softc*, %struct.fire_softc** %9, align 8
  %14 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %13, i32 0, i32 2
  %15 = call i32 @mtx_lock(i32* %14)
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %53, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load %struct.fire_softc*, %struct.fire_softc** %9, align 8
  %22 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fire_softc*, %struct.fire_softc** %9, align 8
  %25 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fire_softc*, %struct.fire_softc** %9, align 8
  %33 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %26, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clrbit(i32 %23, i32 %38)
  %40 = load %struct.fire_softc*, %struct.fire_softc** %9, align 8
  %41 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fire_softc*, %struct.fire_softc** %9, align 8
  %49 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = call i32 @clrbit(i32 %42, i32 %51)
  br label %53

53:                                               ; preds = %20
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %16

56:                                               ; preds = %16
  %57 = load %struct.fire_softc*, %struct.fire_softc** %9, align 8
  %58 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %57, i32 0, i32 2
  %59 = call i32 @mtx_unlock(i32* %58)
  ret i32 0
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
