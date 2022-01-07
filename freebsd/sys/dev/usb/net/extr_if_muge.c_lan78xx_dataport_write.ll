; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_dataport_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_dataport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ETH_DP_SEL = common dso_local global i32 0, align 4
@ETH_DP_SEL_DPRDY_ = common dso_local global i32 0, align 4
@ETH_DP_SEL_RSEL_MASK_ = common dso_local global i32 0, align 4
@ETH_DP_ADDR = common dso_local global i32 0, align 4
@ETH_DP_DATA = common dso_local global i32 0, align 4
@ETH_DP_CMD = common dso_local global i32 0, align 4
@ETH_DP_CMD_WRITE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.muge_softc*, i32, i32, i32, i32*)* @lan78xx_dataport_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_dataport_write(%struct.muge_softc* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.muge_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.muge_softc* %0, %struct.muge_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %14, i32 %15)
  %17 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %18 = load i32, i32* @ETH_DP_SEL, align 4
  %19 = load i32, i32* @ETH_DP_SEL_DPRDY_, align 4
  %20 = call i32 @lan78xx_wait_for_bits(%struct.muge_softc* %17, i32 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %74

24:                                               ; preds = %5
  %25 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %26 = load i32, i32* @ETH_DP_SEL, align 4
  %27 = call i32 @lan78xx_read_reg(%struct.muge_softc* %25, i32 %26, i32* %11)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @ETH_DP_SEL_RSEL_MASK_, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %36 = load i32, i32* @ETH_DP_SEL, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @lan78xx_write_reg(%struct.muge_softc* %35, i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %70, %24
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %45 = load i32, i32* @ETH_DP_ADDR, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @lan78xx_write_reg(%struct.muge_softc* %44, i32 %45, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %51 = load i32, i32* @ETH_DP_DATA, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lan78xx_write_reg(%struct.muge_softc* %50, i32 %51, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %59 = load i32, i32* @ETH_DP_CMD, align 4
  %60 = load i32, i32* @ETH_DP_CMD_WRITE_, align 4
  %61 = call i32 @lan78xx_write_reg(%struct.muge_softc* %58, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.muge_softc*, %struct.muge_softc** %6, align 8
  %63 = load i32, i32* @ETH_DP_SEL, align 4
  %64 = load i32, i32* @ETH_DP_SEL_DPRDY_, align 4
  %65 = call i32 @lan78xx_wait_for_bits(%struct.muge_softc* %62, i32 %63, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %43
  br label %74

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %39

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73, %68, %23
  %75 = load i32, i32* %13, align 4
  ret i32 %75
}

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i32 @lan78xx_wait_for_bits(%struct.muge_softc*, i32, i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.muge_softc*, i32, i32*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
