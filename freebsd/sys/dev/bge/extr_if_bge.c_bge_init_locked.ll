; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i32, i64, i64, i32, i64, i64, i64, i64, i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BGE_RESET_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"initialization failure\0A\00", align 1
@BGE_RX_MTU = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@BGE_MAC_ADDR1_LO = common dso_local global i32 0, align 4
@BGE_MAC_ADDR1_HI = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@BGE_CSUM_FEATURES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"no memory for std Rx buffers.\0A\00", align 1
@BGE_CHIPID_BCM5705_A0 = common dso_local global i64 0, align 8
@BGE_STD_RX_RINGS = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"5705 A0 chip failed to load RX ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"no memory for jumbo Rx buffers.\0A\00", align 1
@BGE_TX_MODE = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5906 = common dso_local global i64 0, align 8
@BGE_TXMODE_MBUF_LOCKUP_FIX = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5720 = common dso_local global i64 0, align 8
@BGE_ASICREV_BCM5762 = common dso_local global i64 0, align 8
@BGE_TXMODE_JMB_FRM_LEN = common dso_local global i32 0, align 4
@BGE_TXMODE_CNT_DN_MODE = common dso_local global i32 0, align 4
@BGE_TXMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_RX_MODE = common dso_local global i32 0, align 4
@BGE_RXMODE_IPV6_ENABLE = common dso_local global i32 0, align 4
@BGE_RXMODE_IPV4_FRAG_FIX = common dso_local global i32 0, align 4
@BGE_RXMODE_ENABLE = common dso_local global i32 0, align 4
@BGE_MAX_RX_FRAME_LOWAT = common dso_local global i32 0, align 4
@BGE_MODE_CTL = common dso_local global i32 0, align 4
@BGE_MODECTL_STACKUP = common dso_local global i32 0, align 4
@BGE_PCI_MISC_CTL = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_CLEAR_INTA = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_MASK_PCI_INTR = common dso_local global i32 0, align 4
@BGE_MBX_IRQ0_LO = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@bge_tick = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_init_locked(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %8 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %9 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %8)
  %10 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @if_getdrvflags(i32 %13)
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %354

19:                                               ; preds = %1
  %20 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %21 = call i32 @bge_stop(%struct.bge_softc* %20)
  %22 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %23 = call i32 @bge_stop_fw(%struct.bge_softc* %22)
  %24 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %25 = load i32, i32* @BGE_RESET_START, align 4
  %26 = call i32 @bge_sig_pre_reset(%struct.bge_softc* %24, i32 %25)
  %27 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %28 = call i32 @bge_reset(%struct.bge_softc* %27)
  %29 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %30 = load i32, i32* @BGE_RESET_START, align 4
  %31 = call i32 @bge_sig_legacy(%struct.bge_softc* %29, i32 %30)
  %32 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %33 = load i32, i32* @BGE_RESET_START, align 4
  %34 = call i32 @bge_sig_post_reset(%struct.bge_softc* %32, i32 %33)
  %35 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %36 = call i32 @bge_chipinit(%struct.bge_softc* %35)
  %37 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %38 = call i64 @bge_blockinit(%struct.bge_softc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %19
  %41 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %42 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %354

45:                                               ; preds = %19
  %46 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %47 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  %49 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %50 = load i32, i32* @BGE_RX_MTU, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @if_getmtu(i32 %51)
  %53 = load i32, i32* @ETHER_HDR_LEN, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @ETHER_CRC_LEN, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @if_getcapenable(i32 %57)
  %59 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  br label %65

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = add nsw i32 %56, %66
  %68 = call i32 @CSR_WRITE_4(%struct.bge_softc* %49, i32 %50, i32 %67)
  %69 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IF_LLADDR(i32 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %4, align 8
  %74 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %75 = load i32, i32* @BGE_MAC_ADDR1_LO, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htons(i32 %78)
  %80 = call i32 @CSR_WRITE_4(%struct.bge_softc* %74, i32 %75, i32 %79)
  %81 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %82 = load i32, i32* @BGE_MAC_ADDR1_HI, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @htons(i32 %85)
  %87 = shl i32 %86, 16
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @htons(i32 %90)
  %92 = or i32 %87, %91
  %93 = call i32 @CSR_WRITE_4(%struct.bge_softc* %81, i32 %82, i32 %92)
  %94 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %95 = call i32 @bge_setpromisc(%struct.bge_softc* %94)
  %96 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %97 = call i32 @bge_setmulti(%struct.bge_softc* %96)
  %98 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %99 = call i32 @bge_setvlan(%struct.bge_softc* %98)
  %100 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %101 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %65
  %105 = load i32, i32* @CSUM_UDP, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %108 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %117

111:                                              ; preds = %65
  %112 = load i32, i32* @CSUM_UDP, align 4
  %113 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %114 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %104
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @if_getcapabilities(i32 %118)
  %120 = load i32, i32* @IFCAP_TXCSUM, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %117
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @if_getcapenable(i32 %124)
  %126 = load i32, i32* @IFCAP_TXCSUM, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @BGE_CSUM_FEATURES, align 4
  %132 = load i32, i32* @CSUM_UDP, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @if_sethwassistbits(i32 %130, i32 0, i32 %133)
  %135 = load i32, i32* %3, align 4
  %136 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %137 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @if_sethwassistbits(i32 %135, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %129, %123, %117
  %141 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %142 = call i64 @bge_init_rx_ring_std(%struct.bge_softc* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %146 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %150 = call i32 @bge_stop(%struct.bge_softc* %149)
  br label %354

151:                                              ; preds = %140
  %152 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %153 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BGE_CHIPID_BCM5705_A0, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %186

157:                                              ; preds = %151
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %174, %157
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 10
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = call i32 @DELAY(i32 20)
  %163 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %164 = load i64, i64* @BGE_STD_RX_RINGS, align 8
  %165 = add nsw i64 %164, 8
  %166 = call i32 @bge_readmem_ind(%struct.bge_softc* %163, i64 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @MCLBYTES, align 4
  %169 = load i32, i32* @ETHER_ALIGN, align 4
  %170 = sub nsw i32 %168, %169
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %177

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %158

177:                                              ; preds = %172, %158
  %178 = load i32, i32* %7, align 4
  %179 = icmp eq i32 %178, 10
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %182 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %185

185:                                              ; preds = %180, %177
  br label %186

186:                                              ; preds = %185, %151
  %187 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %188 = call i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %186
  %191 = load i32, i32* %3, align 4
  %192 = call i32 @if_getmtu(i32 %191)
  %193 = load i32, i32* @ETHER_HDR_LEN, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* @ETHER_CRC_LEN, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* @MCLBYTES, align 4
  %200 = load i32, i32* @ETHER_ALIGN, align 4
  %201 = sub nsw i32 %199, %200
  %202 = icmp sgt i32 %198, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %190
  %204 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %205 = call i64 @bge_init_rx_ring_jumbo(%struct.bge_softc* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %209 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @device_printf(i32 %210, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %212 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %213 = call i32 @bge_stop(%struct.bge_softc* %212)
  br label %354

214:                                              ; preds = %203
  br label %215

215:                                              ; preds = %214, %190, %186
  %216 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %217 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %216, i32 0, i32 8
  store i64 0, i64* %217, align 8
  %218 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %219 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %218, i32 0, i32 5
  store i64 0, i64* %219, align 8
  %220 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %221 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %220, i32 0, i32 6
  store i64 0, i64* %221, align 8
  %222 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %223 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %222, i32 0, i32 7
  store i64 0, i64* %223, align 8
  %224 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %225 = call i32 @bge_init_tx_ring(%struct.bge_softc* %224)
  %226 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %227 = load i32, i32* @BGE_TX_MODE, align 4
  %228 = call i32 @CSR_READ_4(%struct.bge_softc* %226, i32 %227)
  store i32 %228, i32* %5, align 4
  %229 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %230 = call i64 @BGE_IS_5755_PLUS(%struct.bge_softc* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %215
  %233 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %234 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @BGE_ASICREV_BCM5906, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %232, %215
  %239 = load i32, i32* @BGE_TXMODE_MBUF_LOCKUP_FIX, align 4
  %240 = load i32, i32* %5, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %5, align 4
  br label %242

242:                                              ; preds = %238, %232
  %243 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %244 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @BGE_ASICREV_BCM5720, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %250 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @BGE_ASICREV_BCM5762, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %270

254:                                              ; preds = %248, %242
  %255 = load i32, i32* @BGE_TXMODE_JMB_FRM_LEN, align 4
  %256 = load i32, i32* @BGE_TXMODE_CNT_DN_MODE, align 4
  %257 = or i32 %255, %256
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %5, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %5, align 4
  %261 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %262 = load i32, i32* @BGE_TX_MODE, align 4
  %263 = call i32 @CSR_READ_4(%struct.bge_softc* %261, i32 %262)
  %264 = load i32, i32* @BGE_TXMODE_JMB_FRM_LEN, align 4
  %265 = load i32, i32* @BGE_TXMODE_CNT_DN_MODE, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = load i32, i32* %5, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %254, %248
  %271 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %272 = load i32, i32* @BGE_TX_MODE, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* @BGE_TXMODE_ENABLE, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @CSR_WRITE_4(%struct.bge_softc* %271, i32 %272, i32 %275)
  %277 = call i32 @DELAY(i32 100)
  %278 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %279 = load i32, i32* @BGE_RX_MODE, align 4
  %280 = call i32 @CSR_READ_4(%struct.bge_softc* %278, i32 %279)
  store i32 %280, i32* %5, align 4
  %281 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %282 = call i64 @BGE_IS_5755_PLUS(%struct.bge_softc* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %270
  %285 = load i32, i32* @BGE_RXMODE_IPV6_ENABLE, align 4
  %286 = load i32, i32* %5, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %5, align 4
  br label %288

288:                                              ; preds = %284, %270
  %289 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %290 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @BGE_ASICREV_BCM5762, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load i32, i32* @BGE_RXMODE_IPV4_FRAG_FIX, align 4
  %296 = load i32, i32* %5, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %5, align 4
  br label %298

298:                                              ; preds = %294, %288
  %299 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %300 = load i32, i32* @BGE_RX_MODE, align 4
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* @BGE_RXMODE_ENABLE, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @CSR_WRITE_4(%struct.bge_softc* %299, i32 %300, i32 %303)
  %305 = call i32 @DELAY(i32 10)
  %306 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %307 = call i64 @BGE_IS_57765_PLUS(%struct.bge_softc* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %298
  %310 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %311 = load i32, i32* @BGE_MAX_RX_FRAME_LOWAT, align 4
  %312 = call i32 @CSR_WRITE_4(%struct.bge_softc* %310, i32 %311, i32 1)
  br label %317

313:                                              ; preds = %298
  %314 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %315 = load i32, i32* @BGE_MAX_RX_FRAME_LOWAT, align 4
  %316 = call i32 @CSR_WRITE_4(%struct.bge_softc* %314, i32 %315, i32 2)
  br label %317

317:                                              ; preds = %313, %309
  %318 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %319 = call i64 @BGE_IS_5705_PLUS(%struct.bge_softc* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %323 = call i32 @bge_stats_clear_regs(%struct.bge_softc* %322)
  br label %324

324:                                              ; preds = %321, %317
  %325 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %326 = load i32, i32* @BGE_MODE_CTL, align 4
  %327 = load i32, i32* @BGE_MODECTL_STACKUP, align 4
  %328 = call i32 @BGE_SETBIT(%struct.bge_softc* %325, i32 %326, i32 %327)
  %329 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %330 = load i32, i32* @BGE_PCI_MISC_CTL, align 4
  %331 = load i32, i32* @BGE_PCIMISCCTL_CLEAR_INTA, align 4
  %332 = call i32 @BGE_SETBIT(%struct.bge_softc* %329, i32 %330, i32 %331)
  %333 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %334 = load i32, i32* @BGE_PCI_MISC_CTL, align 4
  %335 = load i32, i32* @BGE_PCIMISCCTL_MASK_PCI_INTR, align 4
  %336 = call i32 @BGE_CLRBIT(%struct.bge_softc* %333, i32 %334, i32 %335)
  %337 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %338 = load i32, i32* @BGE_MBX_IRQ0_LO, align 4
  %339 = call i32 @bge_writembx(%struct.bge_softc* %337, i32 %338, i32 0)
  %340 = load i32, i32* %3, align 4
  %341 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %342 = call i32 @if_setdrvflagbits(i32 %340, i32 %341, i32 0)
  %343 = load i32, i32* %3, align 4
  %344 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %345 = call i32 @if_setdrvflagbits(i32 %343, i32 0, i32 %344)
  %346 = load i32, i32* %3, align 4
  %347 = call i32 @bge_ifmedia_upd_locked(i32 %346)
  %348 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %349 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %348, i32 0, i32 4
  %350 = load i32, i32* @hz, align 4
  %351 = load i32, i32* @bge_tick, align 4
  %352 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %353 = call i32 @callout_reset(i32* %349, i32 %350, i32 %351, %struct.bge_softc* %352)
  br label %354

354:                                              ; preds = %324, %207, %144, %40, %18
  ret void
}

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @bge_stop(%struct.bge_softc*) #1

declare dso_local i32 @bge_stop_fw(%struct.bge_softc*) #1

declare dso_local i32 @bge_sig_pre_reset(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_reset(%struct.bge_softc*) #1

declare dso_local i32 @bge_sig_legacy(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_sig_post_reset(%struct.bge_softc*, i32) #1

declare dso_local i32 @bge_chipinit(%struct.bge_softc*) #1

declare dso_local i64 @bge_blockinit(%struct.bge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @if_getmtu(i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i64 @IF_LLADDR(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @bge_setpromisc(%struct.bge_softc*) #1

declare dso_local i32 @bge_setmulti(%struct.bge_softc*) #1

declare dso_local i32 @bge_setvlan(%struct.bge_softc*) #1

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i64 @bge_init_rx_ring_std(%struct.bge_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bge_readmem_ind(%struct.bge_softc*, i64) #1

declare dso_local i64 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc*) #1

declare dso_local i64 @bge_init_rx_ring_jumbo(%struct.bge_softc*) #1

declare dso_local i32 @bge_init_tx_ring(%struct.bge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i64 @BGE_IS_5755_PLUS(%struct.bge_softc*) #1

declare dso_local i64 @BGE_IS_57765_PLUS(%struct.bge_softc*) #1

declare dso_local i64 @BGE_IS_5705_PLUS(%struct.bge_softc*) #1

declare dso_local i32 @bge_stats_clear_regs(%struct.bge_softc*) #1

declare dso_local i32 @BGE_SETBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @BGE_CLRBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @bge_ifmedia_upd_locked(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
