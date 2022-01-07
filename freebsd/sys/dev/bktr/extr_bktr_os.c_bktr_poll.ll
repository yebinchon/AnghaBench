; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_os.c_bktr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.bktr_softc = type { i32, i32 }

@s = common dso_local global i32 0, align 4
@bktr_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @bktr_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bktr_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bktr_softc*, align 8
  %10 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @s, align 4
  %12 = call i32 @DECLARE_INTR_MASK(i32 %11)
  %13 = load %struct.cdev*, %struct.cdev** %5, align 8
  %14 = call i32 @dev2unit(%struct.cdev* %13)
  %15 = call i32 @UNIT(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @bktr_devclass, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @devclass_get_softc(i32 %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.bktr_softc*
  store %struct.bktr_softc* %19, %struct.bktr_softc** %9, align 8
  %20 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %21 = icmp eq %struct.bktr_softc* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %26 = call i32 @LOCK_VBI(%struct.bktr_softc* %25)
  %27 = load i32, i32* @s, align 4
  %28 = call i32 @DISABLE_INTR(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @POLLIN, align 4
  %31 = load i32, i32* @POLLRDNORM, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %24
  %36 = load %struct.cdev*, %struct.cdev** %5, align 8
  %37 = call i32 @dev2unit(%struct.cdev* %36)
  %38 = call i32 @FUNCTION(i32 %37)
  switch i32 %38, label %58 [
    i32 128, label %39
  ]

39:                                               ; preds = %35
  %40 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %41 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.thread*, %struct.thread** %7, align 8
  %46 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %47 = getelementptr inbounds %struct.bktr_softc, %struct.bktr_softc* %46, i32 0, i32 0
  %48 = call i32 @selrecord(%struct.thread* %45, i32* %47)
  br label %57

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @POLLIN, align 4
  %52 = load i32, i32* @POLLRDNORM, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %49, %44
  br label %58

58:                                               ; preds = %35, %57
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* @s, align 4
  %61 = call i32 @ENABLE_INTR(i32 %60)
  %62 = load %struct.bktr_softc*, %struct.bktr_softc** %9, align 8
  %63 = call i32 @UNLOCK_VBI(%struct.bktr_softc* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @DECLARE_INTR_MASK(i32) #1

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i32 @LOCK_VBI(%struct.bktr_softc*) #1

declare dso_local i32 @DISABLE_INTR(i32) #1

declare dso_local i32 @FUNCTION(i32) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @ENABLE_INTR(i32) #1

declare dso_local i32 @UNLOCK_VBI(%struct.bktr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
