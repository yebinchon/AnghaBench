; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_al7230B_switch_radio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_al7230B_switch_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_rf = type { %struct.zyd_softc* }
%struct.zyd_softc = type { i32 }

@ZYD_CR11 = common dso_local global i32 0, align 4
@ZYD_CR251 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_rf*, i32)* @zyd_al7230B_switch_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_al7230B_switch_radio(%struct.zyd_rf* %0, i32 %1) #0 {
  %3 = alloca %struct.zyd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zyd_softc*, align 8
  store %struct.zyd_rf* %0, %struct.zyd_rf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.zyd_rf*, %struct.zyd_rf** %3, align 8
  %8 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %7, i32 0, i32 0
  %9 = load %struct.zyd_softc*, %struct.zyd_softc** %8, align 8
  store %struct.zyd_softc* %9, %struct.zyd_softc** %6, align 8
  %10 = load %struct.zyd_softc*, %struct.zyd_softc** %6, align 8
  %11 = load i32, i32* @ZYD_CR11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 4
  %16 = call i32 @zyd_write16_m(%struct.zyd_softc* %10, i32 %11, i32 %15)
  %17 = load %struct.zyd_softc*, %struct.zyd_softc** %6, align 8
  %18 = load i32, i32* @ZYD_CR251, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 63, i32 47
  %23 = call i32 @zyd_write16_m(%struct.zyd_softc* %17, i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @zyd_write16_m(%struct.zyd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
