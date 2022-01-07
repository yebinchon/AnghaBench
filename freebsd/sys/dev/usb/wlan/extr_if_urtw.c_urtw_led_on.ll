; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32 }

@URTW_LED_GPIO = common dso_local global i32 0, align 4
@URTW_GPIO = common dso_local global i32 0, align 4
@URTW_GP_ENABLE = common dso_local global i32 0, align 4
@URTW_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported LED PIN type 0x%x\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported LED type 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32)* @urtw_led_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_led_on(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @URTW_LED_GPIO, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %11 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %20 [
    i32 128, label %13
  ]

13:                                               ; preds = %9
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %15 = load i32, i32* @URTW_GPIO, align 4
  %16 = call i32 @urtw_write8_m(%struct.urtw_softc* %14, i32 %15, i32 1)
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %18 = load i32, i32* @URTW_GP_ENABLE, align 4
  %19 = call i32 @urtw_write8_m(%struct.urtw_softc* %17, i32 %18, i32 0)
  br label %28

20:                                               ; preds = %9
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %22 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %24 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DPRINTF(%struct.urtw_softc* %21, i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %38

28:                                               ; preds = %13
  br label %35

29:                                               ; preds = %2
  %30 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %31 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DPRINTF(%struct.urtw_softc* %30, i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %37 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %29, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
