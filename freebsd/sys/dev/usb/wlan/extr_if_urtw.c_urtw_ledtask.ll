; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_ledtask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_ledtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i64 }

@URTW_SW_LED_MODE0 = common dso_local global i64 0, align 8
@URTW_DEBUG_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not process a LED strategy 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @urtw_ledtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_ledtask(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urtw_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.urtw_softc*
  store %struct.urtw_softc* %7, %struct.urtw_softc** %5, align 8
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %9 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @URTW_SW_LED_MODE0, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %15 = load i32, i32* @URTW_DEBUG_STATE, align 4
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %17 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @DPRINTF(%struct.urtw_softc* %14, i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %22 = call i32 @URTW_LOCK(%struct.urtw_softc* %21)
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %24 = call i32 @urtw_led_blink(%struct.urtw_softc* %23)
  %25 = load %struct.urtw_softc*, %struct.urtw_softc** %5, align 8
  %26 = call i32 @URTW_UNLOCK(%struct.urtw_softc* %25)
  br label %27

27:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @DPRINTF(%struct.urtw_softc*, i32, i8*, i64) #1

declare dso_local i32 @URTW_LOCK(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_led_blink(%struct.urtw_softc*) #1

declare dso_local i32 @URTW_UNLOCK(%struct.urtw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
