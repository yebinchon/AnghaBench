; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, %struct.TYPE_2__, i32*, i32*, i32, i32, i32, i64, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.rl_rxdesc*, i32, %struct.rl_rxdesc*, i32, %struct.rl_txdesc* }
%struct.rl_rxdesc = type { i32*, i32 }
%struct.rl_txdesc = type { i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@RL_RXCFG = common dso_local global i32 0, align 4
@RL_RXCFG_RX_ALLPHYS = common dso_local global i32 0, align 4
@RL_RXCFG_RX_INDIV = common dso_local global i32 0, align 4
@RL_RXCFG_RX_MULTI = common dso_local global i32 0, align 4
@RL_RXCFG_RX_BROAD = common dso_local global i32 0, align 4
@RL_FLAG_8168G_PLUS = common dso_local global i32 0, align 4
@RL_MISC = common dso_local global i32 0, align 4
@RL_FLAG_WAIT_TXPOLL = common dso_local global i32 0, align 4
@RL_TIMEOUT = common dso_local global i32 0, align 4
@RL_TXSTART_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"stopping TX poll timed out!\0A\00", align 1
@RL_COMMAND = common dso_local global i32 0, align 4
@RL_FLAG_CMDSTOP = common dso_local global i32 0, align 4
@RL_CMD_STOPREQ = common dso_local global i32 0, align 4
@RL_CMD_TX_ENB = common dso_local global i32 0, align 4
@RL_CMD_RX_ENB = common dso_local global i32 0, align 4
@RL_FLAG_CMDSTOP_WAIT_TXQ = common dso_local global i32 0, align 4
@RL_TXCFG = common dso_local global i32 0, align 4
@RL_TXCFG_QUEUE_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"stopping TXQ timed out!\0A\00", align 1
@RL_IMR = common dso_local global i32 0, align 4
@RL_ISR = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@RL_FLAG_JUMBOV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @re_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_stop(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.rl_txdesc*, align 8
  %6 = alloca %struct.rl_rxdesc*, align 8
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %7 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %8 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %7)
  %9 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 8
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %13 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %12, i32 0, i32 7
  store i64 0, i64* %13, align 8
  %14 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %15 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %14, i32 0, i32 6
  %16 = call i32 @callout_stop(i32* %15)
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %26 = load i32, i32* @RL_RXCFG, align 4
  %27 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %28 = load i32, i32* @RL_RXCFG, align 4
  %29 = call i32 @CSR_READ_4(%struct.rl_softc* %27, i32 %28)
  %30 = load i32, i32* @RL_RXCFG_RX_ALLPHYS, align 4
  %31 = load i32, i32* @RL_RXCFG_RX_INDIV, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RL_RXCFG_RX_MULTI, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RL_RXCFG_RX_BROAD, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %29, %37
  %39 = call i32 @CSR_WRITE_4(%struct.rl_softc* %25, i32 %26, i32 %38)
  %40 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %41 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RL_FLAG_8168G_PLUS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %1
  %47 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %48 = load i32, i32* @RL_MISC, align 4
  %49 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %50 = load i32, i32* @RL_MISC, align 4
  %51 = call i32 @CSR_READ_4(%struct.rl_softc* %49, i32 %50)
  %52 = or i32 %51, 524288
  %53 = call i32 @CSR_WRITE_4(%struct.rl_softc* %47, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %46, %1
  %55 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RL_FLAG_WAIT_TXPOLL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %54
  %62 = load i32, i32* @RL_TIMEOUT, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %78, %61
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %68 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %69 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CSR_READ_1(%struct.rl_softc* %67, i32 %70)
  %72 = load i32, i32* @RL_TXSTART_START, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %81

76:                                               ; preds = %66
  %77 = call i32 @DELAY(i32 20)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %3, align 4
  br label %63

81:                                               ; preds = %75, %63
  %82 = load i32, i32* %3, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %86 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %81
  %90 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %91 = load i32, i32* @RL_COMMAND, align 4
  %92 = call i32 @CSR_WRITE_1(%struct.rl_softc* %90, i32 %91, i32 0)
  br label %148

93:                                               ; preds = %54
  %94 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %95 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @RL_FLAG_CMDSTOP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %143

100:                                              ; preds = %93
  %101 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %102 = load i32, i32* @RL_COMMAND, align 4
  %103 = load i32, i32* @RL_CMD_STOPREQ, align 4
  %104 = load i32, i32* @RL_CMD_TX_ENB, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @RL_CMD_RX_ENB, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @CSR_WRITE_1(%struct.rl_softc* %101, i32 %102, i32 %107)
  %109 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %110 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @RL_FLAG_CMDSTOP_WAIT_TXQ, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %100
  %116 = load i32, i32* @RL_TIMEOUT, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %130, %115
  %118 = load i32, i32* %3, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %122 = load i32, i32* @RL_TXCFG, align 4
  %123 = call i32 @CSR_READ_4(%struct.rl_softc* %121, i32 %122)
  %124 = load i32, i32* @RL_TXCFG_QUEUE_EMPTY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %133

128:                                              ; preds = %120
  %129 = call i32 @DELAY(i32 100)
  br label %130

130:                                              ; preds = %128
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %3, align 4
  br label %117

133:                                              ; preds = %127, %117
  %134 = load i32, i32* %3, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %138 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %100
  br label %147

143:                                              ; preds = %93
  %144 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %145 = load i32, i32* @RL_COMMAND, align 4
  %146 = call i32 @CSR_WRITE_1(%struct.rl_softc* %144, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %143, %142
  br label %148

148:                                              ; preds = %147, %89
  %149 = call i32 @DELAY(i32 1000)
  %150 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %151 = load i32, i32* @RL_IMR, align 4
  %152 = call i32 @CSR_WRITE_2(%struct.rl_softc* %150, i32 %151, i32 0)
  %153 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %154 = load i32, i32* @RL_ISR, align 4
  %155 = call i32 @CSR_WRITE_2(%struct.rl_softc* %153, i32 %154, i32 65535)
  %156 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %157 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %148
  %161 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %162 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @m_freem(i32* %163)
  %165 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %166 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %165, i32 0, i32 2
  store i32* null, i32** %166, align 8
  %167 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %168 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %167, i32 0, i32 3
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %160, %148
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %214, %169
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %173 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %217

177:                                              ; preds = %170
  %178 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %179 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 7
  %181 = load %struct.rl_txdesc*, %struct.rl_txdesc** %180, align 8
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.rl_txdesc, %struct.rl_txdesc* %181, i64 %183
  store %struct.rl_txdesc* %184, %struct.rl_txdesc** %5, align 8
  %185 = load %struct.rl_txdesc*, %struct.rl_txdesc** %5, align 8
  %186 = getelementptr inbounds %struct.rl_txdesc, %struct.rl_txdesc* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %213

189:                                              ; preds = %177
  %190 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %191 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.rl_txdesc*, %struct.rl_txdesc** %5, align 8
  %195 = getelementptr inbounds %struct.rl_txdesc, %struct.rl_txdesc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %198 = call i32 @bus_dmamap_sync(i32 %193, i32 %196, i32 %197)
  %199 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %200 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.rl_txdesc*, %struct.rl_txdesc** %5, align 8
  %204 = getelementptr inbounds %struct.rl_txdesc, %struct.rl_txdesc* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @bus_dmamap_unload(i32 %202, i32 %205)
  %207 = load %struct.rl_txdesc*, %struct.rl_txdesc** %5, align 8
  %208 = getelementptr inbounds %struct.rl_txdesc, %struct.rl_txdesc* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @m_freem(i32* %209)
  %211 = load %struct.rl_txdesc*, %struct.rl_txdesc** %5, align 8
  %212 = getelementptr inbounds %struct.rl_txdesc, %struct.rl_txdesc* %211, i32 0, i32 0
  store i32* null, i32** %212, align 8
  br label %213

213:                                              ; preds = %189, %177
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %3, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %3, align 4
  br label %170

217:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %262, %217
  %219 = load i32, i32* %3, align 4
  %220 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %221 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %219, %223
  br i1 %224, label %225, label %265

225:                                              ; preds = %218
  %226 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %227 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 5
  %229 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %228, align 8
  %230 = load i32, i32* %3, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %229, i64 %231
  store %struct.rl_rxdesc* %232, %struct.rl_rxdesc** %6, align 8
  %233 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %234 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %261

237:                                              ; preds = %225
  %238 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %239 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %243 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %246 = call i32 @bus_dmamap_sync(i32 %241, i32 %244, i32 %245)
  %247 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %248 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %252 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @bus_dmamap_unload(i32 %250, i32 %253)
  %255 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %256 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @m_freem(i32* %257)
  %259 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %260 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %259, i32 0, i32 0
  store i32* null, i32** %260, align 8
  br label %261

261:                                              ; preds = %237, %225
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %3, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %3, align 4
  br label %218

265:                                              ; preds = %218
  %266 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %267 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %321

272:                                              ; preds = %265
  store i32 0, i32* %3, align 4
  br label %273

273:                                              ; preds = %317, %272
  %274 = load i32, i32* %3, align 4
  %275 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %276 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp slt i32 %274, %278
  br i1 %279, label %280, label %320

280:                                              ; preds = %273
  %281 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %282 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 3
  %284 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %283, align 8
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %284, i64 %286
  store %struct.rl_rxdesc* %287, %struct.rl_rxdesc** %6, align 8
  %288 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %289 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %316

292:                                              ; preds = %280
  %293 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %294 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %298 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %301 = call i32 @bus_dmamap_sync(i32 %296, i32 %299, i32 %300)
  %302 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %303 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %307 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @bus_dmamap_unload(i32 %305, i32 %308)
  %310 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %311 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = call i32 @m_freem(i32* %312)
  %314 = load %struct.rl_rxdesc*, %struct.rl_rxdesc** %6, align 8
  %315 = getelementptr inbounds %struct.rl_rxdesc, %struct.rl_rxdesc* %314, i32 0, i32 0
  store i32* null, i32** %315, align 8
  br label %316

316:                                              ; preds = %292, %280
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %3, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %3, align 4
  br label %273

320:                                              ; preds = %273
  br label %321

321:                                              ; preds = %320, %265
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
