; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_switch_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_g_switch_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@BWN_CHANNEL = common dso_local global i32 0, align 4
@BHND_NVAR_CC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"error reading country code from NVRAM, assuming channel 14 unavailable: %d\0A\00", align 1
@BWN_SPROM1_CC_WORLDWIDE = common dso_local global i64 0, align 8
@BWN_SPROM1_CC_JP = common dso_local global i64 0, align 8
@BWN_HF_JAPAN_CHAN14_OFF = common dso_local global i32 0, align 4
@BWN_CHANNEL_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i32, i64)* @bwn_phy_g_switch_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_g_switch_chan(%struct.bwn_mac* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bwn_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %11, align 8
  store %struct.bwn_softc* %12, %struct.bwn_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @bwn_spu_workaround(%struct.bwn_mac* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %3
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %21 = load i32, i32* @BWN_CHANNEL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @bwn_phy_g_chan2freq(i32 %22)
  %24 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %20, i32 %21, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 14
  br i1 %26, label %27, label %69

27:                                               ; preds = %19
  %28 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %29 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BHND_NVAR_CC, align 4
  %32 = call i32 @bhnd_nvram_getvar_uint8(i32 %30, i32 %31, i64* %9)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.bwn_softc*, %struct.bwn_softc** %7, align 8
  %37 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i64, i64* @BWN_SPROM1_CC_WORLDWIDE, align 8
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %35, %27
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @BWN_SPROM1_CC_JP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %48 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %49 = call i32 @bwn_hf_read(%struct.bwn_mac* %48)
  %50 = load i32, i32* @BWN_HF_JAPAN_CHAN14_OFF, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @bwn_hf_write(%struct.bwn_mac* %47, i32 %52)
  br label %61

54:                                               ; preds = %42
  %55 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %56 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %57 = call i32 @bwn_hf_read(%struct.bwn_mac* %56)
  %58 = load i32, i32* @BWN_HF_JAPAN_CHAN14_OFF, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @bwn_hf_write(%struct.bwn_mac* %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %46
  %62 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %63 = load i32, i32* @BWN_CHANNEL_EXT, align 4
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %65 = load i32, i32* @BWN_CHANNEL_EXT, align 4
  %66 = call i32 @BWN_READ_2(%struct.bwn_mac* %64, i32 %65)
  %67 = or i32 %66, 2048
  %68 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %62, i32 %63, i32 %67)
  br label %77

69:                                               ; preds = %19
  %70 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %71 = load i32, i32* @BWN_CHANNEL_EXT, align 4
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %73 = load i32, i32* @BWN_CHANNEL_EXT, align 4
  %74 = call i32 @BWN_READ_2(%struct.bwn_mac* %72, i32 %73)
  %75 = and i32 %74, 63423
  %76 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %70, i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %69, %61
  ret void
}

declare dso_local i32 @bwn_spu_workaround(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_g_chan2freq(i32) #1

declare dso_local i32 @bhnd_nvram_getvar_uint8(i32, i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bwn_hf_write(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_hf_read(%struct.bwn_mac*) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
