; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_nvram.c_opal_nvram_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_nvram.c_opal_nvram_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.opal_nvram_softc* }
%struct.opal_nvram_softc = type { i32, i32, i64 }
%struct.uio = type { i64, i64 }

@NVRAM_BUFSIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@OPAL_WRITE_NVRAM = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @opal_nvram_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_nvram_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.opal_nvram_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cdev*, %struct.cdev** %4, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %12, align 8
  store %struct.opal_nvram_softc* %13, %struct.opal_nvram_softc** %10, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %70, %3
  %15 = load %struct.uio*, %struct.uio** %5, align 8
  %16 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %14
  %20 = load %struct.uio*, %struct.uio** %5, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %10, align 8
  %25 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.uio*, %struct.uio** %5, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = call i32 @MIN(i32 %23, i64 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* @NVRAM_BUFSIZE, align 8
  %34 = call i32 @MIN(i32 %32, i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @ENOSPC, align 4
  store i32 %38, i32* %8, align 4
  br label %71

39:                                               ; preds = %19
  %40 = load %struct.uio*, %struct.uio** %5, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %10, align 8
  %44 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.uio*, %struct.uio** %5, align 8
  %48 = call i32 @uiomove(i32 %45, i32 %46, %struct.uio* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %71

52:                                               ; preds = %39
  %53 = load i32, i32* @OPAL_WRITE_NVRAM, align 4
  %54 = load %struct.opal_nvram_softc*, %struct.opal_nvram_softc** %10, align 8
  %55 = getelementptr inbounds %struct.opal_nvram_softc, %struct.opal_nvram_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @opal_call(i32 %53, i32 %56, i32 %57, i64 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @OPAL_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %69 [
    i32 129, label %65
    i32 128, label %67
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* @EIO, align 4
  store i32 %66, i32* %8, align 4
  br label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %67, %65
  br label %71

70:                                               ; preds = %52
  br label %14

71:                                               ; preds = %69, %51, %37, %14
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @opal_call(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
