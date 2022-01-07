; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_dummy_xmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_dummy_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_2__, %struct.bwi_rf, %struct.bwi_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.bwi_rf = type { i64, i32 }
%struct.bwi_softc = type { i32 }

@bwi_mac_dummy_xmit.packet_11a = internal constant [5 x i32] [i32 131532, i32 13893632, i32 0, i32 16777216, i32 0], align 16
@bwi_mac_dummy_xmit.packet_11bg = internal constant [5 x i32] [i32 754798, i32 13893632, i32 0, i32 16777216, i32 0], align 16
@IEEE80211_MODE_11A = common dso_local global i64 0, align 8
@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_RF_T_BCM2050 = common dso_local global i64 0, align 8
@PACKET_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_mac_dummy_xmit(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_rf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %9 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %9, i32 0, i32 2
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %10, align 8
  store %struct.bwi_softc* %11, %struct.bwi_softc** %3, align 8
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 1
  store %struct.bwi_rf* %13, %struct.bwi_rf** %4, align 8
  %14 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %15 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_MODE_11A, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 30, i32* %7, align 4
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @bwi_mac_dummy_xmit.packet_11a, i64 0, i64 0), i32** %5, align 8
  store i32 1, i32* %6, align 4
  br label %22

21:                                               ; preds = %1
  store i32 250, i32* %7, align 4
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @bwi_mac_dummy_xmit.packet_11bg, i64 0, i64 0), i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %20
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TMPLT_WRITE_4(%struct.bwi_mac* %27, i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %23

39:                                               ; preds = %23
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %41 = load i32, i32* @BWI_MAC_STATUS, align 4
  %42 = call i32 @CSR_READ_4(%struct.bwi_softc* %40, i32 %41)
  %43 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %44 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %43, i32 1384, i32 0)
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %46 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %45, i32 1984, i32 0)
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %47, i32 1292, i32 %48)
  %50 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %51 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %50, i32 1288, i32 0)
  %52 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %53 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %52, i32 1290, i32 0)
  %54 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %55 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %54, i32 1356, i32 0)
  %56 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %57 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %56, i32 1386, i32 20)
  %58 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %59 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %58, i32 1384, i32 2086)
  %60 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %61 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %60, i32 1280, i32 0)
  %62 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %63 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %62, i32 1282, i32 48)
  %64 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %65 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %39
  %70 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %71 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp sle i32 %72, 5
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %76 = call i32 @RF_WRITE(%struct.bwi_mac* %75, i32 81, i32 23)
  br label %77

77:                                               ; preds = %74, %69, %39
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %84 = call i32 @CSR_READ_2(%struct.bwi_softc* %83, i32 1294)
  %85 = and i32 %84, 128
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %93

88:                                               ; preds = %82
  %89 = call i32 @DELAY(i32 10)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %78

93:                                               ; preds = %87, %78
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %105, %93
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 10
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %99 = call i32 @CSR_READ_2(%struct.bwi_softc* %98, i32 1294)
  %100 = and i32 %99, 1024
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %108

103:                                              ; preds = %97
  %104 = call i32 @DELAY(i32 10)
  br label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %94

108:                                              ; preds = %102, %94
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %120, %108
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %110, 10
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %114 = call i32 @CSR_READ_2(%struct.bwi_softc* %113, i32 1680)
  %115 = and i32 %114, 256
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %123

118:                                              ; preds = %112
  %119 = call i32 @DELAY(i32 10)
  br label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %109

123:                                              ; preds = %117, %109
  %124 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %125 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @BWI_RF_T_BCM2050, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load %struct.bwi_rf*, %struct.bwi_rf** %4, align 8
  %131 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %132, 5
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %136 = call i32 @RF_WRITE(%struct.bwi_mac* %135, i32 81, i32 55)
  br label %137

137:                                              ; preds = %134, %129, %123
  ret void
}

declare dso_local i32 @TMPLT_WRITE_4(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
