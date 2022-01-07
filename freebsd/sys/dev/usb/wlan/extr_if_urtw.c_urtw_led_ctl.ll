; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unsupported LED mode %d\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32)* @urtw_led_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_led_ctl(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %7 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 131, label %9
    i32 130, label %13
    i32 129, label %17
    i32 128, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @urtw_led_mode0(%struct.urtw_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @urtw_led_mode1(%struct.urtw_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @urtw_led_mode2(%struct.urtw_softc* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @urtw_led_mode3(%struct.urtw_softc* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %27 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %29 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DPRINTF(%struct.urtw_softc* %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %25, %21, %17, %13, %9
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @urtw_led_mode0(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_led_mode1(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_led_mode2(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_led_mode3(%struct.urtw_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
