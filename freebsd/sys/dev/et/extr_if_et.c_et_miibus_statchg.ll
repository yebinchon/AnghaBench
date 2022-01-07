; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ET_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@ET_FLAG_FASTETHER = common dso_local global i32 0, align 4
@ET_MAC_CTRL = common dso_local global i32 0, align 4
@ET_MAC_CTRL_GHDX = common dso_local global i32 0, align 4
@ET_MAC_CTRL_MODE_MII = common dso_local global i32 0, align 4
@ET_MAC_CFG1 = common dso_local global i32 0, align 4
@ET_MAC_CFG1_TXFLOW = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RXFLOW = common dso_local global i32 0, align 4
@ET_MAC_CFG1_LOOPBACK = common dso_local global i32 0, align 4
@ET_MAC_CFG2 = common dso_local global i32 0, align 4
@ET_MAC_CFG2_MODE_MII = common dso_local global i32 0, align 4
@ET_MAC_CFG2_MODE_GMII = common dso_local global i32 0, align 4
@ET_MAC_CFG2_FDX = common dso_local global i32 0, align 4
@ET_MAC_CFG2_BIGFRM = common dso_local global i32 0, align 4
@ET_MAC_CFG2_LENCHK = common dso_local global i32 0, align 4
@ET_MAC_CFG2_CRC = common dso_local global i32 0, align 4
@ET_MAC_CFG2_PADCRC = common dso_local global i32 0, align 4
@ET_MAC_CFG2_PREAMBLE_LEN_SHIFT = common dso_local global i32 0, align 4
@ET_MAC_CFG2_PREAMBLE_LEN_MASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@ET_MAC_CFG1_TXEN = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RXEN = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SYNC_TXEN = common dso_local global i32 0, align 4
@ET_MAC_CFG1_SYNC_RXEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't enable RX/TX\0A\00", align 1
@ET_FLAG_TXRX_ENABLED = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@NRETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @et_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.et_softc*
  store %struct.et_softc* %12, %struct.et_softc** %3, align 8
  %13 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %14 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.mii_data*
  store %struct.mii_data* %17, %struct.mii_data** %4, align 8
  %18 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %19 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %18, i32 0, i32 1
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %5, align 8
  %21 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %22 = icmp eq %struct.mii_data* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %1
  %24 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %25 = icmp eq %struct.ifnet* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %23, %1
  br label %228

34:                                               ; preds = %26
  %35 = load i32, i32* @ET_FLAG_LINK, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %38 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %42 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFM_ACTIVE, align 4
  %45 = load i32, i32* @IFM_AVALID, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load i32, i32* @IFM_ACTIVE, align 4
  %49 = load i32, i32* @IFM_AVALID, align 4
  %50 = or i32 %48, %49
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %34
  %53 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %54 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IFM_SUBTYPE(i32 %55)
  switch i32 %56, label %77 [
    i32 128, label %57
    i32 129, label %57
    i32 130, label %63
  ]

57:                                               ; preds = %52, %52
  %58 = load i32, i32* @ET_FLAG_LINK, align 4
  %59 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %60 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %77

63:                                               ; preds = %52
  %64 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %65 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ET_FLAG_FASTETHER, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @ET_FLAG_LINK, align 4
  %72 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %73 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %63
  br label %77

77:                                               ; preds = %52, %76, %57
  br label %78

78:                                               ; preds = %77, %34
  %79 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %80 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ET_FLAG_LINK, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %228

86:                                               ; preds = %78
  %87 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %88 = load i32, i32* @ET_MAC_CTRL, align 4
  %89 = call i32 @CSR_READ_4(%struct.et_softc* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @ET_MAC_CTRL_GHDX, align 4
  %91 = load i32, i32* @ET_MAC_CTRL_MODE_MII, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %97 = load i32, i32* @ET_MAC_CFG1, align 4
  %98 = call i32 @CSR_READ_4(%struct.et_softc* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @ET_MAC_CFG1_TXFLOW, align 4
  %100 = load i32, i32* @ET_MAC_CFG1_RXFLOW, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @ET_MAC_CFG1_LOOPBACK, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %108 = load i32, i32* @ET_MAC_CFG2, align 4
  %109 = call i32 @CSR_READ_4(%struct.et_softc* %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @ET_MAC_CFG2_MODE_MII, align 4
  %111 = load i32, i32* @ET_MAC_CFG2_MODE_GMII, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @ET_MAC_CFG2_FDX, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @ET_MAC_CFG2_BIGFRM, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* @ET_MAC_CFG2_LENCHK, align 4
  %121 = load i32, i32* @ET_MAC_CFG2_CRC, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @ET_MAC_CFG2_PADCRC, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ET_MAC_CFG2_PREAMBLE_LEN_SHIFT, align 4
  %126 = shl i32 7, %125
  %127 = load i32, i32* @ET_MAC_CFG2_PREAMBLE_LEN_MASK, align 4
  %128 = and i32 %126, %127
  %129 = or i32 %124, %128
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %133 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @IFM_SUBTYPE(i32 %134)
  %136 = icmp eq i32 %135, 130
  br i1 %136, label %137, label %141

137:                                              ; preds = %86
  %138 = load i32, i32* @ET_MAC_CFG2_MODE_GMII, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %148

141:                                              ; preds = %86
  %142 = load i32, i32* @ET_MAC_CFG2_MODE_MII, align 4
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @ET_MAC_CTRL_MODE_MII, align 4
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %141, %137
  %149 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %150 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @IFM_OPTIONS(i32 %151)
  %153 = load i32, i32* @IFM_FDX, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %148
  %157 = load i32, i32* @ET_MAC_CFG2_FDX, align 4
  %158 = load i32, i32* %7, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %7, align 4
  %160 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %161 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @IFM_OPTIONS(i32 %162)
  %164 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %156
  %168 = load i32, i32* @ET_MAC_CFG1_RXFLOW, align 4
  %169 = load i32, i32* %6, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %167, %156
  br label %176

172:                                              ; preds = %148
  %173 = load i32, i32* @ET_MAC_CTRL_GHDX, align 4
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %172, %171
  %177 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %178 = load i32, i32* @ET_MAC_CTRL, align 4
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @CSR_WRITE_4(%struct.et_softc* %177, i32 %178, i32 %179)
  %181 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %182 = load i32, i32* @ET_MAC_CFG2, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @CSR_WRITE_4(%struct.et_softc* %181, i32 %182, i32 %183)
  %185 = load i32, i32* @ET_MAC_CFG1_TXEN, align 4
  %186 = load i32, i32* @ET_MAC_CFG1_RXEN, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %191 = load i32, i32* @ET_MAC_CFG1, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @CSR_WRITE_4(%struct.et_softc* %190, i32 %191, i32 %192)
  store i32 0, i32* %9, align 4
  br label %194

194:                                              ; preds = %213, %176
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %195, 50
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %199 = load i32, i32* @ET_MAC_CFG1, align 4
  %200 = call i32 @CSR_READ_4(%struct.et_softc* %198, i32 %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @ET_MAC_CFG1_SYNC_TXEN, align 4
  %203 = load i32, i32* @ET_MAC_CFG1_SYNC_RXEN, align 4
  %204 = or i32 %202, %203
  %205 = and i32 %201, %204
  %206 = load i32, i32* @ET_MAC_CFG1_SYNC_TXEN, align 4
  %207 = load i32, i32* @ET_MAC_CFG1_SYNC_RXEN, align 4
  %208 = or i32 %206, %207
  %209 = icmp eq i32 %205, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  br label %216

211:                                              ; preds = %197
  %212 = call i32 @DELAY(i32 100)
  br label %213

213:                                              ; preds = %211
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %194

216:                                              ; preds = %210, %194
  %217 = load i32, i32* %9, align 4
  %218 = icmp eq i32 %217, 50
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %221 = call i32 @if_printf(%struct.ifnet* %220, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* @ET_FLAG_TXRX_ENABLED, align 4
  %224 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %225 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %222, %85, %33
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
