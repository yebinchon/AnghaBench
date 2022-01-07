; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_mode0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_mode0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@URTW_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported LED mode 0x%x\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@URTW_LED_GPIO = common dso_local global i32 0, align 4
@URTW_LED_OFF = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@urtw_led_ch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown LED status 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*, i32)* @urtw_led_mode0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_led_mode0(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urtw_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %24 [
    i32 131, label %7
    i32 130, label %10
    i32 132, label %21
  ]

7:                                                ; preds = %2
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %9 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %8, i32 0, i32 0
  store i32 128, i32* %9, align 4
  br label %30

10:                                               ; preds = %2
  %11 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %12 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %89

16:                                               ; preds = %10
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %18 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %17, i32 0, i32 0
  store i32 133, i32* %18, align 4
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %20 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %19, i32 0, i32 2
  store i32 2, i32* %20, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %23 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %22, i32 0, i32 0
  store i32 129, i32* %23, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %26 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @DPRINTF(%struct.urtw_softc* %25, i32 %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %89

30:                                               ; preds = %21, %16, %7
  %31 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %32 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %80 [
    i32 129, label %34
    i32 133, label %44
    i32 128, label %70
  ]

34:                                               ; preds = %30
  %35 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %36 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %88

40:                                               ; preds = %34
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %42 = load i32, i32* @URTW_LED_GPIO, align 4
  %43 = call i32 @urtw_led_on(%struct.urtw_softc* %41, i32 %42)
  br label %88

44:                                               ; preds = %30
  %45 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %46 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %88

50:                                               ; preds = %44
  %51 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %52 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %54 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @URTW_LED_OFF, align 4
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 129, %59 ]
  %62 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %63 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %65 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %64, i32 0, i32 5
  %66 = load i32, i32* @hz, align 4
  %67 = load i32, i32* @urtw_led_ch, align 4
  %68 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %69 = call i32 @usb_callout_reset(i32* %65, i32 %66, i32 %67, %struct.urtw_softc* %68)
  br label %88

70:                                               ; preds = %30
  %71 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %72 = load i32, i32* @URTW_LED_GPIO, align 4
  %73 = call i32 @urtw_led_on(%struct.urtw_softc* %71, i32 %72)
  %74 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %75 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %74, i32 0, i32 4
  %76 = call i32 @usb_pause_mtx(i32* %75, i32 100)
  %77 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %78 = load i32, i32* @URTW_LED_GPIO, align 4
  %79 = call i32 @urtw_led_off(%struct.urtw_softc* %77, i32 %78)
  br label %88

80:                                               ; preds = %30
  %81 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %82 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %83 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %84 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DPRINTF(%struct.urtw_softc* %81, i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %70, %60, %49, %40, %39
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %80, %24, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32) #1

declare dso_local i32 @urtw_led_on(%struct.urtw_softc*, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.urtw_softc*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @urtw_led_off(%struct.urtw_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
