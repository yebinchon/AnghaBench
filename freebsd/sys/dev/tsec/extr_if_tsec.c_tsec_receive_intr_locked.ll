; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_receive_intr_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_receive_intr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, i32, i64, i32, %struct.mbuf*, %struct.rx_data_type*, %struct.ifnet* }
%struct.mbuf = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { %struct.ifnet* }
%struct.rx_data_type = type { i32, %struct.mbuf*, i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.tsec_desc = type { i32, i64, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TSEC_RXBD_E = common dso_local global i32 0, align 4
@TSEC_RX_NUM_DESC = common dso_local global i32 0, align 4
@TSEC_REG_IEVENT = common dso_local global i32 0, align 4
@TSEC_IEVENT_RXB = common dso_local global i32 0, align 4
@TSEC_IEVENT_RXF = common dso_local global i32 0, align 4
@TSEC_RXBD_LG = common dso_local global i32 0, align 4
@TSEC_RXBD_SH = common dso_local global i32 0, align 4
@TSEC_RXBD_NO = common dso_local global i32 0, align 4
@TSEC_RXBD_CR = common dso_local global i32 0, align 4
@TSEC_RXBD_OV = common dso_local global i32 0, align 4
@TSEC_RXBD_TR = common dso_local global i32 0, align 4
@TSEC_RXBD_ZEROONINIT = common dso_local global i32 0, align 4
@TSEC_RXBD_I = common dso_local global i32 0, align 4
@TSEC_RXBD_L = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TSEC_REG_RSTAT = common dso_local global i32 0, align 4
@TSEC_RSTAT_QHLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsec_softc*, i32)* @tsec_receive_intr_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsec_receive_intr_locked(%struct.tsec_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsec_desc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.rx_data_type*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %14 = call i32 @TSEC_RECEIVE_LOCK_ASSERT(%struct.tsec_softc* %13)
  %15 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %15, i32 0, i32 6
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %6, align 8
  %18 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %18, i32 0, i32 5
  %20 = load %struct.rx_data_type*, %struct.rx_data_type** %19, align 8
  store %struct.rx_data_type* %20, %struct.rx_data_type** %7, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %22 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %25 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %28 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bus_dmamap_sync(i32 %23, i32 %26, i32 %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %250, %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %253

39:                                               ; preds = %34, %31
  %40 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %41 = call %struct.tsec_desc* @TSEC_GET_CUR_RX_DESC(%struct.tsec_softc* %40)
  store %struct.tsec_desc* %41, %struct.tsec_desc** %5, align 8
  %42 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %43 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @TSEC_RXBD_E, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @TSEC_RX_NUM_DESC, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %49, %39
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @TSEC_RXBD_E, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %60 = load i32, i32* @TSEC_REG_IEVENT, align 4
  %61 = load i32, i32* @TSEC_IEVENT_RXB, align 4
  %62 = load i32, i32* @TSEC_IEVENT_RXF, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @TSEC_WRITE(%struct.tsec_softc* %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %67 = call i32 @TSEC_BACK_CUR_RX_DESC(%struct.tsec_softc* %66)
  br label %253

68:                                               ; preds = %49
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @TSEC_RXBD_LG, align 4
  %71 = load i32, i32* @TSEC_RXBD_SH, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @TSEC_RXBD_NO, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @TSEC_RXBD_CR, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @TSEC_RXBD_OV, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @TSEC_RXBD_TR, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %69, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %68
  %84 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %85 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %87 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TSEC_RXBD_ZEROONINIT, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = load i32, i32* @TSEC_RXBD_E, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @TSEC_RXBD_I, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %97 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %99 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %98, i32 0, i32 4
  %100 = load %struct.mbuf*, %struct.mbuf** %99, align 8
  %101 = icmp ne %struct.mbuf* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %83
  %103 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %104 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %103, i32 0, i32 4
  %105 = load %struct.mbuf*, %struct.mbuf** %104, align 8
  %106 = call i32 @m_free(%struct.mbuf* %105)
  %107 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %108 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %107, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %108, align 8
  br label %109

109:                                              ; preds = %102, %83
  br label %250

110:                                              ; preds = %68
  %111 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %112 = call i64 @TSEC_GET_CUR_RX_DESC_CNT(%struct.tsec_softc* %111)
  store i64 %112, i64* %9, align 8
  %113 = load %struct.rx_data_type*, %struct.rx_data_type** %7, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %113, i64 %114
  %116 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %115, i32 0, i32 1
  %117 = load %struct.mbuf*, %struct.mbuf** %116, align 8
  store %struct.mbuf* %117, %struct.mbuf** %8, align 8
  %118 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %119 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %124 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %123, i32 0, i32 4
  %125 = load %struct.mbuf*, %struct.mbuf** %124, align 8
  %126 = icmp ne %struct.mbuf* %125, null
  br i1 %126, label %127, label %153

127:                                              ; preds = %110
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @TSEC_RXBD_L, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %134 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %133, i32 0, i32 4
  %135 = load %struct.mbuf*, %struct.mbuf** %134, align 8
  %136 = call i64 @m_length(%struct.mbuf* %135, i32* null)
  %137 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %138 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, %136
  store i64 %140, i64* %138, align 8
  br label %141

141:                                              ; preds = %132, %127
  %142 = load i32, i32* @M_PKTHDR, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %145 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %149 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %148, i32 0, i32 4
  %150 = load %struct.mbuf*, %struct.mbuf** %149, align 8
  %151 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %152 = call i32 @m_cat(%struct.mbuf* %150, %struct.mbuf* %151)
  br label %157

153:                                              ; preds = %110
  %154 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %155 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %156 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %155, i32 0, i32 4
  store %struct.mbuf* %154, %struct.mbuf** %156, align 8
  br label %157

157:                                              ; preds = %153, %141
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* @TSEC_RXBD_L, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %164 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %163, i32 0, i32 4
  %165 = load %struct.mbuf*, %struct.mbuf** %164, align 8
  store %struct.mbuf* %165, %struct.mbuf** %8, align 8
  %166 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %167 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %166, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %167, align 8
  br label %168

168:                                              ; preds = %162, %157
  %169 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %170 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.rx_data_type*, %struct.rx_data_type** %7, align 8
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %172, i64 %173
  %175 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.rx_data_type*, %struct.rx_data_type** %7, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %177, i64 %178
  %180 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %179, i32 0, i32 1
  %181 = load %struct.rx_data_type*, %struct.rx_data_type** %7, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %181, i64 %182
  %184 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %183, i32 0, i32 0
  %185 = call i64 @tsec_new_rxbuf(i32 %171, i32 %176, %struct.mbuf** %180, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %168
  %188 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %189 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %190 = call i32 @if_inc_counter(%struct.ifnet* %188, i32 %189, i32 1)
  %191 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %192 = call i32 @TSEC_BACK_CUR_RX_DESC(%struct.tsec_softc* %191)
  br label %253

193:                                              ; preds = %168
  %194 = load %struct.rx_data_type*, %struct.rx_data_type** %7, align 8
  %195 = load i64, i64* %9, align 8
  %196 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %194, i64 %195
  %197 = getelementptr inbounds %struct.rx_data_type, %struct.rx_data_type* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %200 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %202 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %201, i32 0, i32 1
  store i64 0, i64* %202, align 8
  %203 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %204 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @TSEC_RXBD_ZEROONINIT, align 4
  %207 = xor i32 %206, -1
  %208 = and i32 %205, %207
  %209 = load i32, i32* @TSEC_RXBD_E, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @TSEC_RXBD_I, align 4
  %212 = or i32 %210, %211
  %213 = load %struct.tsec_desc*, %struct.tsec_desc** %5, align 8
  %214 = getelementptr inbounds %struct.tsec_desc, %struct.tsec_desc* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %216 = icmp ne %struct.mbuf* %215, null
  br i1 %216, label %217, label %249

217:                                              ; preds = %193
  %218 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %219 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %220 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  store %struct.ifnet* %218, %struct.ifnet** %221, align 8
  %222 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %223 = call i32 @m_fixhdr(%struct.mbuf* %222)
  %224 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %225 = load i32, i32* @ETHER_CRC_LEN, align 4
  %226 = sub nsw i32 0, %225
  %227 = call i32 @m_adj(%struct.mbuf* %224, i32 %226)
  %228 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %229 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %217
  %233 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %234 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %235 = call i32 @tsec_offload_process_frame(%struct.tsec_softc* %233, %struct.mbuf* %234)
  br label %236

236:                                              ; preds = %232, %217
  %237 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %238 = call i32 @TSEC_RECEIVE_UNLOCK(%struct.tsec_softc* %237)
  %239 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %240 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %239, i32 0, i32 0
  %241 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %240, align 8
  %242 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %243 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %244 = call i32 %241(%struct.ifnet* %242, %struct.mbuf* %243)
  %245 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %246 = call i32 @TSEC_RECEIVE_LOCK(%struct.tsec_softc* %245)
  %247 = load i32, i32* %11, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %11, align 4
  br label %249

249:                                              ; preds = %236, %193
  br label %250

250:                                              ; preds = %249, %109
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %31

253:                                              ; preds = %187, %65, %38
  %254 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %255 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %258 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %261 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %262 = or i32 %260, %261
  %263 = call i32 @bus_dmamap_sync(i32 %256, i32 %259, i32 %262)
  %264 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %265 = load i32, i32* @TSEC_REG_RSTAT, align 4
  %266 = load i32, i32* @TSEC_RSTAT_QHLT, align 4
  %267 = call i32 @TSEC_WRITE(%struct.tsec_softc* %264, i32 %265, i32 %266)
  %268 = load i32, i32* %11, align 4
  ret i32 %268
}

declare dso_local i32 @TSEC_RECEIVE_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local %struct.tsec_desc* @TSEC_GET_CUR_RX_DESC(%struct.tsec_softc*) #1

declare dso_local i32 @TSEC_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @TSEC_BACK_CUR_RX_DESC(%struct.tsec_softc*) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i64 @TSEC_GET_CUR_RX_DESC_CNT(%struct.tsec_softc*) #1

declare dso_local i64 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i64 @tsec_new_rxbuf(i32, i32, %struct.mbuf**, i32*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_fixhdr(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @tsec_offload_process_frame(%struct.tsec_softc*, %struct.mbuf*) #1

declare dso_local i32 @TSEC_RECEIVE_UNLOCK(%struct.tsec_softc*) #1

declare dso_local i32 @TSEC_RECEIVE_LOCK(%struct.tsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
