; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_gpio_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i64, i32 }
%struct.bwi_regwin = type { i32 }

@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_GPOSEL_MASK = common dso_local global i32 0, align 4
@BWI_MAC_GPIO_MASK = common dso_local global i32 0, align 4
@BWI_BBPID_BCM4301 = common dso_local global i64 0, align 8
@BWI_CARD_F_PA_GPIO9 = common dso_local global i32 0, align 4
@BWI_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*)* @bwi_mac_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_mac_gpio_init(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_regwin*, align 8
  %6 = alloca %struct.bwi_regwin*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %10 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %10, i32 0, i32 0
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %11, align 8
  store %struct.bwi_softc* %12, %struct.bwi_softc** %4, align 8
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %14 = load i32, i32* @BWI_MAC_STATUS, align 4
  %15 = load i32, i32* @BWI_MAC_STATUS_GPOSEL_MASK, align 4
  %16 = call i32 @CSR_CLRBITS_4(%struct.bwi_softc* %13, i32 %14, i32 %15)
  %17 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %18 = load i32, i32* @BWI_MAC_GPIO_MASK, align 4
  %19 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %17, i32 %18, i32 15)
  store i32 31, i32* %7, align 4
  store i32 15, i32* %8, align 4
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BWI_BBPID_BCM4301, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, 96
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, 96
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BWI_CARD_F_PA_GPIO9, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %39 = load i32, i32* @BWI_MAC_GPIO_MASK, align 4
  %40 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %38, i32 %39, i32 512)
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, 512
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, 512
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %47 = call %struct.bwi_regwin* @BWI_GPIO_REGWIN(%struct.bwi_softc* %46)
  store %struct.bwi_regwin* %47, %struct.bwi_regwin** %6, align 8
  %48 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %49 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %50 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %48, %struct.bwi_regwin* %49, %struct.bwi_regwin** %5)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %64

55:                                               ; preds = %45
  %56 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %57 = load i32, i32* @BWI_GPIO_CTRL, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @CSR_FILT_SETBITS_4(%struct.bwi_softc* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %62 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %63 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %61, %struct.bwi_regwin* %62, %struct.bwi_regwin** null)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %55, %53
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @CSR_CLRBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_SETBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local %struct.bwi_regwin* @BWI_GPIO_REGWIN(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @CSR_FILT_SETBITS_4(%struct.bwi_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
