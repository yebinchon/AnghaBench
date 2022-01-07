; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_clear_stall_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_atmegadci.c_atmegadci_clear_stall_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmegadci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UE_CONTROL = common dso_local global i64 0, align 8
@ATMEGA_UENUM = common dso_local global i32 0, align 4
@ATMEGA_UERST = common dso_local global i32 0, align 4
@ATMEGA_UECONX = common dso_local global i32 0, align 4
@ATMEGA_UECONX_EPEN = common dso_local global i64 0, align 8
@ATMEGA_UECONX_STALLRQ = common dso_local global i64 0, align 8
@ATMEGA_UECONX_RSTDT = common dso_local global i64 0, align 8
@ATMEGA_UECONX_STALLRQC = common dso_local global i64 0, align 8
@UE_BULK = common dso_local global i64 0, align 8
@ATMEGA_UECFG0X_EPTYPE2 = common dso_local global i64 0, align 8
@UE_INTERRUPT = common dso_local global i64 0, align 8
@ATMEGA_UECFG0X_EPTYPE3 = common dso_local global i64 0, align 8
@ATMEGA_UECFG0X_EPTYPE1 = common dso_local global i64 0, align 8
@UE_DIR_IN = common dso_local global i64 0, align 8
@ATMEGA_UECFG0X_EPDIR = common dso_local global i64 0, align 8
@ATMEGA_UECFG0X = common dso_local global i32 0, align 4
@ATMEGA_UECFG1X = common dso_local global i32 0, align 4
@ATMEGA_UECFG1X_ALLOC = common dso_local global i64 0, align 8
@ATMEGA_UECFG1X_EPBK0 = common dso_local global i64 0, align 8
@ATMEGA_UESTA0X = common dso_local global i32 0, align 4
@ATMEGA_UESTA0X_CFGOK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Chip rejected configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmegadci_softc*, i64, i64, i64)* @atmegadci_clear_stall_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmegadci_clear_stall_sub(%struct.atmegadci_softc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.atmegadci_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.atmegadci_softc* %0, %struct.atmegadci_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @UE_CONTROL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %96

14:                                               ; preds = %4
  %15 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %16 = load i32, i32* @ATMEGA_UENUM, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %15, i32 %16, i64 %17)
  %19 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %20 = load i32, i32* @ATMEGA_UERST, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @ATMEGA_UERST_MASK(i64 %21)
  %23 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %19, i32 %20, i64 %22)
  %24 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %25 = load i32, i32* @ATMEGA_UERST, align 4
  %26 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %24, i32 %25, i64 0)
  %27 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %28 = load i32, i32* @ATMEGA_UECONX, align 4
  %29 = load i64, i64* @ATMEGA_UECONX_EPEN, align 8
  %30 = load i64, i64* @ATMEGA_UECONX_STALLRQ, align 8
  %31 = or i64 %29, %30
  %32 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %27, i32 %28, i64 %31)
  %33 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %34 = load i32, i32* @ATMEGA_UECONX, align 4
  %35 = load i64, i64* @ATMEGA_UECONX_EPEN, align 8
  %36 = load i64, i64* @ATMEGA_UECONX_RSTDT, align 8
  %37 = or i64 %35, %36
  %38 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %33, i32 %34, i64 %37)
  %39 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %40 = load i32, i32* @ATMEGA_UECONX, align 4
  %41 = load i64, i64* @ATMEGA_UECONX_EPEN, align 8
  %42 = load i64, i64* @ATMEGA_UECONX_STALLRQC, align 8
  %43 = or i64 %41, %42
  %44 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %39, i32 %40, i64 %43)
  br label %45

45:                                               ; preds = %14
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @UE_BULK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @ATMEGA_UECFG0X_EPTYPE2, align 8
  store i64 %50, i64* %9, align 8
  br label %60

51:                                               ; preds = %45
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @UE_INTERRUPT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @ATMEGA_UECFG0X_EPTYPE3, align 8
  store i64 %56, i64* %9, align 8
  br label %59

57:                                               ; preds = %51
  %58 = load i64, i64* @ATMEGA_UECFG0X_EPTYPE1, align 8
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @UE_DIR_IN, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i64, i64* @ATMEGA_UECFG0X_EPDIR, align 8
  %67 = load i64, i64* %9, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %71 = load i32, i32* @ATMEGA_UECFG0X, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %70, i32 %71, i64 %72)
  %74 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %75 = load i32, i32* @ATMEGA_UECFG1X, align 4
  %76 = load i64, i64* @ATMEGA_UECFG1X_ALLOC, align 8
  %77 = load i64, i64* @ATMEGA_UECFG1X_EPBK0, align 8
  %78 = or i64 %76, %77
  %79 = call i64 @ATMEGA_UECFG1X_EPSIZE(i32 3)
  %80 = or i64 %78, %79
  %81 = call i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc* %74, i32 %75, i64 %80)
  %82 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %83 = load i32, i32* @ATMEGA_UESTA0X, align 4
  %84 = call i64 @ATMEGA_READ_1(%struct.atmegadci_softc* %82, i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @ATMEGA_UESTA0X_CFGOK, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %69
  %90 = load %struct.atmegadci_softc*, %struct.atmegadci_softc** %5, align 8
  %91 = getelementptr inbounds %struct.atmegadci_softc, %struct.atmegadci_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %89, %69
  br label %96

96:                                               ; preds = %13, %95
  ret void
}

declare dso_local i32 @ATMEGA_WRITE_1(%struct.atmegadci_softc*, i32, i64) #1

declare dso_local i64 @ATMEGA_UERST_MASK(i64) #1

declare dso_local i64 @ATMEGA_UECFG1X_EPSIZE(i32) #1

declare dso_local i64 @ATMEGA_READ_1(%struct.atmegadci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
