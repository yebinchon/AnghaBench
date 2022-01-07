; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_set_rxantenna.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_set_rxantenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i64 }

@RT2560_BBP_RX = common dso_local global i32 0, align 4
@RT2560_BBP_ANTMASK = common dso_local global i32 0, align 4
@RT2560_BBP_ANTA = common dso_local global i32 0, align 4
@RT2560_BBP_ANTB = common dso_local global i32 0, align 4
@RT2560_BBP_DIVERSITY = common dso_local global i32 0, align 4
@RT2560_RF_2525E = common dso_local global i64 0, align 8
@RT2560_RF_2526 = common dso_local global i64 0, align 8
@RT2560_BBP_FLIPIQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*, i32)* @rt2560_set_rxantenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_set_rxantenna(%struct.rt2560_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %7 = load i32, i32* @RT2560_BBP_RX, align 4
  %8 = call i32 @rt2560_bbp_read(%struct.rt2560_softc* %6, i32 %7)
  %9 = load i32, i32* @RT2560_BBP_ANTMASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @RT2560_BBP_ANTA, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @RT2560_BBP_ANTB, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @RT2560_BBP_DIVERSITY, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21
  br label %30

30:                                               ; preds = %29, %14
  %31 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %32 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RT2560_RF_2525E, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %38 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RT2560_RF_2526, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @RT2560_BBP_FLIPIQ, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %49 = load i32, i32* @RT2560_BBP_RX, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @rt2560_bbp_write(%struct.rt2560_softc* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @rt2560_bbp_read(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @rt2560_bbp_write(%struct.rt2560_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
