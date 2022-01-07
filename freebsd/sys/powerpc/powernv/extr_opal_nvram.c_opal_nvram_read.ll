; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_nvram.c_opal_nvram_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_nvram.c_opal_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.opal_nvram_softc* }
%struct.opal_nvram_softc = type { i32, i32, i64 }
%struct.uio = type { i64, i64 }

@NVRAM_BUFSIZE = common dso_local global i64 0, align 8
@OPAL_READ_NVRAM = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @opal_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_nvram_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.opal_nvram_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = getelementptr inbounds %struct.cdev, %struct.cdev* %10, i32 0, i32 0
  %12 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %11, align 8
  store %struct.opal_nvram_softc* %12, %struct.opal_nvram_softc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %67, %3
  %14 = load %struct.uio*, %struct.uio** %5, align 8
  %15 = getelementptr inbounds %struct.uio, %struct.uio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %13
  %19 = load %struct.uio*, %struct.uio** %5, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %7, align 8
  %24 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.uio*, %struct.uio** %5, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = call i32 @MIN(i32 %22, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* @NVRAM_BUFSIZE, align 8
  %33 = call i32 @MIN(i32 %31, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %68

37:                                               ; preds = %18
  %38 = load i32, i32* @OPAL_READ_NVRAM, align 4
  %39 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %7, align 8
  %40 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.uio*, %struct.uio** %5, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @opal_call(i32 %38, i32 %41, i32 %42, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @OPAL_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %56 [
    i32 129, label %52
    i32 128, label %54
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %8, align 4
  br label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %54, %52
  br label %68

57:                                               ; preds = %37
  %58 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %7, align 8
  %59 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.uio*, %struct.uio** %5, align 8
  %63 = call i32 @uiomove(i32 %60, i32 %61, %struct.uio* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %68

67:                                               ; preds = %57
  br label %13

68:                                               ; preds = %66, %56, %36, %13
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @opal_call(i32, i32, i32, i64) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
