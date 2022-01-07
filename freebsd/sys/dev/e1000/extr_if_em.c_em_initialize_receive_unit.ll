; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_initialize_receive_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_initialize_receive_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i64, %struct.e1000_hw, %struct.em_rx_queue*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.e1000_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.em_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.ifnet = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"em_initialize_receive_units: begin\00", align 1
@E1000_RCTL = common dso_local global i32 0, align 4
@e1000_82574 = common dso_local global i64 0, align 8
@e1000_82583 = common dso_local global i64 0, align 8
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_NO = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@em_disable_crc_stripping = common dso_local global i32 0, align 4
@E1000_RCTL_SECRC = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i64 0, align 8
@E1000_RADV = common dso_local global i32 0, align 4
@E1000_ITR = common dso_local global i32 0, align 4
@DEFAULT_ITR = common dso_local global i32 0, align 4
@E1000_RDTR = common dso_local global i32 0, align 4
@E1000_RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_EXTEN = common dso_local global i32 0, align 4
@E1000_RFCTL_ACK_DIS = common dso_local global i32 0, align 4
@E1000_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@igb_mac_min = common dso_local global i64 0, align 8
@E1000_RXCSUM_PCSD = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@E1000_RXCSUM_CRCOFL = common dso_local global i32 0, align 4
@E1000_RXCSUM_TUOFL = common dso_local global i32 0, align 4
@E1000_RXCSUM_IPOFL = common dso_local global i32 0, align 4
@E1000_RXCSUM_IPPCSE = common dso_local global i32 0, align 4
@e1000_82573 = common dso_local global i64 0, align 8
@e1000_ich9lan = common dso_local global i64 0, align 8
@e1000_pch2lan = common dso_local global i64 0, align 8
@e1000_ich10lan = common dso_local global i64 0, align 8
@E1000_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_4096 = common dso_local global i32 0, align 4
@E1000_RCTL_BSEX = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_8192 = common dso_local global i32 0, align 4
@VLAN_TAG_SIZE = common dso_local global i64 0, align 8
@E1000_RLPML = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_2048 = common dso_local global i32 0, align 4
@e1000_fc_none = common dso_local global i64 0, align 8
@e1000_fc_rx_pause = common dso_local global i64 0, align 8
@E1000_SRRCTL_DROP_EN = common dso_local global i32 0, align 4
@E1000_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@E1000_RXDCTL_QUEUE_ENABLE = common dso_local global i32 0, align 4
@IGB_RX_PTHRESH = common dso_local global i32 0, align 4
@IGB_RX_HTHRESH = common dso_local global i32 0, align 4
@IGB_RX_WTHRESH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@E1000_RCTL_VFE = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@igb_header_split = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_initialize_receive_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_initialize_receive_unit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca %struct.em_rx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rx_ring*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.rx_ring*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call %struct.adapter* @iflib_get_softc(i32 %23)
  store %struct.adapter* %24, %struct.adapter** %3, align 8
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %4, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call %struct.ifnet* @iflib_get_ifp(i32 %28)
  store %struct.ifnet* %29, %struct.ifnet** %5, align 8
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 4
  store %struct.e1000_hw* %31, %struct.e1000_hw** %6, align 8
  %32 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %34 = load i32, i32* @E1000_RCTL, align 4
  %35 = call i32 @E1000_READ_REG(%struct.e1000_hw* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @e1000_82574, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %1
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_82583, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %51 = load i32, i32* @E1000_RCTL, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @E1000_RCTL_EN, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %50, i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %49, %42, %1
  %58 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %59 = shl i32 3, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @E1000_RCTL_EN, align 4
  %64 = load i32, i32* @E1000_RCTL_BAM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @E1000_RCTL_LBM_NO, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @E1000_RCTL_RDMTS_HALF, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %69, %75
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @E1000_RCTL_SBP, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %84 = call i64 @if_getmtu(%struct.ifnet* %83)
  %85 = load i64, i64* @ETHERMTU, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %57
  %88 = load i32, i32* @E1000_RCTL_LPE, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %96

91:                                               ; preds = %57
  %92 = load i32, i32* @E1000_RCTL_LPE, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* @em_disable_crc_stripping, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @E1000_RCTL_SECRC, align 4
  %101 = load i32, i32* %9, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = getelementptr inbounds %struct.adapter, %struct.adapter* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @e1000_82540, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %103
  %112 = load %struct.adapter*, %struct.adapter** %3, align 8
  %113 = getelementptr inbounds %struct.adapter, %struct.adapter* %112, i32 0, i32 4
  %114 = load i32, i32* @E1000_RADV, align 4
  %115 = load %struct.adapter*, %struct.adapter** %3, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %113, i32 %114, i32 %118)
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %121 = load i32, i32* @E1000_ITR, align 4
  %122 = load i32, i32* @DEFAULT_ITR, align 4
  %123 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %111, %103
  %125 = load %struct.adapter*, %struct.adapter** %3, align 8
  %126 = getelementptr inbounds %struct.adapter, %struct.adapter* %125, i32 0, i32 4
  %127 = load i32, i32* @E1000_RDTR, align 4
  %128 = load %struct.adapter*, %struct.adapter** %3, align 8
  %129 = getelementptr inbounds %struct.adapter, %struct.adapter* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %126, i32 %127, i32 %131)
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %134 = load i32, i32* @E1000_RFCTL, align 4
  %135 = call i32 @E1000_READ_REG(%struct.e1000_hw* %133, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @E1000_RFCTL_EXTEN, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %140 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @e1000_82574, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %124
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %155, %145
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @E1000_EITR_82574(i32 %151)
  %153 = load i32, i32* @DEFAULT_ITR, align 4
  %154 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %150, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %146

158:                                              ; preds = %146
  %159 = load i32, i32* @E1000_RFCTL_ACK_DIS, align 4
  %160 = load i32, i32* %11, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %158, %124
  %163 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %164 = load i32, i32* @E1000_RFCTL, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %163, i32 %164, i32 %165)
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %168 = load i32, i32* @E1000_RXCSUM, align 4
  %169 = call i32 @E1000_READ_REG(%struct.e1000_hw* %167, i32 %168)
  store i32 %169, i32* %10, align 4
  %170 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %171 = call i32 @if_getcapenable(%struct.ifnet* %170)
  %172 = load i32, i32* @IFCAP_RXCSUM, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %252

175:                                              ; preds = %162
  %176 = load %struct.adapter*, %struct.adapter** %3, align 8
  %177 = getelementptr inbounds %struct.adapter, %struct.adapter* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @e1000_82543, align 8
  %182 = icmp sge i64 %180, %181
  br i1 %182, label %183, label %252

183:                                              ; preds = %175
  %184 = load %struct.adapter*, %struct.adapter** %3, align 8
  %185 = getelementptr inbounds %struct.adapter, %struct.adapter* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %220

188:                                              ; preds = %183
  %189 = load %struct.adapter*, %struct.adapter** %3, align 8
  %190 = getelementptr inbounds %struct.adapter, %struct.adapter* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @igb_mac_min, align 8
  %195 = icmp sge i64 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %188
  %197 = load i32, i32* @E1000_RXCSUM_PCSD, align 4
  %198 = load i32, i32* %10, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %10, align 4
  %200 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %201 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @e1000_82575, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %196
  %207 = load i32, i32* @E1000_RXCSUM_CRCOFL, align 4
  %208 = load i32, i32* %10, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %196
  br label %219

211:                                              ; preds = %188
  %212 = load i32, i32* @E1000_RXCSUM_TUOFL, align 4
  %213 = load i32, i32* @E1000_RXCSUM_IPOFL, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @E1000_RXCSUM_PCSD, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %10, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %211, %210
  br label %251

220:                                              ; preds = %183
  %221 = load %struct.adapter*, %struct.adapter** %3, align 8
  %222 = getelementptr inbounds %struct.adapter, %struct.adapter* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @igb_mac_min, align 8
  %227 = icmp sge i64 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %220
  %229 = load i32, i32* @E1000_RXCSUM_IPPCSE, align 4
  %230 = load i32, i32* %10, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %10, align 4
  br label %238

232:                                              ; preds = %220
  %233 = load i32, i32* @E1000_RXCSUM_TUOFL, align 4
  %234 = load i32, i32* @E1000_RXCSUM_IPOFL, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* %10, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %232, %228
  %239 = load %struct.adapter*, %struct.adapter** %3, align 8
  %240 = getelementptr inbounds %struct.adapter, %struct.adapter* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @e1000_82575, align 8
  %245 = icmp sgt i64 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %238
  %247 = load i32, i32* @E1000_RXCSUM_CRCOFL, align 4
  %248 = load i32, i32* %10, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %246, %238
  br label %251

251:                                              ; preds = %250, %219
  br label %257

252:                                              ; preds = %175, %162
  %253 = load i32, i32* @E1000_RXCSUM_TUOFL, align 4
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %10, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %252, %251
  %258 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %259 = load i32, i32* @E1000_RXCSUM, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %258, i32 %259, i32 %260)
  %262 = load %struct.adapter*, %struct.adapter** %3, align 8
  %263 = getelementptr inbounds %struct.adapter, %struct.adapter* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp sgt i32 %264, 1
  br i1 %265, label %266, label %281

266:                                              ; preds = %257
  %267 = load %struct.adapter*, %struct.adapter** %3, align 8
  %268 = getelementptr inbounds %struct.adapter, %struct.adapter* %267, i32 0, i32 4
  %269 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @igb_mac_min, align 8
  %273 = icmp sge i64 %271, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %266
  %275 = load %struct.adapter*, %struct.adapter** %3, align 8
  %276 = call i32 @igb_initialize_rss_mapping(%struct.adapter* %275)
  br label %280

277:                                              ; preds = %266
  %278 = load %struct.adapter*, %struct.adapter** %3, align 8
  %279 = call i32 @em_initialize_rss_mapping(%struct.adapter* %278)
  br label %280

280:                                              ; preds = %277, %274
  br label %281

281:                                              ; preds = %280, %257
  %282 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %283 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @e1000_82573, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %281
  %289 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %290 = load i32, i32* @E1000_RDTR, align 4
  %291 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %289, i32 %290, i32 32)
  br label %292

292:                                              ; preds = %288, %281
  store i32 0, i32* %8, align 4
  %293 = load %struct.adapter*, %struct.adapter** %3, align 8
  %294 = getelementptr inbounds %struct.adapter, %struct.adapter* %293, i32 0, i32 5
  %295 = load %struct.em_rx_queue*, %struct.em_rx_queue** %294, align 8
  store %struct.em_rx_queue* %295, %struct.em_rx_queue** %7, align 8
  br label %296

296:                                              ; preds = %339, %292
  %297 = load i32, i32* %8, align 4
  %298 = load %struct.adapter*, %struct.adapter** %3, align 8
  %299 = getelementptr inbounds %struct.adapter, %struct.adapter* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp slt i32 %297, %300
  br i1 %301, label %302, label %344

302:                                              ; preds = %296
  %303 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %304 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %303, i32 0, i32 0
  store %struct.rx_ring* %304, %struct.rx_ring** %13, align 8
  %305 = load %struct.rx_ring*, %struct.rx_ring** %13, align 8
  %306 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %14, align 4
  %308 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %309 = load i32, i32* %8, align 4
  %310 = call i32 @E1000_RDLEN(i32 %309)
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = sext i32 %315 to i64
  %317 = mul i64 %316, 4
  %318 = trunc i64 %317 to i32
  %319 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %308, i32 %310, i32 %318)
  %320 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %321 = load i32, i32* %8, align 4
  %322 = call i32 @E1000_RDBAH(i32 %321)
  %323 = load i32, i32* %14, align 4
  %324 = ashr i32 %323, 32
  %325 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %320, i32 %322, i32 %324)
  %326 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @E1000_RDBAL(i32 %327)
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %326, i32 %328, i32 %329)
  %331 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %332 = load i32, i32* %8, align 4
  %333 = call i32 @E1000_RDH(i32 %332)
  %334 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %331, i32 %333, i32 0)
  %335 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %336 = load i32, i32* %8, align 4
  %337 = call i32 @E1000_RDT(i32 %336)
  %338 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %335, i32 %337, i32 0)
  br label %339

339:                                              ; preds = %302
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  %342 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %343 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %342, i32 1
  store %struct.em_rx_queue* %343, %struct.em_rx_queue** %7, align 8
  br label %296

344:                                              ; preds = %296
  %345 = load %struct.adapter*, %struct.adapter** %3, align 8
  %346 = getelementptr inbounds %struct.adapter, %struct.adapter* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @e1000_ich9lan, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %368, label %352

352:                                              ; preds = %344
  %353 = load %struct.adapter*, %struct.adapter** %3, align 8
  %354 = getelementptr inbounds %struct.adapter, %struct.adapter* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @e1000_pch2lan, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %368, label %360

360:                                              ; preds = %352
  %361 = load %struct.adapter*, %struct.adapter** %3, align 8
  %362 = getelementptr inbounds %struct.adapter, %struct.adapter* %361, i32 0, i32 4
  %363 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @e1000_ich10lan, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %382

368:                                              ; preds = %360, %352, %344
  %369 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %370 = call i64 @if_getmtu(%struct.ifnet* %369)
  %371 = load i64, i64* @ETHERMTU, align 8
  %372 = icmp sgt i64 %370, %371
  br i1 %372, label %373, label %382

373:                                              ; preds = %368
  %374 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %375 = call i32 @E1000_RXDCTL(i32 0)
  %376 = call i32 @E1000_READ_REG(%struct.e1000_hw* %374, i32 %375)
  store i32 %376, i32* %15, align 4
  %377 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %378 = call i32 @E1000_RXDCTL(i32 0)
  %379 = load i32, i32* %15, align 4
  %380 = or i32 %379, 3
  %381 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %377, i32 %378, i32 %380)
  br label %615

382:                                              ; preds = %368, %360
  %383 = load %struct.adapter*, %struct.adapter** %3, align 8
  %384 = getelementptr inbounds %struct.adapter, %struct.adapter* %383, i32 0, i32 4
  %385 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @e1000_82574, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %419

390:                                              ; preds = %382
  store i32 0, i32* %16, align 4
  br label %391

391:                                              ; preds = %415, %390
  %392 = load i32, i32* %16, align 4
  %393 = load %struct.adapter*, %struct.adapter** %3, align 8
  %394 = getelementptr inbounds %struct.adapter, %struct.adapter* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = icmp slt i32 %392, %395
  br i1 %396, label %397, label %418

397:                                              ; preds = %391
  %398 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %399 = load i32, i32* %16, align 4
  %400 = call i32 @E1000_RXDCTL(i32 %399)
  %401 = call i32 @E1000_READ_REG(%struct.e1000_hw* %398, i32 %400)
  store i32 %401, i32* %17, align 4
  %402 = load i32, i32* %17, align 4
  %403 = or i32 %402, 32
  store i32 %403, i32* %17, align 4
  %404 = load i32, i32* %17, align 4
  %405 = or i32 %404, 1024
  store i32 %405, i32* %17, align 4
  %406 = load i32, i32* %17, align 4
  %407 = or i32 %406, 262144
  store i32 %407, i32* %17, align 4
  %408 = load i32, i32* %17, align 4
  %409 = or i32 %408, 16777216
  store i32 %409, i32* %17, align 4
  %410 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %411 = load i32, i32* %16, align 4
  %412 = call i32 @E1000_RXDCTL(i32 %411)
  %413 = load i32, i32* %17, align 4
  %414 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %410, i32 %412, i32 %413)
  br label %415

415:                                              ; preds = %397
  %416 = load i32, i32* %16, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %16, align 4
  br label %391

418:                                              ; preds = %391
  br label %614

419:                                              ; preds = %382
  %420 = load %struct.adapter*, %struct.adapter** %3, align 8
  %421 = getelementptr inbounds %struct.adapter, %struct.adapter* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @igb_mac_min, align 8
  %426 = icmp sge i64 %424, %425
  br i1 %426, label %427, label %590

427:                                              ; preds = %419
  store i32 0, i32* %19, align 4
  %428 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %429 = call i64 @if_getmtu(%struct.ifnet* %428)
  %430 = load i64, i64* @ETHERMTU, align 8
  %431 = icmp sgt i64 %429, %430
  br i1 %431, label %432, label %483

432:                                              ; preds = %427
  %433 = load %struct.adapter*, %struct.adapter** %3, align 8
  %434 = getelementptr inbounds %struct.adapter, %struct.adapter* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  %436 = icmp sle i32 %435, 4096
  br i1 %436, label %437, label %447

437:                                              ; preds = %432
  %438 = load i32, i32* @E1000_SRRCTL_BSIZEPKT_SHIFT, align 4
  %439 = ashr i32 4096, %438
  %440 = load i32, i32* %19, align 4
  %441 = or i32 %440, %439
  store i32 %441, i32* %19, align 4
  %442 = load i32, i32* @E1000_RCTL_SZ_4096, align 4
  %443 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %444 = or i32 %442, %443
  %445 = load i32, i32* %9, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %9, align 4
  br label %463

447:                                              ; preds = %432
  %448 = load %struct.adapter*, %struct.adapter** %3, align 8
  %449 = getelementptr inbounds %struct.adapter, %struct.adapter* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = icmp sgt i32 %450, 4096
  br i1 %451, label %452, label %462

452:                                              ; preds = %447
  %453 = load i32, i32* @E1000_SRRCTL_BSIZEPKT_SHIFT, align 4
  %454 = ashr i32 8192, %453
  %455 = load i32, i32* %19, align 4
  %456 = or i32 %455, %454
  store i32 %456, i32* %19, align 4
  %457 = load i32, i32* @E1000_RCTL_SZ_8192, align 4
  %458 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %459 = or i32 %457, %458
  %460 = load i32, i32* %9, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %9, align 4
  br label %462

462:                                              ; preds = %452, %447
  br label %463

463:                                              ; preds = %462, %437
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  store i32 %466, i32* %18, align 4
  %467 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %468 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %467, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = icmp ne i32* %469, null
  br i1 %470, label %471, label %477

471:                                              ; preds = %463
  %472 = load i64, i64* @VLAN_TAG_SIZE, align 8
  %473 = load i32, i32* %18, align 4
  %474 = sext i32 %473 to i64
  %475 = add nsw i64 %474, %472
  %476 = trunc i64 %475 to i32
  store i32 %476, i32* %18, align 4
  br label %477

477:                                              ; preds = %471, %463
  %478 = load %struct.adapter*, %struct.adapter** %3, align 8
  %479 = getelementptr inbounds %struct.adapter, %struct.adapter* %478, i32 0, i32 4
  %480 = load i32, i32* @E1000_RLPML, align 4
  %481 = load i32, i32* %18, align 4
  %482 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %479, i32 %480, i32 %481)
  br label %491

483:                                              ; preds = %427
  %484 = load i32, i32* @E1000_SRRCTL_BSIZEPKT_SHIFT, align 4
  %485 = ashr i32 2048, %484
  %486 = load i32, i32* %19, align 4
  %487 = or i32 %486, %485
  store i32 %487, i32* %19, align 4
  %488 = load i32, i32* @E1000_RCTL_SZ_2048, align 4
  %489 = load i32, i32* %9, align 4
  %490 = or i32 %489, %488
  store i32 %490, i32* %9, align 4
  br label %491

491:                                              ; preds = %483, %477
  %492 = load %struct.adapter*, %struct.adapter** %3, align 8
  %493 = getelementptr inbounds %struct.adapter, %struct.adapter* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = icmp sgt i32 %494, 1
  br i1 %495, label %496, label %512

496:                                              ; preds = %491
  %497 = load %struct.adapter*, %struct.adapter** %3, align 8
  %498 = getelementptr inbounds %struct.adapter, %struct.adapter* %497, i32 0, i32 3
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @e1000_fc_none, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %508, label %502

502:                                              ; preds = %496
  %503 = load %struct.adapter*, %struct.adapter** %3, align 8
  %504 = getelementptr inbounds %struct.adapter, %struct.adapter* %503, i32 0, i32 3
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* @e1000_fc_rx_pause, align 8
  %507 = icmp eq i64 %505, %506
  br i1 %507, label %508, label %512

508:                                              ; preds = %502, %496
  %509 = load i32, i32* @E1000_SRRCTL_DROP_EN, align 4
  %510 = load i32, i32* %19, align 4
  %511 = or i32 %510, %509
  store i32 %511, i32* %19, align 4
  br label %512

512:                                              ; preds = %508, %502, %491
  store i32 0, i32* %8, align 4
  %513 = load %struct.adapter*, %struct.adapter** %3, align 8
  %514 = getelementptr inbounds %struct.adapter, %struct.adapter* %513, i32 0, i32 5
  %515 = load %struct.em_rx_queue*, %struct.em_rx_queue** %514, align 8
  store %struct.em_rx_queue* %515, %struct.em_rx_queue** %7, align 8
  br label %516

516:                                              ; preds = %584, %512
  %517 = load i32, i32* %8, align 4
  %518 = load %struct.adapter*, %struct.adapter** %3, align 8
  %519 = getelementptr inbounds %struct.adapter, %struct.adapter* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = icmp slt i32 %517, %520
  br i1 %521, label %522, label %589

522:                                              ; preds = %516
  %523 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %524 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %523, i32 0, i32 0
  store %struct.rx_ring* %524, %struct.rx_ring** %20, align 8
  %525 = load %struct.rx_ring*, %struct.rx_ring** %20, align 8
  %526 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  store i32 %527, i32* %21, align 4
  %528 = load i32, i32* @E1000_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %529 = load i32, i32* %19, align 4
  %530 = or i32 %529, %528
  store i32 %530, i32* %19, align 4
  %531 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %532 = load i32, i32* %8, align 4
  %533 = call i32 @E1000_RDLEN(i32 %532)
  %534 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 0
  %536 = load i32*, i32** %535, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 0
  %538 = load i32, i32* %537, align 4
  %539 = sext i32 %538 to i64
  %540 = mul i64 %539, 4
  %541 = trunc i64 %540 to i32
  %542 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %531, i32 %533, i32 %541)
  %543 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %544 = load i32, i32* %8, align 4
  %545 = call i32 @E1000_RDBAH(i32 %544)
  %546 = load i32, i32* %21, align 4
  %547 = ashr i32 %546, 32
  %548 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %543, i32 %545, i32 %547)
  %549 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %550 = load i32, i32* %8, align 4
  %551 = call i32 @E1000_RDBAL(i32 %550)
  %552 = load i32, i32* %21, align 4
  %553 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %549, i32 %551, i32 %552)
  %554 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %555 = load i32, i32* %8, align 4
  %556 = call i32 @E1000_SRRCTL(i32 %555)
  %557 = load i32, i32* %19, align 4
  %558 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %554, i32 %556, i32 %557)
  %559 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %560 = load i32, i32* %8, align 4
  %561 = call i32 @E1000_RXDCTL(i32 %560)
  %562 = call i32 @E1000_READ_REG(%struct.e1000_hw* %559, i32 %561)
  store i32 %562, i32* %22, align 4
  %563 = load i32, i32* @E1000_RXDCTL_QUEUE_ENABLE, align 4
  %564 = load i32, i32* %22, align 4
  %565 = or i32 %564, %563
  store i32 %565, i32* %22, align 4
  %566 = load i32, i32* %22, align 4
  %567 = and i32 %566, -1048576
  store i32 %567, i32* %22, align 4
  %568 = load i32, i32* @IGB_RX_PTHRESH, align 4
  %569 = load i32, i32* %22, align 4
  %570 = or i32 %569, %568
  store i32 %570, i32* %22, align 4
  %571 = load i32, i32* @IGB_RX_HTHRESH, align 4
  %572 = shl i32 %571, 8
  %573 = load i32, i32* %22, align 4
  %574 = or i32 %573, %572
  store i32 %574, i32* %22, align 4
  %575 = load i32, i32* @IGB_RX_WTHRESH, align 4
  %576 = shl i32 %575, 16
  %577 = load i32, i32* %22, align 4
  %578 = or i32 %577, %576
  store i32 %578, i32* %22, align 4
  %579 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %580 = load i32, i32* %8, align 4
  %581 = call i32 @E1000_RXDCTL(i32 %580)
  %582 = load i32, i32* %22, align 4
  %583 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %579, i32 %581, i32 %582)
  br label %584

584:                                              ; preds = %522
  %585 = load i32, i32* %8, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %8, align 4
  %587 = load %struct.em_rx_queue*, %struct.em_rx_queue** %7, align 8
  %588 = getelementptr inbounds %struct.em_rx_queue, %struct.em_rx_queue* %587, i32 1
  store %struct.em_rx_queue* %588, %struct.em_rx_queue** %7, align 8
  br label %516

589:                                              ; preds = %516
  br label %613

590:                                              ; preds = %419
  %591 = load %struct.adapter*, %struct.adapter** %3, align 8
  %592 = getelementptr inbounds %struct.adapter, %struct.adapter* %591, i32 0, i32 4
  %593 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %593, i32 0, i32 0
  %595 = load i64, i64* %594, align 8
  %596 = load i64, i64* @e1000_pch2lan, align 8
  %597 = icmp sge i64 %595, %596
  br i1 %597, label %598, label %612

598:                                              ; preds = %590
  %599 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %600 = call i64 @if_getmtu(%struct.ifnet* %599)
  %601 = load i64, i64* @ETHERMTU, align 8
  %602 = icmp sgt i64 %600, %601
  br i1 %602, label %603, label %607

603:                                              ; preds = %598
  %604 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %605 = load i32, i32* @TRUE, align 4
  %606 = call i32 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw* %604, i32 %605)
  br label %611

607:                                              ; preds = %598
  %608 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %609 = load i32, i32* @FALSE, align 4
  %610 = call i32 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw* %608, i32 %609)
  br label %611

611:                                              ; preds = %607, %603
  br label %612

612:                                              ; preds = %611, %590
  br label %613

613:                                              ; preds = %612, %589
  br label %614

614:                                              ; preds = %613, %418
  br label %615

615:                                              ; preds = %614, %373
  %616 = load i32, i32* @E1000_RCTL_VFE, align 4
  %617 = xor i32 %616, -1
  %618 = load i32, i32* %9, align 4
  %619 = and i32 %618, %617
  store i32 %619, i32* %9, align 4
  %620 = load %struct.adapter*, %struct.adapter** %3, align 8
  %621 = getelementptr inbounds %struct.adapter, %struct.adapter* %620, i32 0, i32 4
  %622 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %622, i32 0, i32 0
  %624 = load i64, i64* %623, align 8
  %625 = load i64, i64* @igb_mac_min, align 8
  %626 = icmp slt i64 %624, %625
  br i1 %626, label %627, label %666

627:                                              ; preds = %615
  %628 = load %struct.adapter*, %struct.adapter** %3, align 8
  %629 = getelementptr inbounds %struct.adapter, %struct.adapter* %628, i32 0, i32 2
  %630 = load i32, i32* %629, align 8
  %631 = load i32, i32* @MCLBYTES, align 4
  %632 = icmp eq i32 %630, %631
  br i1 %632, label %633, label %637

633:                                              ; preds = %627
  %634 = load i32, i32* @E1000_RCTL_SZ_2048, align 4
  %635 = load i32, i32* %9, align 4
  %636 = or i32 %635, %634
  store i32 %636, i32* %9, align 4
  br label %663

637:                                              ; preds = %627
  %638 = load %struct.adapter*, %struct.adapter** %3, align 8
  %639 = getelementptr inbounds %struct.adapter, %struct.adapter* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 8
  %641 = load i32, i32* @MJUMPAGESIZE, align 4
  %642 = icmp eq i32 %640, %641
  br i1 %642, label %643, label %649

643:                                              ; preds = %637
  %644 = load i32, i32* @E1000_RCTL_SZ_4096, align 4
  %645 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %646 = or i32 %644, %645
  %647 = load i32, i32* %9, align 4
  %648 = or i32 %647, %646
  store i32 %648, i32* %9, align 4
  br label %662

649:                                              ; preds = %637
  %650 = load %struct.adapter*, %struct.adapter** %3, align 8
  %651 = getelementptr inbounds %struct.adapter, %struct.adapter* %650, i32 0, i32 2
  %652 = load i32, i32* %651, align 8
  %653 = load i32, i32* @MJUMPAGESIZE, align 4
  %654 = icmp sgt i32 %652, %653
  br i1 %654, label %655, label %661

655:                                              ; preds = %649
  %656 = load i32, i32* @E1000_RCTL_SZ_8192, align 4
  %657 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %658 = or i32 %656, %657
  %659 = load i32, i32* %9, align 4
  %660 = or i32 %659, %658
  store i32 %660, i32* %9, align 4
  br label %661

661:                                              ; preds = %655, %649
  br label %662

662:                                              ; preds = %661, %643
  br label %663

663:                                              ; preds = %662, %633
  %664 = load i32, i32* %9, align 4
  %665 = and i32 %664, -3073
  store i32 %665, i32* %9, align 4
  br label %666

666:                                              ; preds = %663, %615
  %667 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %668 = load i32, i32* @E1000_RCTL, align 4
  %669 = load i32, i32* %9, align 4
  %670 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %667, i32 %668, i32 %669)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @if_getmtu(%struct.ifnet*) #1

declare dso_local i32 @E1000_EITR_82574(i32) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @igb_initialize_rss_mapping(%struct.adapter*) #1

declare dso_local i32 @em_initialize_rss_mapping(%struct.adapter*) #1

declare dso_local i32 @E1000_RDLEN(i32) #1

declare dso_local i32 @E1000_RDBAH(i32) #1

declare dso_local i32 @E1000_RDBAL(i32) #1

declare dso_local i32 @E1000_RDH(i32) #1

declare dso_local i32 @E1000_RDT(i32) #1

declare dso_local i32 @E1000_RXDCTL(i32) #1

declare dso_local i32 @E1000_SRRCTL(i32) #1

declare dso_local i32 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
