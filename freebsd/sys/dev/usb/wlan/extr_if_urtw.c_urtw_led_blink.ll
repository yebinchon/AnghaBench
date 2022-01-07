; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_blink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_led_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i64, i64, i32, i32, i32, i64 }

@URTW_LED_ON = common dso_local global i64 0, align 8
@URTW_LED_GPIO = common dso_local global i32 0, align 4
@URTW_LED_BLINK_SLOWLY = common dso_local global i32 0, align 4
@URTW_LED_BLINK_CM3 = common dso_local global i32 0, align 4
@URTW_LED_OFF = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@urtw_led_ch = common dso_local global i32 0, align 4
@URTW_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown LED status 0x%x\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*)* @urtw_led_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_led_blink(%struct.urtw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %7 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @URTW_LED_ON, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %13 = load i32, i32* @URTW_LED_GPIO, align 4
  %14 = call i32 @urtw_led_on(%struct.urtw_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %17 = load i32, i32* @URTW_LED_GPIO, align 4
  %18 = call i32 @urtw_led_off(%struct.urtw_softc* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %21 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %25 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %48

29:                                               ; preds = %19
  %30 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %31 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 128
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %36 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @URTW_LED_BLINK_SLOWLY, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %42 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @URTW_LED_BLINK_CM3, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %40, %34, %29
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  %52 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %53 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @URTW_LED_ON, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %60 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %65 = load i32, i32* @URTW_LED_GPIO, align 4
  %66 = call i32 @urtw_led_on(%struct.urtw_softc* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %84

67:                                               ; preds = %58, %51
  %68 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %69 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* @URTW_LED_OFF, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %76 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %81 = load i32, i32* @URTW_LED_GPIO, align 4
  %82 = call i32 @urtw_led_off(%struct.urtw_softc* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %74, %67
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %86 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %88 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  store i32 0, i32* %2, align 4
  br label %122

89:                                               ; preds = %48
  %90 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %91 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @URTW_LED_ON, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @URTW_LED_ON, align 8
  br label %99

97:                                               ; preds = %89
  %98 = load i64, i64* @URTW_LED_OFF, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i64 [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %102 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %104 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %113 [
    i32 128, label %106
  ]

106:                                              ; preds = %99
  %107 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %108 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %107, i32 0, i32 4
  %109 = load i32, i32* @hz, align 4
  %110 = load i32, i32* @urtw_led_ch, align 4
  %111 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %112 = call i32 @usb_callout_reset(i32* %108, i32 %109, i32 %110, %struct.urtw_softc* %111)
  br label %121

113:                                              ; preds = %99
  %114 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %115 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %116 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %117 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @DPRINTF(%struct.urtw_softc* %114, i32 %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %113, %84
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @urtw_led_on(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_led_off(%struct.urtw_softc*, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.urtw_softc*) #1

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
