; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_init_b5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_g.c_bwn_phy_init_b5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32, %struct.bwn_softc*, %struct.bwn_phy }
%struct.bwn_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.bwn_phy = type { i32, i32, i32, i32, i64, %struct.bwn_phy_g }
%struct.bwn_phy_g = type { i32, i32, i32 }

@PCI_VENDOR_BROADCOM = common dso_local global i64 0, align 8
@BHND_BOARD_BU4306 = common dso_local global i64 0, align 8
@BWN_PHY_RADIO = common dso_local global i32 0, align 4
@BWN_MAC_FLAG_BADFRAME_PREEMP = common dso_local global i32 0, align 4
@BWN_PHY_RADIO_BITFIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_init_b5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_init_b5(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy*, align 8
  %4 = alloca %struct.bwn_phy_g*, align 8
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 2
  store %struct.bwn_phy* %10, %struct.bwn_phy** %3, align 8
  %11 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %11, i32 0, i32 5
  store %struct.bwn_phy_g* %12, %struct.bwn_phy_g** %4, align 8
  %13 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %14 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %13, i32 0, i32 1
  %15 = load %struct.bwn_softc*, %struct.bwn_softc** %14, align 8
  store %struct.bwn_softc* %15, %struct.bwn_softc** %5, align 8
  %16 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %17 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = call i32 @BWN_RF_SET(%struct.bwn_mac* %21, i32 122, i32 80)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %25 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_VENDOR_BROADCOM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %32 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BHND_BOARD_BU4306, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  store i32 8480, i32* %7, align 4
  store i32 168, i32* %6, align 4
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 199
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 514
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %38

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %30, %23
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %54 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %53, i32 53, i32 61695, i32 1792)
  %55 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %56 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 8272
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %61 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %60, i32 56, i32 1639)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %64 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %69 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 2
  br i1 %71, label %72, label %98

72:                                               ; preds = %67, %62
  %73 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %74 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 8272
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %79 = call i32 @BWN_RF_SET(%struct.bwn_mac* %78, i32 122, i32 32)
  %80 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %81 = call i32 @BWN_RF_SET(%struct.bwn_mac* %80, i32 81, i32 4)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %84 = load i32, i32* @BWN_PHY_RADIO, align 4
  %85 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %83, i32 %84, i32 0)
  %86 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %87 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %86, i32 2050, i32 256)
  %88 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %89 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %88, i32 1067, i32 8192)
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %90, i32 28, i32 6250)
  %92 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %93 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %92, i32 19, i32 255, i32 6400)
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %95 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %94, i32 53, i32 65472, i32 100)
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %97 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %96, i32 93, i32 65408, i32 10)
  br label %98

98:                                               ; preds = %82, %67
  %99 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %100 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BWN_MAC_FLAG_BADFRAME_PREEMP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %107 = load i32, i32* @BWN_PHY_RADIO_BITFIELD, align 4
  %108 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %106, i32 %107, i32 2048)
  br label %109

109:                                              ; preds = %105, %98
  %110 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %111 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %116 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %115, i32 38, i32 52736)
  %117 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %118 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %117, i32 33, i32 14179)
  %119 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %120 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %119, i32 34, i32 7107)
  %121 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %122 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %121, i32 35, i32 1785)
  %123 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %124 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %123, i32 36, i32 894)
  br label %128

125:                                              ; preds = %109
  %126 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %127 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %126, i32 38, i32 52224)
  br label %128

128:                                              ; preds = %125, %114
  %129 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %130 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %129, i32 48, i32 198)
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %132 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %131, i32 1004, i32 16162)
  %133 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %134 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %139 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %138, i32 32, i32 15900)
  br label %143

140:                                              ; preds = %128
  %141 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %142 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %141, i32 32, i32 12316)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %145 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %150 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %149, i32 996, i32 12288)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %153 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %8, align 4
  %155 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %156 = call i32 @bwn_phy_g_switch_chan(%struct.bwn_mac* %155, i32 7, i32 0)
  %157 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %158 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 8272
  br i1 %160, label %161, label %166

161:                                              ; preds = %151
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %163 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %162, i32 117, i32 128)
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %165 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %164, i32 121, i32 129)
  br label %166

166:                                              ; preds = %161, %151
  %167 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %168 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %167, i32 80, i32 32)
  %169 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %170 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %169, i32 80, i32 35)
  %171 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %172 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 8272
  br i1 %174, label %175, label %180

175:                                              ; preds = %166
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %177 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %176, i32 80, i32 32)
  %178 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %179 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %178, i32 90, i32 112)
  br label %180

180:                                              ; preds = %175, %166
  %181 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %182 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %181, i32 91, i32 123)
  %183 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %184 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %183, i32 92, i32 176)
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %186 = call i32 @BWN_RF_SET(%struct.bwn_mac* %185, i32 122, i32 7)
  %187 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @bwn_phy_g_switch_chan(%struct.bwn_mac* %187, i32 %188, i32 0)
  %190 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %191 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %190, i32 20, i32 128)
  %192 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %193 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %192, i32 50, i32 202)
  %194 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %195 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %194, i32 42, i32 34979)
  %196 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %197 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %198 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %197, i32 0, i32 2
  %199 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %200 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %199, i32 0, i32 1
  %201 = load %struct.bwn_phy_g*, %struct.bwn_phy_g** %4, align 8
  %202 = getelementptr inbounds %struct.bwn_phy_g, %struct.bwn_phy_g* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @bwn_phy_g_set_txpwr_sub(%struct.bwn_mac* %196, i32* %198, i32* %200, i32 %203)
  %205 = load %struct.bwn_phy*, %struct.bwn_phy** %3, align 8
  %206 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 8272
  br i1 %208, label %209, label %212

209:                                              ; preds = %180
  %210 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %211 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %210, i32 93, i32 13)
  br label %212

212:                                              ; preds = %209, %180
  %213 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %214 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %215 = call i32 @BWN_READ_2(%struct.bwn_mac* %214, i32 996)
  %216 = and i32 %215, 65472
  %217 = or i32 %216, 4
  %218 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %213, i32 996, i32 %217)
  ret void
}

declare dso_local i32 @BWN_RF_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_g_switch_chan(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_phy_g_set_txpwr_sub(%struct.bwn_mac*, i32*, i32*, i32) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
