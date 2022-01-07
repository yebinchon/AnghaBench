; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_update_ifmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_arswitch_update_ifmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_LINK_UP = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_SPEED_MASK = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_DUPLEX = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_HDX = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_TXFLOW = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_RXFLOW = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @arswitch_update_ifmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arswitch_update_ifmedia(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @IFM_ETHER, align 4
  %8 = load i32*, i32** %6, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @IFM_AVALID, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AR8X16_PORT_STS_LINK_UP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @IFM_ACTIVE, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @IFM_NONE, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %79

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AR8X16_PORT_STS_SPEED_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %44 [
    i32 130, label %29
    i32 129, label %34
    i32 128, label %39
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @IFM_10_T, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %44

34:                                               ; preds = %25
  %35 = load i32, i32* @IFM_100_TX, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %44

39:                                               ; preds = %25
  %40 = load i32, i32* @IFM_1000_T, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %25, %39, %34, %29
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AR8X16_PORT_STS_DUPLEX, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @IFM_FDX, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %59

54:                                               ; preds = %44
  %55 = load i32, i32* @IFM_HDX, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @AR8X16_PORT_STS_TXFLOW, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @AR8X16_PORT_STS_RXFLOW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %20, %74, %69
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
