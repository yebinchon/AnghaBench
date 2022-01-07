; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_load_microcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }

@RT2573_MCU_CODE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Firmware load failure! (ignored)\0A\00", align 1
@RT2573_MCU_RUN = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"could not run firmware: %s\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, i32*, i64)* @rum_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_load_microcode(%struct.rum_softc* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @RT2573_MCU_CODE_BASE, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %27, %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp uge i64 %11, 4
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @UGETDW(i32* %16)
  %18 = call i64 @rum_write(%struct.rum_softc* %14, i32 %15, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %23 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %34

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 4
  store i64 %33, i64* %6, align 8
  br label %10

34:                                               ; preds = %21, %10
  %35 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %36 = load i32, i32* @RT2573_MCU_RUN, align 4
  %37 = call i64 @rum_do_mcu_request(%struct.rum_softc* %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %43 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @usbd_errstr(i64 %45)
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %50 = load i32, i32* @hz, align 4
  %51 = sdiv i32 %50, 8
  %52 = call i32 @rum_pause(%struct.rum_softc* %49, i32 %51)
  ret void
}

declare dso_local i64 @rum_write(%struct.rum_softc*, i32, i32) #1

declare dso_local i32 @UGETDW(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @rum_do_mcu_request(%struct.rum_softc*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @rum_pause(%struct.rum_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
