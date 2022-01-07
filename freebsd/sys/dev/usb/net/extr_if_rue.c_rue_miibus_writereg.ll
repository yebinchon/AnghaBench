; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_miibus_writereg.c"
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
@.str = private unnamed_addr constant [19 x i8] c" bad phy register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @rue_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rue_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rue_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.rue_softc* @device_get_softc(i32 %13)
  store %struct.rue_softc* %14, %struct.rue_softc** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load %struct.rue_softc*, %struct.rue_softc** %10, align 8
  %20 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_owned(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.rue_softc*, %struct.rue_softc** %10, align 8
  %26 = call i32 @RUE_LOCK(%struct.rue_softc* %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %40 [
    i32 131, label %29
    i32 130, label %31
    i32 134, label %33
    i32 133, label %35
    i32 132, label %37
    i32 129, label %39
    i32 128, label %39
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @RUE_BMCR, align 4
  store i32 %30, i32* %11, align 4
  br label %59

31:                                               ; preds = %27
  %32 = load i32, i32* @RUE_BMSR, align 4
  store i32 %32, i32* %11, align 4
  br label %59

33:                                               ; preds = %27
  %34 = load i32, i32* @RUE_ANAR, align 4
  store i32 %34, i32* %11, align 4
  br label %59

35:                                               ; preds = %27
  %36 = load i32, i32* @RUE_AER, align 4
  store i32 %36, i32* %11, align 4
  br label %59

37:                                               ; preds = %27
  %38 = load i32, i32* @RUE_ANLP, align 4
  store i32 %38, i32* %11, align 4
  br label %59

39:                                               ; preds = %27, %27
  br label %64

40:                                               ; preds = %27
  %41 = load i32, i32* @RUE_REG_MIN, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @RUE_REG_MAX, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.rue_softc*, %struct.rue_softc** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @rue_csr_write_1(%struct.rue_softc* %49, i32 %50, i32 %51)
  br label %64

53:                                               ; preds = %44, %40
  %54 = load %struct.rue_softc*, %struct.rue_softc** %10, align 8
  %55 = getelementptr inbounds %struct.rue_softc, %struct.rue_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %64

59:                                               ; preds = %37, %35, %33, %31, %29
  %60 = load %struct.rue_softc*, %struct.rue_softc** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @rue_csr_write_2(%struct.rue_softc* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %53, %48, %39
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load %struct.rue_softc*, %struct.rue_softc** %10, align 8
  %69 = call i32 @RUE_UNLOCK(%struct.rue_softc* %68)
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %17
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.rue_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @RUE_LOCK(%struct.rue_softc*) #1

declare dso_local i32 @rue_csr_write_1(%struct.rue_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rue_csr_write_2(%struct.rue_softc*, i32, i32) #1

declare dso_local i32 @RUE_UNLOCK(%struct.rue_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
