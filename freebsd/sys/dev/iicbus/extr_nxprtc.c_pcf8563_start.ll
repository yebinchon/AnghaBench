; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8563_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8563_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i32 }
%struct.csr = type { i32, i32, i32 }
%struct.csr.0 = type { i32, i32, i32 }

@PCF85xx_R_CS1 = common dso_local global i32 0, align 4
@WAITFLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot read RTC control regs\0A\00", align 1
@PCF85xx_B_CS1_STOP = common dso_local global i32 0, align 4
@PCF85xx_B_SECOND_OS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WARNING: RTC battery failed; time is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot write CS1 reg\0A\00", align 1
@PCF8563_R_CLKOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxprtc_softc*)* @pcf8563_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8563_start(%struct.nxprtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxprtc_softc*, align 8
  %4 = alloca %struct.csr, align 4
  %5 = alloca i32, align 4
  store %struct.nxprtc_softc* %0, %struct.nxprtc_softc** %3, align 8
  %6 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCF85xx_R_CS1, align 4
  %10 = bitcast %struct.csr* %4 to %struct.csr.0*
  %11 = load i32, i32* @WAITFLAGS, align 4
  %12 = call i32 @nxprtc_readfrom(i32 %8, i32 %9, %struct.csr.0* %10, i32 12, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %16 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.csr, %struct.csr* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PCF85xx_B_CS1_STOP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.csr, %struct.csr* %4, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCF85xx_B_SECOND_OS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %26, %20
  %33 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %34 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %38 = load i32, i32* @PCF85xx_R_CS1, align 4
  %39 = call i32 @write_reg(%struct.nxprtc_softc* %37, i32 %38, i32 0)
  store i32 %39, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %60

47:                                               ; preds = %32
  %48 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %49 = load i32, i32* @PCF8563_R_CLKOUT, align 4
  %50 = call i32 @write_reg(%struct.nxprtc_softc* %48, i32 %49, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %26
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %52, %41, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @nxprtc_readfrom(i32, i32, %struct.csr.0*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @write_reg(%struct.nxprtc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
