; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_gct_switch_radio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_gct_switch_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_rf = type { %struct.zyd_softc* }
%struct.zyd_softc = type { i64 }

@ZYD_CR11 = common dso_local global i32 0, align 4
@ZYD_CR251 = common dso_local global i32 0, align 4
@ZYD_ZD1211B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_rf*, i32)* @zyd_gct_switch_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_gct_switch_radio(%struct.zyd_rf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zyd_rf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zyd_softc*, align 8
  store %struct.zyd_rf* %0, %struct.zyd_rf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.zyd_rf*, %struct.zyd_rf** %4, align 8
  %9 = getelementptr inbounds %struct.zyd_rf, %struct.zyd_rf* %8, i32 0, i32 0
  %10 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  store %struct.zyd_softc* %10, %struct.zyd_softc** %7, align 8
  %11 = load %struct.zyd_softc*, %struct.zyd_softc** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 155540, i32 155536
  %16 = call i32 @zyd_rfwrite(%struct.zyd_softc* %11, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.zyd_softc*, %struct.zyd_softc** %7, align 8
  %23 = load i32, i32* @ZYD_CR11, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 4
  %28 = call i32 @zyd_write16_m(%struct.zyd_softc* %22, i32 %23, i32 %27)
  %29 = load %struct.zyd_softc*, %struct.zyd_softc** %7, align 8
  %30 = load i32, i32* @ZYD_CR251, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.zyd_softc*, %struct.zyd_softc** %7, align 8
  %35 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ZYD_ZD1211B, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 127, i32 63
  br label %42

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %33
  %43 = phi i32 [ %40, %33 ], [ 47, %41 ]
  %44 = call i32 @zyd_write16_m(%struct.zyd_softc* %29, i32 %30, i32 %43)
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @zyd_rfwrite(%struct.zyd_softc*, i32) #1

declare dso_local i32 @zyd_write16_m(%struct.zyd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
