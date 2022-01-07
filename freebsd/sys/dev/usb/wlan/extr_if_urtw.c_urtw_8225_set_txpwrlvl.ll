; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_set_txpwrlvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_set_txpwrlvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32*, i32*, i32 }

@urtw_8225_txpwr_cck_ch14 = common dso_local global i32* null, align 8
@urtw_8225_txpwr_cck = common dso_local global i32* null, align 8
@URTW_TX_GAIN_CCK = common dso_local global i32 0, align 4
@urtw_8225_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@URTW_8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@URTW_TX_GAIN_OFDM = common dso_local global i32 0, align 4
@urtw_8225_txpwr_ofdm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*, i32)* @urtw_8225_set_txpwrlvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225_set_txpwrlvl(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %16 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %12, align 4
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %24 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  store i32 %30, i32* %13, align 4
  store i32 11, i32* %9, align 4
  store i32 25, i32* %11, align 4
  store i32 10, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = srem i32 %40, 6
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sdiv i32 %42, 6
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 14
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32*, i32** @urtw_8225_txpwr_cck_ch14, align 8
  br label %50

48:                                               ; preds = %38
  %49 = load i32*, i32** @urtw_8225_txpwr_cck, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32* [ %47, %46 ], [ %49, %48 ]
  store i32* %51, i32** %8, align 8
  %52 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %53 = load i32, i32* @URTW_TX_GAIN_CCK, align 4
  %54 = load i32*, i32** @urtw_8225_tx_gain_cck_ofdm, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 1
  %60 = call i32 @urtw_write8_m(%struct.urtw_softc* %52, i32 %53, i32 %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %77, %50
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 68, %66
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %69, 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %68, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %65, i32 %67, i32 %75)
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %61

80:                                               ; preds = %61
  %81 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %82 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %81, i32 0, i32 2
  %83 = call i32 @usb_pause_mtx(i32* %82, i32 1)
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %85, %86
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  br label %95

91:                                               ; preds = %80
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i32 [ %90, %89 ], [ %94, %91 ]
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp sgt i32 %97, 35
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 35, %99 ], [ %101, %100 ]
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = srem i32 %104, 6
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %13, align 4
  %107 = sdiv i32 %106, 6
  store i32 %107, i32* %7, align 4
  %108 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %109 = load i32, i32* @URTW_8225_ANAPARAM2_ON, align 4
  %110 = call i64 @urtw_8185_set_anaparam2(%struct.urtw_softc* %108, i32 %109)
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %14, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %147

114:                                              ; preds = %102
  %115 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %116 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %115, i32 2, i32 66)
  %117 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %118 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %117, i32 6, i32 0)
  %119 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %120 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %119, i32 8, i32 0)
  %121 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %122 = load i32, i32* @URTW_TX_GAIN_OFDM, align 4
  %123 = load i32*, i32** @urtw_8225_tx_gain_cck_ofdm, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 1
  %129 = call i32 @urtw_write8_m(%struct.urtw_softc* %121, i32 %122, i32 %128)
  %130 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %131 = load i32*, i32** @urtw_8225_txpwr_ofdm, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %130, i32 5, i32 %135)
  %137 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %138 = load i32*, i32** @urtw_8225_txpwr_ofdm, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %137, i32 7, i32 %142)
  %144 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %145 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %144, i32 0, i32 2
  %146 = call i32 @usb_pause_mtx(i32* %145, i32 1)
  br label %147

147:                                              ; preds = %114, %113
  %148 = load i64, i64* %14, align 8
  ret i64 %148
}

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_8187_write_phy_cck(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i64 @urtw_8185_set_anaparam2(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
