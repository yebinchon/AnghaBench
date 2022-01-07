; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_mac_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_mac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }
%struct.mii_data = type { i32 }

@NFE_PHY_IFACE = common dso_local global i32 0, align 4
@NFE_PHY_HDX = common dso_local global i32 0, align 4
@NFE_PHY_100TX = common dso_local global i32 0, align 4
@NFE_PHY_1000T = common dso_local global i32 0, align 4
@NFE_RNDSEED = common dso_local global i32 0, align 4
@NFE_SEED_MASK = common dso_local global i32 0, align 4
@NFE_MISC1_MAGIC = common dso_local global i32 0, align 4
@NFE_MEDIA_SET = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@NFE_MISC1_HDX = common dso_local global i32 0, align 4
@NFE_MEDIA_1000T = common dso_local global i32 0, align 4
@NFE_SEED_1000T = common dso_local global i32 0, align 4
@NFE_MEDIA_100TX = common dso_local global i32 0, align 4
@NFE_SEED_100TX = common dso_local global i32 0, align 4
@NFE_MEDIA_10T = common dso_local global i32 0, align 4
@NFE_SEED_10T = common dso_local global i32 0, align 4
@NFE_R1_MAGIC_1000 = common dso_local global i32 0, align 4
@NFE_R1_MAGIC_10_100 = common dso_local global i32 0, align 4
@NFE_R1_MAGIC_DEFAULT = common dso_local global i32 0, align 4
@NFE_SETUP_R1 = common dso_local global i32 0, align 4
@NFE_MISC1 = common dso_local global i32 0, align 4
@NFE_LINKSPEED = common dso_local global i32 0, align 4
@NFE_RXFILTER = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@NFE_PFF_RX_PAUSE = common dso_local global i32 0, align 4
@NFE_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@NFE_TX_PAUSE_FRAME = common dso_local global i32 0, align 4
@NFE_TX_PAUSE_FRAME_ENABLE = common dso_local global i32 0, align 4
@NFE_MISC1_TX_PAUSE = common dso_local global i32 0, align 4
@NFE_TX_PAUSE_FRAME_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*, %struct.mii_data*)* @nfe_mac_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_mac_config(%struct.nfe_softc* %0, %struct.mii_data* %1) #0 {
  %3 = alloca %struct.nfe_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %3, align 8
  store %struct.mii_data* %1, %struct.mii_data** %4, align 8
  %10 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %11 = call i32 @NFE_LOCK_ASSERT(%struct.nfe_softc* %10)
  %12 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %13 = load i32, i32* @NFE_PHY_IFACE, align 4
  %14 = call i32 @NFE_READ(%struct.nfe_softc* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @NFE_PHY_HDX, align 4
  %16 = load i32, i32* @NFE_PHY_100TX, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @NFE_PHY_1000T, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %24 = load i32, i32* @NFE_RNDSEED, align 4
  %25 = call i32 @NFE_READ(%struct.nfe_softc* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @NFE_SEED_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @NFE_MISC1_MAGIC, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @NFE_MEDIA_SET, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %33 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IFM_OPTIONS(i32 %34)
  %36 = load i32, i32* @IFM_FDX, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load i32, i32* @NFE_PHY_HDX, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @NFE_MISC1_HDX, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %39, %2
  %47 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %48 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IFM_SUBTYPE(i32 %49)
  switch i32 %50, label %78 [
    i32 130, label %51
    i32 129, label %61
    i32 128, label %71
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* @NFE_MEDIA_1000T, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @NFE_SEED_1000T, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @NFE_PHY_1000T, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %78

61:                                               ; preds = %46
  %62 = load i32, i32* @NFE_MEDIA_100TX, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @NFE_SEED_100TX, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @NFE_PHY_100TX, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %78

71:                                               ; preds = %46
  %72 = load i32, i32* @NFE_MEDIA_10T, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @NFE_SEED_10T, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %46, %71, %61, %51
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 268435456
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %84 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IFM_SUBTYPE(i32 %85)
  %87 = icmp eq i32 %86, 130
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @NFE_R1_MAGIC_1000, align 4
  store i32 %89, i32* %9, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @NFE_R1_MAGIC_10_100, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %95

93:                                               ; preds = %78
  %94 = load i32, i32* @NFE_R1_MAGIC_DEFAULT, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %97 = load i32, i32* @NFE_SETUP_R1, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @NFE_WRITE(%struct.nfe_softc* %96, i32 %97, i32 %98)
  %100 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %101 = load i32, i32* @NFE_RNDSEED, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @NFE_WRITE(%struct.nfe_softc* %100, i32 %101, i32 %102)
  %104 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %105 = load i32, i32* @NFE_PHY_IFACE, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @NFE_WRITE(%struct.nfe_softc* %104, i32 %105, i32 %106)
  %108 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %109 = load i32, i32* @NFE_MISC1, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @NFE_WRITE(%struct.nfe_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %113 = load i32, i32* @NFE_LINKSPEED, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @NFE_WRITE(%struct.nfe_softc* %112, i32 %113, i32 %114)
  %116 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %117 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @IFM_OPTIONS(i32 %118)
  %120 = load i32, i32* @IFM_FDX, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %188

123:                                              ; preds = %95
  %124 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %125 = load i32, i32* @NFE_RXFILTER, align 4
  %126 = call i32 @NFE_READ(%struct.nfe_softc* %124, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %128 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @IFM_OPTIONS(i32 %129)
  %131 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load i32, i32* @NFE_PFF_RX_PAUSE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %143

138:                                              ; preds = %123
  %139 = load i32, i32* @NFE_PFF_RX_PAUSE, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %138, %134
  %144 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %145 = load i32, i32* @NFE_RXFILTER, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @NFE_WRITE(%struct.nfe_softc* %144, i32 %145, i32 %146)
  %148 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %149 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @NFE_TX_FLOW_CTRL, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %187

154:                                              ; preds = %143
  %155 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %156 = load i32, i32* @NFE_MISC1, align 4
  %157 = call i32 @NFE_READ(%struct.nfe_softc* %155, i32 %156)
  store i32 %157, i32* %9, align 4
  %158 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %159 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @IFM_OPTIONS(i32 %160)
  %162 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %154
  %166 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %167 = load i32, i32* @NFE_TX_PAUSE_FRAME, align 4
  %168 = load i32, i32* @NFE_TX_PAUSE_FRAME_ENABLE, align 4
  %169 = call i32 @NFE_WRITE(%struct.nfe_softc* %166, i32 %167, i32 %168)
  %170 = load i32, i32* @NFE_MISC1_TX_PAUSE, align 4
  %171 = load i32, i32* %9, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %9, align 4
  br label %182

173:                                              ; preds = %154
  %174 = load i32, i32* @NFE_MISC1_TX_PAUSE, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %9, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %9, align 4
  %178 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %179 = load i32, i32* @NFE_TX_PAUSE_FRAME, align 4
  %180 = load i32, i32* @NFE_TX_PAUSE_FRAME_DISABLE, align 4
  %181 = call i32 @NFE_WRITE(%struct.nfe_softc* %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %173, %165
  %183 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %184 = load i32, i32* @NFE_MISC1, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @NFE_WRITE(%struct.nfe_softc* %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %143
  br label %223

188:                                              ; preds = %95
  %189 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %190 = load i32, i32* @NFE_RXFILTER, align 4
  %191 = call i32 @NFE_READ(%struct.nfe_softc* %189, i32 %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* @NFE_PFF_RX_PAUSE, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %9, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %9, align 4
  %196 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %197 = load i32, i32* @NFE_RXFILTER, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @NFE_WRITE(%struct.nfe_softc* %196, i32 %197, i32 %198)
  %200 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %201 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @NFE_TX_FLOW_CTRL, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %188
  %207 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %208 = load i32, i32* @NFE_TX_PAUSE_FRAME, align 4
  %209 = load i32, i32* @NFE_TX_PAUSE_FRAME_DISABLE, align 4
  %210 = call i32 @NFE_WRITE(%struct.nfe_softc* %207, i32 %208, i32 %209)
  %211 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %212 = load i32, i32* @NFE_MISC1, align 4
  %213 = call i32 @NFE_READ(%struct.nfe_softc* %211, i32 %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* @NFE_MISC1_TX_PAUSE, align 4
  %215 = xor i32 %214, -1
  %216 = load i32, i32* %9, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* %9, align 4
  %218 = load %struct.nfe_softc*, %struct.nfe_softc** %3, align 8
  %219 = load i32, i32* @NFE_MISC1, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @NFE_WRITE(%struct.nfe_softc* %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %206, %188
  br label %223

223:                                              ; preds = %222, %187
  ret void
}

declare dso_local i32 @NFE_LOCK_ASSERT(%struct.nfe_softc*) #1

declare dso_local i32 @NFE_READ(%struct.nfe_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @NFE_WRITE(%struct.nfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
