; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apmwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i32* }
%struct.cdev = type { i32 }
%struct.uio = type { i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APMDEV_CTL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@APM_NPMEV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"apmwrite: event 0x%x %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @apmwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmwrite(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.apm_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %8, align 8
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = call i64 @dev2unit(%struct.cdev* %12)
  %14 = load i64, i64* @APMDEV_CTL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  store i32 %17, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load %struct.uio*, %struct.uio** %6, align 8
  %20 = getelementptr inbounds %struct.uio, %struct.uio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @E2BIG, align 4
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %18
  %27 = ptrtoint i64* %9 to i32
  %28 = load %struct.uio*, %struct.uio** %6, align 8
  %29 = call i32 @uiomove(i32 %27, i32 8, %struct.uio* %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %26
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @APM_NPMEV, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %63

39:                                               ; preds = %33
  %40 = load %struct.apm_softc*, %struct.apm_softc** %8, align 8
  %41 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.apm_softc*, %struct.apm_softc** %8, align 8
  %52 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @is_enabled(i32 %57)
  %59 = call i32 @APM_DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %58)
  %60 = load %struct.uio*, %struct.uio** %6, align 8
  %61 = getelementptr inbounds %struct.uio, %struct.uio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %49, %37, %31, %24, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

declare dso_local i32 @APM_DPRINT(i8*, i64, i32) #1

declare dso_local i32 @is_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
