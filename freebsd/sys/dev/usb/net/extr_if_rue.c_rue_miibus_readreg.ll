; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rue_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@RUE_BMCR = common dso_local global i32 0, align 4
@RUE_BMSR = common dso_local global i32 0, align 4
@RUE_ANAR = common dso_local global i32 0, align 4
@RUE_AER = common dso_local global i32 0, align 4
@RUE_ANLP = common dso_local global i32 0, align 4
@RUE_REG_MIN = common dso_local global i32 0, align 4
@RUE_REG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bad phy register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rue_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rue_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rue_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.rue_softc* @device_get_softc(i32 %12)
  store %struct.rue_softc* %13, %struct.rue_softc** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.rue_softc*, %struct.rue_softc** %8, align 8
  %19 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %18, i32 0, i32 1
  %20 = call i32 @mtx_owned(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.rue_softc*, %struct.rue_softc** %8, align 8
  %25 = call i32 @RUE_LOCK(%struct.rue_softc* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %39 [
    i32 131, label %28
    i32 130, label %30
    i32 134, label %32
    i32 133, label %34
    i32 132, label %36
    i32 129, label %38
    i32 128, label %38
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @RUE_BMCR, align 4
  store i32 %29, i32* %10, align 4
  br label %57

30:                                               ; preds = %26
  %31 = load i32, i32* @RUE_BMSR, align 4
  store i32 %31, i32* %10, align 4
  br label %57

32:                                               ; preds = %26
  %33 = load i32, i32* @RUE_ANAR, align 4
  store i32 %33, i32* %10, align 4
  br label %57

34:                                               ; preds = %26
  %35 = load i32, i32* @RUE_AER, align 4
  store i32 %35, i32* %10, align 4
  br label %57

36:                                               ; preds = %26
  %37 = load i32, i32* @RUE_ANLP, align 4
  store i32 %37, i32* %10, align 4
  br label %57

38:                                               ; preds = %26, %26
  store i32 0, i32* %9, align 4
  br label %61

39:                                               ; preds = %26
  %40 = load i32, i32* @RUE_REG_MIN, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @RUE_REG_MAX, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.rue_softc*, %struct.rue_softc** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @rue_csr_read_1(%struct.rue_softc* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  br label %61

51:                                               ; preds = %43, %39
  %52 = load %struct.rue_softc*, %struct.rue_softc** %8, align 8
  %53 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %61

57:                                               ; preds = %36, %34, %32, %30, %28
  %58 = load %struct.rue_softc*, %struct.rue_softc** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @rue_csr_read_2(%struct.rue_softc* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %51, %47, %38
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.rue_softc*, %struct.rue_softc** %8, align 8
  %66 = call i32 @RUE_UNLOCK(%struct.rue_softc* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.rue_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @RUE_LOCK(%struct.rue_softc*) #1

declare dso_local i32 @rue_csr_read_1(%struct.rue_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rue_csr_read_2(%struct.rue_softc*, i32) #1

declare dso_local i32 @RUE_UNLOCK(%struct.rue_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
