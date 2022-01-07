; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_chip_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_phy, %struct.bwn_softc* }
%struct.bwn_phy = type { i64, i32 (%struct.bwn_mac.0*, i32)*, i32 (%struct.bwn_mac.1*, i32)*, i32 (%struct.bwn_mac.2*, i32)*, i64 }
%struct.bwn_mac.0 = type opaque
%struct.bwn_mac.1 = type opaque
%struct.bwn_mac.2 = type opaque
%struct.bwn_softc = type { i32 }

@BWN_MACCTL_IHR_ON = common dso_local global i32 0, align 4
@BWN_MACCTL_SHM_ON = common dso_local global i32 0, align 4
@BWN_MACCTL_STA = common dso_local global i32 0, align 4
@BWN_MACCTL_GMODE = common dso_local global i32 0, align 4
@BWN_MACCTL = common dso_local global i32 0, align 4
@BWN_IMMODE_NONE = common dso_local global i32 0, align 4
@BWN_ANT_DEFAULT = common dso_local global i32 0, align 4
@BWN_PHYTYPE_B = common dso_local global i64 0, align 8
@BWN_SHARED = common dso_local global i32 0, align 4
@BWN_INTR_REASON = common dso_local global i32 0, align 4
@BWN_DMA0_INTR_MASK = common dso_local global i32 0, align 4
@BWN_DMA1_INTR_MASK = common dso_local global i32 0, align 4
@BWN_DMA2_INTR_MASK = common dso_local global i32 0, align 4
@BWN_DMA3_INTR_MASK = common dso_local global i32 0, align 4
@BWN_DMA4_INTR_MASK = common dso_local global i32 0, align 4
@BWN_DMA5_INTR_MASK = common dso_local global i32 0, align 4
@BHND_CLOCK_HT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to fetch HT clock latency: %d\0A\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid HT clock latency: %u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BWN_POWERUP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_chip_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca %struct.bwn_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 1
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %10, align 8
  store %struct.bwn_softc* %11, %struct.bwn_softc** %4, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  store %struct.bwn_phy* %13, %struct.bwn_phy** %5, align 8
  %14 = load i32, i32* @BWN_MACCTL_IHR_ON, align 4
  %15 = load i32, i32* @BWN_MACCTL_SHM_ON, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BWN_MACCTL_STA, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %20 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @BWN_MACCTL_GMODE, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %29 = load i32, i32* @BWN_MACCTL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %28, i32 %29, i32 %30)
  %32 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %33 = call i32 @bwn_fw_fillinfo(%struct.bwn_mac* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %220

38:                                               ; preds = %27
  %39 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %40 = call i32 @bwn_fw_loaducode(%struct.bwn_mac* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %220

45:                                               ; preds = %38
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = call i32 @bwn_gpio_init(%struct.bwn_mac* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %220

52:                                               ; preds = %45
  %53 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %54 = call i32 @bwn_fw_loadinitvals(%struct.bwn_mac* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %220

59:                                               ; preds = %52
  %60 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %61 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %60, i32 0, i32 3
  %62 = load i32 (%struct.bwn_mac.2*, i32)*, i32 (%struct.bwn_mac.2*, i32)** %61, align 8
  %63 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %64 = bitcast %struct.bwn_mac* %63 to %struct.bwn_mac.2*
  %65 = call i32 %62(%struct.bwn_mac.2* %64, i32 1)
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %67 = call i32 @bwn_phy_init(%struct.bwn_mac* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %220

72:                                               ; preds = %59
  %73 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %74 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %73, i32 0, i32 2
  %75 = load i32 (%struct.bwn_mac.1*, i32)*, i32 (%struct.bwn_mac.1*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.bwn_mac.1*, i32)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %79 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %78, i32 0, i32 2
  %80 = load i32 (%struct.bwn_mac.1*, i32)*, i32 (%struct.bwn_mac.1*, i32)** %79, align 8
  %81 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %82 = bitcast %struct.bwn_mac* %81 to %struct.bwn_mac.1*
  %83 = load i32, i32* @BWN_IMMODE_NONE, align 4
  %84 = call i32 %80(%struct.bwn_mac.1* %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %87 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %86, i32 0, i32 1
  %88 = load i32 (%struct.bwn_mac.0*, i32)*, i32 (%struct.bwn_mac.0*, i32)** %87, align 8
  %89 = icmp ne i32 (%struct.bwn_mac.0*, i32)* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %92 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %91, i32 0, i32 1
  %93 = load i32 (%struct.bwn_mac.0*, i32)*, i32 (%struct.bwn_mac.0*, i32)** %92, align 8
  %94 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %95 = bitcast %struct.bwn_mac* %94 to %struct.bwn_mac.0*
  %96 = load i32, i32* @BWN_ANT_DEFAULT, align 4
  %97 = call i32 %93(%struct.bwn_mac.0* %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %85
  %99 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %100 = load i32, i32* @BWN_ANT_DEFAULT, align 4
  %101 = call i32 @bwn_set_txantenna(%struct.bwn_mac* %99, i32 %100)
  %102 = load %struct.bwn_phy*, %struct.bwn_phy** %5, align 8
  %103 = getelementptr inbounds %struct.bwn_phy, %struct.bwn_phy* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BWN_PHYTYPE_B, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %109 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %110 = call i32 @BWN_READ_2(%struct.bwn_mac* %109, i32 94)
  %111 = or i32 %110, 4
  %112 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %108, i32 94, i32 %111)
  br label %113

113:                                              ; preds = %107, %98
  %114 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %115 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %114, i32 256, i32 16777216)
  %116 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %117 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bhnd_get_hwrev(i32 %118)
  %120 = icmp slt i32 %119, 5
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %123 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %122, i32 268, i32 16777216)
  br label %124

124:                                              ; preds = %121, %113
  %125 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %126 = load i32, i32* @BWN_MACCTL, align 4
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %128 = load i32, i32* @BWN_MACCTL, align 4
  %129 = call i32 @BWN_READ_4(%struct.bwn_mac* %127, i32 %128)
  %130 = load i32, i32* @BWN_MACCTL_STA, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %129, %131
  %133 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %125, i32 %126, i32 %132)
  %134 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %135 = load i32, i32* @BWN_MACCTL, align 4
  %136 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %137 = load i32, i32* @BWN_MACCTL, align 4
  %138 = call i32 @BWN_READ_4(%struct.bwn_mac* %136, i32 %137)
  %139 = load i32, i32* @BWN_MACCTL_STA, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %134, i32 %135, i32 %140)
  %142 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %143 = load i32, i32* @BWN_SHARED, align 4
  %144 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %142, i32 %143, i32 116, i32 0)
  %145 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %146 = call i32 @bwn_set_opmode(%struct.bwn_mac* %145)
  %147 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %148 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @bhnd_get_hwrev(i32 %149)
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %161

152:                                              ; preds = %124
  %153 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %154 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %153, i32 1550, i32 0)
  %155 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %156 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %155, i32 1552, i32 32768)
  %157 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %158 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %157, i32 1540, i32 0)
  %159 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %160 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %159, i32 1542, i32 512)
  br label %166

161:                                              ; preds = %124
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %163 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %162, i32 392, i32 -2147483648)
  %164 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %165 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %164, i32 396, i32 33554432)
  br label %166

166:                                              ; preds = %161, %152
  %167 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %168 = load i32, i32* @BWN_INTR_REASON, align 4
  %169 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %167, i32 %168, i32 16384)
  %170 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %171 = load i32, i32* @BWN_DMA0_INTR_MASK, align 4
  %172 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %170, i32 %171, i32 121856)
  %173 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %174 = load i32, i32* @BWN_DMA1_INTR_MASK, align 4
  %175 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %173, i32 %174, i32 56320)
  %176 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %177 = load i32, i32* @BWN_DMA2_INTR_MASK, align 4
  %178 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %176, i32 %177, i32 56320)
  %179 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %180 = load i32, i32* @BWN_DMA3_INTR_MASK, align 4
  %181 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %179, i32 %180, i32 121856)
  %182 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %183 = load i32, i32* @BWN_DMA4_INTR_MASK, align 4
  %184 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %182, i32 %183, i32 56320)
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %186 = load i32, i32* @BWN_DMA5_INTR_MASK, align 4
  %187 = call i32 @BWN_WRITE_4(%struct.bwn_mac* %185, i32 %186, i32 56320)
  %188 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %189 = call i32 @bwn_mac_phy_clock_set(%struct.bwn_mac* %188, i32 1)
  %190 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %191 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @BHND_CLOCK_HT, align 4
  %194 = call i32 @bhnd_get_clock_latency(i32 %192, i32 %193, i32* %7)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %166
  %198 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %199 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @device_printf(i32 %200, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %8, align 4
  store i32 %203, i32* %2, align 4
  br label %220

204:                                              ; preds = %166
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @UINT16_MAX, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %210 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @device_printf(i32 %211, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @ENXIO, align 4
  store i32 %214, i32* %2, align 4
  br label %220

215:                                              ; preds = %204
  %216 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %217 = load i32, i32* @BWN_POWERUP_DELAY, align 4
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @BWN_WRITE_2(%struct.bwn_mac* %216, i32 %217, i32 %218)
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %215, %208, %197, %70, %57, %50, %43, %36
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @BWN_WRITE_4(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_fw_fillinfo(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_fw_loaducode(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_gpio_init(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_fw_loadinitvals(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_phy_init(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_set_txantenna(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_WRITE_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_READ_2(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bhnd_get_hwrev(i32) #1

declare dso_local i32 @BWN_READ_4(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

declare dso_local i32 @bwn_set_opmode(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_mac_phy_clock_set(%struct.bwn_mac*, i32) #1

declare dso_local i32 @bhnd_get_clock_latency(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
