; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_intr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_intr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.saf1761_otg_softc = type { i32 }

@UE_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"endpoint=%d set=%d\0A\00", align 1
@SOTG_DCINTERRUPT_IEP0SETUP = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@SOTG_DCINTERRUPT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i64)* @saf1761_otg_intr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_intr_set(%struct.usb_xfer* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.saf1761_otg_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %9 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32 %12)
  store %struct.saf1761_otg_softc* %13, %struct.saf1761_otg_softc** %5, align 8
  %14 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %15 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UE_ADDR, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @DPRINTFN(i32 15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = call i32 @SOTG_DCINTERRUPT_IEPRX(i64 0)
  %28 = call i32 @SOTG_DCINTERRUPT_IEPTX(i64 0)
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SOTG_DCINTERRUPT_IEP0SETUP, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %47

32:                                               ; preds = %2
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @UE_DIR_IN, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @SOTG_DCINTERRUPT_IEPTX(i64 %41)
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %32
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @SOTG_DCINTERRUPT_IEPRX(i64 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %47

47:                                               ; preds = %46, %26
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %53 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %63

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %60 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %65 = load i32, i32* @SOTG_DCINTERRUPT_EN, align 4
  %66 = load %struct.saf1761_otg_softc*, %struct.saf1761_otg_softc** %5, align 8
  %67 = getelementptr inbounds %struct.saf1761_otg_softc, %struct.saf1761_otg_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc* %64, i32 %65, i32 %68)
  ret void
}

declare dso_local %struct.saf1761_otg_softc* @SAF1761_OTG_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i64, i64) #1

declare dso_local i32 @SOTG_DCINTERRUPT_IEPRX(i64) #1

declare dso_local i32 @SOTG_DCINTERRUPT_IEPTX(i64) #1

declare dso_local i32 @SAF1761_WRITE_LE_4(%struct.saf1761_otg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
