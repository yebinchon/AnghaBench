; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_gpio_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BWN_MACCTL = common dso_local global i32 0, align 4
@BWN_MACCTL_GPOUT_MASK = common dso_local global i32 0, align 4
@BWN_GPIO_MASK = common dso_local global i32 0, align 4
@BHND_BFL_PACTRL = common dso_local global i32 0, align 4
@BHND_GPIO_BOARD_PACTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_gpio_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 0
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  store i32 15, i32* %4, align 4
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = load i32, i32* @BWN_MACCTL, align 4
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = load i32, i32* @BWN_MACCTL, align 4
  %12 = call i32 @BWN_READ_4(%struct.bwn_mac* %10, i32 %11)
  %13 = load i32, i32* @BWN_MACCTL_GPOUT_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %8, i32 %9, i32 %15)
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = load i32, i32* @BWN_GPIO_MASK, align 4
  %19 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %20 = load i32, i32* @BWN_GPIO_MASK, align 4
  %21 = call i32 @BWN_READ_2(%struct.bwn_mac* %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %17, i32 %18, i32 %23)
  %25 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BHND_BFL_PACTRL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %1
  %33 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %34 = load i32, i32* @BWN_GPIO_MASK, align 4
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %36 = load i32, i32* @BWN_GPIO_MASK, align 4
  %37 = call i32 @BWN_READ_2(%struct.bwn_mac* %35, i32 %36)
  %38 = load i32, i32* @BHND_GPIO_BOARD_PACTRL, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %33, i32 %34, i32 %39)
  %41 = load i32, i32* @BHND_GPIO_BOARD_PACTRL, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %32, %1
  %45 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @bwn_gpio_control(%struct.bwn_mac* %45, i32 %46)
  ret i32 %47
}

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_gpio_control(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
