; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.mfi_softc* }
%struct.mfi_softc = type { i64, i32, i32, i32* }
%struct.thread = type { i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @mfi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.mfi_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.thread* %2, %struct.thread** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.cdev*, %struct.cdev** %4, align 8
  %10 = getelementptr inbounds %struct.cdev, %struct.cdev* %9, i32 0, i32 0
  %11 = load %struct.mfi_softc*, %struct.mfi_softc** %10, align 8
  store %struct.mfi_softc* %11, %struct.mfi_softc** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @POLLIN, align 4
  %14 = load i32, i32* @POLLRDNORM, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %3
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %20 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @POLLIN, align 4
  %26 = load i32, i32* @POLLRDNORM, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %32 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %23, %18
  %34 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %35 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %40 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @POLLERR, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %38, %33
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @POLLIN, align 4
  %54 = load i32, i32* @POLLRDNORM, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %60 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.thread*, %struct.thread** %6, align 8
  %62 = load %struct.mfi_softc*, %struct.mfi_softc** %7, align 8
  %63 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %62, i32 0, i32 2
  %64 = call i32 @selrecord(%struct.thread* %61, i32* %63)
  br label %65

65:                                               ; preds = %58, %51
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
