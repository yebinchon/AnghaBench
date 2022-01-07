; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_gpio_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_gpio_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32 }
%struct.bwi_regwin = type { i32 }

@BWI_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*)* @bwi_mac_gpio_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_mac_gpio_fini(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_regwin*, align 8
  %6 = alloca %struct.bwi_regwin*, align 8
  %7 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 0
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %4, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %12 = call %struct.bwi_regwin* @BWI_GPIO_REGWIN(%struct.bwi_softc* %11)
  store %struct.bwi_regwin* %12, %struct.bwi_regwin** %6, align 8
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %14 = load %struct.bwi_regwin*, %struct.bwi_regwin** %6, align 8
  %15 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %13, %struct.bwi_regwin* %14, %struct.bwi_regwin** %5)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %22 = load i32, i32* @BWI_GPIO_CTRL, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %21, i32 %22, i32 0)
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %25 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %26 = call i32 @bwi_regwin_switch(%struct.bwi_softc* %24, %struct.bwi_regwin* %25, %struct.bwi_regwin** null)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %18
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.bwi_regwin* @BWI_GPIO_REGWIN(%struct.bwi_softc*) #1

declare dso_local i32 @bwi_regwin_switch(%struct.bwi_softc*, %struct.bwi_regwin*, %struct.bwi_regwin**) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
