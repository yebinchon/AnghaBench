; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2_set_txpwrlvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225v2_set_txpwrlvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32*, i32*, i32, i64, i64 }

@urtw_8225v2_txpwr_cck_ch14 = common dso_local global i32* null, align 8
@urtw_8225v2_txpwr_cck = common dso_local global i32* null, align 8
@URTW_TX_GAIN_CCK = common dso_local global i32 0, align 4
@urtw_8225v2_tx_gain_cck_ofdm = common dso_local global i32* null, align 8
@URTW_8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@URTW_TX_GAIN_OFDM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*, i32)* @urtw_8225v2_set_txpwrlvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225v2_set_txpwrlvl(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 15, i32* %7, align 4
  store i32 25, i32* %8, align 4
  store i32 10, i32* %9, align 4
  %13 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %14 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* %10, align 4
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %22 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %10, align 4
  %38 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %39 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sgt i32 %45, 35
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 35, %47 ], [ %49, %48 ]
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 14
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** @urtw_8225v2_txpwr_cck_ch14, align 8
  br label %58

56:                                               ; preds = %50
  %57 = load i32*, i32** @urtw_8225v2_txpwr_cck, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32* [ %55, %54 ], [ %57, %56 ]
  store i32* %59, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %73, %58
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 68, %65
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @urtw_8187_write_phy_cck(%struct.urtw_softc* %64, i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %78 = load i32, i32* @URTW_TX_GAIN_CCK, align 4
  %79 = load i32*, i32** @urtw_8225v2_tx_gain_cck_ofdm, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @urtw_write8_m(%struct.urtw_softc* %77, i32 %78, i32 %83)
  %85 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %86 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %85, i32 0, i32 2
  %87 = call i32 @usb_pause_mtx(i32* %86, i32 1)
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  br label %99

95:                                               ; preds = %76
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %94, %93 ], [ %98, %95 ]
  store i32 %100, i32* %11, align 4
  %101 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %102 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp sgt i32 %108, 35
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %113

111:                                              ; preds = %99
  %112 = load i32, i32* %11, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ 35, %110 ], [ %112, %111 ]
  store i32 %114, i32* %11, align 4
  %115 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %116 = load i32, i32* @URTW_8225_ANAPARAM2_ON, align 4
  %117 = call i64 @urtw_8185_set_anaparam2(%struct.urtw_softc* %115, i32 %116)
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %12, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %143

121:                                              ; preds = %113
  %122 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %123 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %122, i32 2, i32 66)
  %124 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %125 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %124, i32 5, i32 0)
  %126 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %127 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %126, i32 6, i32 64)
  %128 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %129 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %128, i32 7, i32 0)
  %130 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %131 = call i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc* %130, i32 8, i32 64)
  %132 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %133 = load i32, i32* @URTW_TX_GAIN_OFDM, align 4
  %134 = load i32*, i32** @urtw_8225v2_tx_gain_cck_ofdm, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @urtw_write8_m(%struct.urtw_softc* %132, i32 %133, i32 %138)
  %140 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %141 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %140, i32 0, i32 2
  %142 = call i32 @usb_pause_mtx(i32* %141, i32 1)
  br label %143

143:                                              ; preds = %121, %120
  %144 = load i64, i64* %12, align 8
  ret i64 %144
}

declare dso_local i32 @urtw_8187_write_phy_cck(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i64 @urtw_8185_set_anaparam2(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_8187_write_phy_ofdm(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
