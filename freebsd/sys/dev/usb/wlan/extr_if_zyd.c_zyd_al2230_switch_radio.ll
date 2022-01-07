; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_al2230_switch_radio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_al2230_switch_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_rf = type { %struct.zyd_softc* }
%struct.zyd_softc = type { i64 }

@ZYD_ZD1211 = common dso_local global i64 0, align 8
@ZYD_CR11 = common dso_local global i32 0, align 4
@ZYD_CR251 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_rf*, i32)* @zyd_al2230_switch_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_al2230_switch_radio(%struct.zyd_rf* %0, i32 %1) #0 {
  %3 = alloca %struct.zyd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zyd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.zyd_rf* %0, %struct.zyd_rf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.zyd_rf*, %struct.zyd_rf** %3, align 8
  %9 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %8, i32 0, i32 0
  %10 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  store %struct.zyd_softc* %10, %struct.zyd_softc** %5, align 8
  %11 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %12 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ZYD_ZD1211, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 63, i32 127
  store i32 %17, i32* %7, align 4
  %18 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %19 = load i32, i32* @ZYD_CR11, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 4
  %24 = call i32 @zyd_write16_m(%struct.zyd_softc* %18, i32 %19, i32 %23)
  %25 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %26 = load i32, i32* @ZYD_CR251, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 47, %31 ]
  %34 = call i32 @zyd_write16_m(%struct.zyd_softc* %25, i32 %26, i32 %33)
  br label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @zyd_write16_m(%struct.zyd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
