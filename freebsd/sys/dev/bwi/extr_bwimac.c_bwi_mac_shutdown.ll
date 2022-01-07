; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, i32, %struct.bwi_softc* }
%struct.bwi_softc = type { i32 (%struct.bwi_softc*, i32)*, i32 (%struct.bwi_softc*)*, i32 (%struct.bwi_softc*)* }

@BWI_MAC_F_HAS_TXSTATS = common dso_local global i32 0, align 4
@BWI_TX_NRING = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN_MAGIC = common dso_local global i32 0, align 4
@BWI_MAC_F_INITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_mac_shutdown(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %5 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %5, i32 0, i32 2
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %6, align 8
  store %struct.bwi_softc* %7, %struct.bwi_softc** %3, align 8
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BWI_MAC_F_HAS_TXSTATS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %15, i32 0, i32 2
  %17 = load i32 (%struct.bwi_softc*)*, i32 (%struct.bwi_softc*)** %16, align 8
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %19 = call i32 %17(%struct.bwi_softc* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %21, i32 0, i32 1
  %23 = load i32 (%struct.bwi_softc*)*, i32 (%struct.bwi_softc*)** %22, align 8
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %25 = call i32 %23(%struct.bwi_softc* %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %37, %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @BWI_TX_NRING, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %31, i32 0, i32 0
  %33 = load i32 (%struct.bwi_softc*, i32)*, i32 (%struct.bwi_softc*, i32)** %32, align 8
  %34 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 %33(%struct.bwi_softc* %34, i32 %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %26

40:                                               ; preds = %26
  %41 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %42 = call i32 @bwi_rf_off(%struct.bwi_mac* %41)
  %43 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %44 = call i32 @bwi_mac_gpio_fini(%struct.bwi_mac* %43)
  %45 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %46 = call i32 @bwi_rf_off(%struct.bwi_mac* %45)
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %48 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %49 = load i32, i32* @BWI_BBP_ATTEN_MAGIC, align 4
  %50 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %53 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %52, i32 0, i32 1
  %54 = call i32 @bwi_regwin_disable(%struct.bwi_softc* %51, i32* %53, i32 0)
  %55 = load i32, i32* @BWI_MAC_F_INITED, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %58 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  ret void
}

declare dso_local i32 @bwi_rf_off(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_gpio_fini(%struct.bwi_mac*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @bwi_regwin_disable(%struct.bwi_softc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
