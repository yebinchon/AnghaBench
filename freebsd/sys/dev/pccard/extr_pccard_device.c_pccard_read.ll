; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_device.c_pccard_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccard/extr_pccard_device.c_pccard_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pccard_softc* }
%struct.pccard_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.uio = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @pccard_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pccard_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cdev*, %struct.cdev** %5, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.pccard_softc*, %struct.pccard_softc** %10, align 8
  store %struct.pccard_softc* %11, %struct.pccard_softc** %8, align 8
  %12 = load %struct.pccard_softc*, %struct.pccard_softc** %8, align 8
  %13 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.uio*, %struct.uio** %6, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pccard_softc*, %struct.pccard_softc** %8, align 8
  %21 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %52

27:                                               ; preds = %16
  %28 = load %struct.pccard_softc*, %struct.pccard_softc** %8, align 8
  %29 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.uio*, %struct.uio** %6, align 8
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.uio*, %struct.uio** %6, align 8
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pccard_softc*, %struct.pccard_softc** %8, align 8
  %41 = getelementptr inbounds %struct.pccard_softc, %struct.pccard_softc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i32 @MIN(i32 %39, i64 %48)
  %50 = load %struct.uio*, %struct.uio** %6, align 8
  %51 = call i32 @uiomove(i64 %36, i32 %49, %struct.uio* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %27, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @uiomove(i64, i32, %struct.uio*) #1

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
