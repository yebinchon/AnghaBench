; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_udav.c_udav_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udav_softc = type { i32 }

@UDAV_EPAR = common dso_local global i32 0, align 4
@UDAV_EPAR_PHY_ADR0 = common dso_local global i32 0, align 4
@UDAV_EPAR_EROA_MASK = common dso_local global i32 0, align 4
@UDAV_EPCR = common dso_local global i32 0, align 4
@UDAV_EPCR_EPOS = common dso_local global i32 0, align 4
@UDAV_EPCR_ERPRR = common dso_local global i32 0, align 4
@UDAV_EPDRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"phy=%d reg=0x%04x => 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @udav_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udav_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.udav_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.udav_softc* @device_get_softc(i32 %12)
  store %struct.udav_softc* %13, %struct.udav_softc** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load %struct.udav_softc*, %struct.udav_softc** %8, align 8
  %19 = getelementptr inbounds %struct.udav_softc, %struct.udav_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_owned(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load %struct.udav_softc*, %struct.udav_softc** %8, align 8
  %25 = call i32 @UDAV_LOCK(%struct.udav_softc* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.udav_softc*, %struct.udav_softc** %8, align 8
  %28 = load i32, i32* @UDAV_EPAR, align 4
  %29 = load i32, i32* @UDAV_EPAR_PHY_ADR0, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UDAV_EPAR_EROA_MASK, align 4
  %32 = and i32 %30, %31
  %33 = or i32 %29, %32
  %34 = call i32 @udav_csr_write1(%struct.udav_softc* %27, i32 %28, i32 %33)
  %35 = load %struct.udav_softc*, %struct.udav_softc** %8, align 8
  %36 = load i32, i32* @UDAV_EPCR, align 4
  %37 = load i32, i32* @UDAV_EPCR_EPOS, align 4
  %38 = load i32, i32* @UDAV_EPCR_ERPRR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @udav_csr_write1(%struct.udav_softc* %35, i32 %36, i32 %39)
  %41 = load %struct.udav_softc*, %struct.udav_softc** %8, align 8
  %42 = load i32, i32* @UDAV_EPCR, align 4
  %43 = load i32, i32* @UDAV_EPCR_ERPRR, align 4
  %44 = call i32 @UDAV_CLRBIT(%struct.udav_softc* %41, i32 %42, i32 %43)
  %45 = load %struct.udav_softc*, %struct.udav_softc** %8, align 8
  %46 = load i32, i32* @UDAV_EPDRL, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %48 = call i32 @udav_csr_read(%struct.udav_softc* %45, i32 %46, i32* %47, i32 2)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %50, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %26
  %62 = load %struct.udav_softc*, %struct.udav_softc** %8, align 8
  %63 = call i32 @UDAV_UNLOCK(%struct.udav_softc* %62)
  br label %64

64:                                               ; preds = %61, %26
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.udav_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @UDAV_LOCK(%struct.udav_softc*) #1

declare dso_local i32 @udav_csr_write1(%struct.udav_softc*, i32, i32) #1

declare dso_local i32 @UDAV_CLRBIT(%struct.udav_softc*, i32, i32) #1

declare dso_local i32 @udav_csr_read(%struct.udav_softc*, i32, i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @UDAV_UNLOCK(%struct.udav_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
