; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_current_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_current_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32 }

@CBB_SOCKET_CONTROL = common dso_local global i32 0, align 4
@CBB_SOCKET_CTRL_VCCMASK = common dso_local global i32 0, align 4
@CARD_5V_CARD = common dso_local global i32 0, align 4
@CARD_3V_CARD = common dso_local global i32 0, align 4
@CARD_XV_CARD = common dso_local global i32 0, align 4
@CARD_YV_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cbb_current_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_current_voltage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbb_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.cbb_softc* @device_get_softc(i32 %6)
  store %struct.cbb_softc* %7, %struct.cbb_softc** %4, align 8
  %8 = load %struct.cbb_softc*, %struct.cbb_softc** %4, align 8
  %9 = load i32, i32* @CBB_SOCKET_CONTROL, align 4
  %10 = call i32 @cbb_get(%struct.cbb_softc* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CBB_SOCKET_CTRL_VCCMASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 131, label %16
    i32 129, label %18
    i32 128, label %20
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @CARD_5V_CARD, align 4
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @CARD_3V_CARD, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @CARD_XV_CARD, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @CARD_YV_CARD, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %18, %16, %14
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
