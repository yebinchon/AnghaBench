; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.bktr_softc = type { i32 }

@bktr_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @bktr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bktr_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cdev*, %struct.cdev** %5, align 8
  %11 = call i32 @dev2unit(%struct.cdev* %10)
  %12 = call i32 @UNIT(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @bktr_devclass, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @devclass_get_softc(i32 %13, i32 %14)
  %16 = inttoptr i64 %15 to %struct.bktr_softc*
  store %struct.bktr_softc* %16, %struct.bktr_softc** %8, align 8
  %17 = load %struct.bktr_softc*, %struct.bktr_softc** %8, align 8
  %18 = icmp eq %struct.bktr_softc* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.cdev*, %struct.cdev** %5, align 8
  %23 = call i32 @dev2unit(%struct.cdev* %22)
  %24 = call i32 @FUNCTION(i32 %23)
  switch i32 %24, label %36 [
    i32 128, label %25
    i32 129, label %31
  ]

25:                                               ; preds = %21
  %26 = load %struct.bktr_softc*, %struct.bktr_softc** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.cdev*, %struct.cdev** %5, align 8
  %29 = load %struct.uio*, %struct.uio** %6, align 8
  %30 = call i32 @video_read(%struct.bktr_softc* %26, i32 %27, %struct.cdev* %28, %struct.uio* %29)
  store i32 %30, i32* %4, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.bktr_softc*, %struct.bktr_softc** %8, align 8
  %33 = load %struct.uio*, %struct.uio** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @vbi_read(%struct.bktr_softc* %32, %struct.uio* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %31, %25, %19
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i32 @FUNCTION(i32) #1

declare dso_local i32 @video_read(%struct.bktr_softc*, i32, %struct.cdev*, %struct.uio*) #1

declare dso_local i32 @vbi_read(%struct.bktr_softc*, %struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
