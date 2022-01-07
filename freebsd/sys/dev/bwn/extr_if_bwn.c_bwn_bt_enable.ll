; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_bt_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_bt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_4__, %struct.bwn_softc* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.bwn_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bwn_bluetooth = common dso_local global i64 0, align 8
@BHND_BFL_BTCOEX = common dso_local global i32 0, align 4
@BWN_PHYTYPE_B = common dso_local global i64 0, align 8
@BHND_BFL_BTC2WIRE_ALTGPIO = common dso_local global i32 0, align 4
@BWN_HF_BT_COEXISTALT = common dso_local global i32 0, align 4
@BWN_HF_BT_COEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_bt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_bt_enable(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 1
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load i64, i64* @bwn_bluetooth, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @BHND_BFL_BTCOEX, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %56

20:                                               ; preds = %11
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %29 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %56

34:                                               ; preds = %27, %20
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %36 = call i32 @bwn_hf_read(%struct.bwn_mac* %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BHND_BFL_BTC2WIRE_ALTGPIO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @BWN_HF_BT_COEXISTALT, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @BWN_HF_BT_COEXIST, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @bwn_hf_write(%struct.bwn_mac* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %33, %19, %10
  ret void
}

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
