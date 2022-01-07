; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_ar8xxx_hw_get_switch_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_ar8xxx_hw_get_switch_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }
%struct.ether_addr = type { i32 }

@AR8X16_REG_SW_MAC_ADDR0 = common dso_local global i32 0, align 4
@AR8X16_REG_SW_MAC_ADDR1 = common dso_local global i32 0, align 4
@AR8X16_REG_SW_MAC_ADDR0_BYTE5 = common dso_local global i32 0, align 4
@AR8X16_REG_SW_MAC_ADDR0_BYTE4 = common dso_local global i32 0, align 4
@AR8X16_REG_SW_MAC_ADDR1_BYTE3 = common dso_local global i32 0, align 4
@AR8X16_REG_SW_MAC_ADDR1_BYTE2 = common dso_local global i32 0, align 4
@AR8X16_REG_SW_MAC_ADDR1_BYTE1 = common dso_local global i32 0, align 4
@AR8X16_REG_SW_MAC_ADDR1_BYTE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arswitch_softc*, %struct.ether_addr*)* @ar8xxx_hw_get_switch_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_hw_get_switch_macaddr(%struct.arswitch_softc* %0, %struct.ether_addr* %1) #0 {
  %3 = alloca %struct.arswitch_softc*, align 8
  %4 = alloca %struct.ether_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %3, align 8
  store %struct.ether_addr* %1, %struct.ether_addr** %4, align 8
  %8 = load %struct.ether_addr*, %struct.ether_addr** %4, align 8
  %9 = bitcast %struct.ether_addr* %8 to i8*
  store i8* %9, i8** %7, align 8
  %10 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %11 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR0, align 4
  %14 = call i32 @arswitch_readreg(i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %16 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR1, align 4
  %19 = call i32 @arswitch_readreg(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR0_BYTE5, align 4
  %22 = call signext i8 @MS(i32 %20, i32 %21)
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 5
  store i8 %22, i8* %24, align 1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR0_BYTE4, align 4
  %27 = call signext i8 @MS(i32 %25, i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  store i8 %27, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR1_BYTE3, align 4
  %32 = call signext i8 @MS(i32 %30, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  store i8 %32, i8* %34, align 1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR1_BYTE2, align 4
  %37 = call signext i8 @MS(i32 %35, i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  store i8 %37, i8* %39, align 1
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR1_BYTE1, align 4
  %42 = call signext i8 @MS(i32 %40, i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AR8X16_REG_SW_MAC_ADDR1_BYTE0, align 4
  %47 = call signext i8 @MS(i32 %45, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %47, i8* %49, align 1
  ret i32 0
}

declare dso_local i32 @arswitch_readreg(i32, i32) #1

declare dso_local signext i8 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
