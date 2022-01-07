; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, i32, i32, %struct.ix_rx_queue*, %struct.ix_tx_queue*, i64, i32, i32, %struct.ixgbe_hw }
%struct.ix_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32 }
%struct.ix_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"ixgbe_if_init: begin\00", align 1
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_ETH_LENGTH_OF_ADDRESS = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@IXGBE_MHADD = common dso_local global i32 0, align 4
@IXGBE_MHADD_MFS_MASK = common dso_local global i32 0, align 4
@IXGBE_MHADD_MFS_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_DMBYPS = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@ixgbe_enable_msix = common dso_local global i64 0, align 8
@IXGBE_EIAM = common dso_local global i32 0, align 4
@IXGBE_EICS_RTX_QUEUE = common dso_local global i32 0, align 4
@ixgbe_phy_none = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unsupported SFP+ module type was detected.\0A\00", align 1
@IXGBE_LINK_ITR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IXGBE_FEATURE_SRIOV = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT_PFRSTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_if_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca %struct.ix_rx_queue*, align 8
  %8 = alloca %struct.ix_tx_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tx_ring*, align 8
  %18 = alloca %struct.rx_ring*, align 8
  store i32 %0, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call %struct.adapter* @iflib_get_softc(i32 %19)
  store %struct.adapter* %20, %struct.adapter** %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call %struct.ifnet* @iflib_get_ifp(i32 %21)
  store %struct.ifnet* %22, %struct.ifnet** %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @iflib_get_dev(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 10
  store %struct.ixgbe_hw* %26, %struct.ixgbe_hw** %6, align 8
  %27 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = call i32 @ixgbe_align_all_queue_indices(%struct.adapter* %28)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IXGBE_RAH_AV, align 4
  %39 = call i32 @ixgbe_set_rar(%struct.ixgbe_hw* %30, i32 0, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = call i32 @IF_LLADDR(%struct.ifnet* %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IXGBE_ETH_LENGTH_OF_ADDRESS, align 4
  %47 = call i32 @bcopy(i32 %41, i32 %45, i32 %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ixgbe_set_rar(%struct.ixgbe_hw* %48, i32 0, i32 %52, i32 %55, i32 1)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %61 = call i32 @ixgbe_init_hw(%struct.ixgbe_hw* %60)
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = call i32 @ixgbe_initialize_iov(%struct.adapter* %62)
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @ixgbe_initialize_transmit_units(i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @ixgbe_if_multi_set(i32 %66)
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @iflib_get_rx_mbuf_sz(i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 8
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @ixgbe_initialize_receive_units(i32 %72)
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = getelementptr inbounds %struct.adapter, %struct.adapter* %74, i32 0, i32 7
  store i64 0, i64* %75, align 8
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = call i32 @ixgbe_config_gpie(%struct.adapter* %76)
  %78 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ETHERMTU, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %1
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %85 = load i32, i32* @IXGBE_MHADD, align 4
  %86 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* @IXGBE_MHADD_MFS_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load %struct.adapter*, %struct.adapter** %3, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IXGBE_MHADD_MFS_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %99 = load i32, i32* @IXGBE_MHADD, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %83, %1
  store i32 0, i32* %14, align 4
  %103 = load %struct.adapter*, %struct.adapter** %3, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 6
  %105 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %104, align 8
  store %struct.ix_tx_queue* %105, %struct.ix_tx_queue** %8, align 8
  br label %106

106:                                              ; preds = %135, %102
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.adapter*, %struct.adapter** %3, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %140

112:                                              ; preds = %106
  %113 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %8, align 8
  %114 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %113, i32 0, i32 0
  store %struct.tx_ring* %114, %struct.tx_ring** %17, align 8
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %116 = load %struct.tx_ring*, %struct.tx_ring** %17, align 8
  %117 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @IXGBE_TXDCTL(i32 %118)
  %120 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %115, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, 524288
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, 288
  store i32 %127, i32* %9, align 4
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %129 = load %struct.tx_ring*, %struct.tx_ring** %17, align 8
  %130 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @IXGBE_TXDCTL(i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %128, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %112
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  %138 = load %struct.ix_tx_queue*, %struct.ix_tx_queue** %8, align 8
  %139 = getelementptr inbounds %struct.ix_tx_queue, %struct.ix_tx_queue* %138, i32 1
  store %struct.ix_tx_queue* %139, %struct.ix_tx_queue** %8, align 8
  br label %106

140:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  %141 = load %struct.adapter*, %struct.adapter** %3, align 8
  %142 = getelementptr inbounds %struct.adapter, %struct.adapter* %141, i32 0, i32 5
  %143 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %142, align 8
  store %struct.ix_rx_queue* %143, %struct.ix_rx_queue** %7, align 8
  br label %144

144:                                              ; preds = %203, %140
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.adapter*, %struct.adapter** %3, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %208

150:                                              ; preds = %144
  %151 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %152 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %151, i32 0, i32 0
  store %struct.rx_ring* %152, %struct.rx_ring** %18, align 8
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %154 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %155 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @IXGBE_RXDCTL(i32 %156)
  %158 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %153, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %150
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %166, -4194304
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = or i32 %168, 525344
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %165, %150
  %171 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %172 = load i32, i32* %11, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %11, align 4
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %175 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %176 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @IXGBE_RXDCTL(i32 %177)
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %174, i32 %178, i32 %179)
  store i32 0, i32* %15, align 4
  br label %181

181:                                              ; preds = %198, %170
  %182 = load i32, i32* %15, align 4
  %183 = icmp slt i32 %182, 10
  br i1 %183, label %184, label %201

184:                                              ; preds = %181
  %185 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %186 = load %struct.rx_ring*, %struct.rx_ring** %18, align 8
  %187 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @IXGBE_RXDCTL(i32 %188)
  %190 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %185, i32 %189)
  %191 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %201

195:                                              ; preds = %184
  %196 = call i32 @msec_delay(i32 1)
  br label %197

197:                                              ; preds = %195
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %181

201:                                              ; preds = %194, %181
  %202 = call i32 (...) @wmb()
  br label %203

203:                                              ; preds = %201
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  %206 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %207 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %206, i32 1
  store %struct.ix_rx_queue* %207, %struct.ix_rx_queue** %7, align 8
  br label %144

208:                                              ; preds = %144
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %210 = load i32, i32* @IXGBE_RXCTRL, align 4
  %211 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %209, i32 %210)
  store i32 %211, i32* %12, align 4
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %213 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %208
  %219 = load i32, i32* @IXGBE_RXCTRL_DMBYPS, align 4
  %220 = load i32, i32* %12, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %218, %208
  %223 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %224 = load i32, i32* %12, align 4
  %225 = or i32 %224, %223
  store i32 %225, i32* %12, align 4
  %226 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @ixgbe_enable_rx_dma(%struct.ixgbe_hw* %226, i32 %227)
  %229 = load i64, i64* @ixgbe_enable_msix, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %253

231:                                              ; preds = %222
  %232 = load %struct.adapter*, %struct.adapter** %3, align 8
  %233 = call i32 @ixgbe_configure_ivars(%struct.adapter* %232)
  %234 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %235 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %231
  %241 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %242 = load i32, i32* @IXGBE_EIAM, align 4
  %243 = load i32, i32* @IXGBE_EICS_RTX_QUEUE, align 4
  %244 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %241, i32 %242, i32 %243)
  br label %252

245:                                              ; preds = %231
  %246 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %247 = call i32 @IXGBE_EIAM_EX(i32 0)
  %248 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %246, i32 %247, i32 -1)
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %250 = call i32 @IXGBE_EIAM_EX(i32 1)
  %251 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %249, i32 %250, i32 -1)
  br label %252

252:                                              ; preds = %245, %240
  br label %262

253:                                              ; preds = %222
  %254 = load %struct.adapter*, %struct.adapter** %3, align 8
  %255 = call i32 @ixgbe_set_ivar(%struct.adapter* %254, i32 0, i32 0, i32 0)
  %256 = load %struct.adapter*, %struct.adapter** %3, align 8
  %257 = call i32 @ixgbe_set_ivar(%struct.adapter* %256, i32 0, i32 0, i32 1)
  %258 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %259 = load i32, i32* @IXGBE_EIAM, align 4
  %260 = load i32, i32* @IXGBE_EICS_RTX_QUEUE, align 4
  %261 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %258, i32 %259, i32 %260)
  br label %262

262:                                              ; preds = %253, %252
  %263 = load %struct.adapter*, %struct.adapter** %3, align 8
  %264 = call i32 @ixgbe_init_fdir(%struct.adapter* %263)
  %265 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %266 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @ixgbe_phy_none, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %287

271:                                              ; preds = %262
  %272 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %273 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 0
  %276 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %275, align 8
  %277 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %278 = bitcast %struct.ixgbe_hw* %277 to %struct.ixgbe_hw.0*
  %279 = call i32 %276(%struct.ixgbe_hw.0* %278)
  store i32 %279, i32* %16, align 4
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %271
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @device_printf(i32 %284, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %327

286:                                              ; preds = %271
  br label %287

287:                                              ; preds = %286, %262
  %288 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %289 = load %struct.adapter*, %struct.adapter** %3, align 8
  %290 = getelementptr inbounds %struct.adapter, %struct.adapter* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @IXGBE_EITR(i32 %291)
  %293 = load i32, i32* @IXGBE_LINK_ITR, align 4
  %294 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %288, i32 %292, i32 %293)
  %295 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %296 = load i32, i32* @TRUE, align 4
  %297 = call i32 @ixgbe_set_phy_power(%struct.ixgbe_hw* %295, i32 %296)
  %298 = load i32, i32* %2, align 4
  %299 = call i32 @ixgbe_config_link(i32 %298)
  %300 = load %struct.adapter*, %struct.adapter** %3, align 8
  %301 = call i32 @ixgbe_config_delay_values(%struct.adapter* %300)
  %302 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %303 = call i32 @ixgbe_start_hw(%struct.ixgbe_hw* %302)
  %304 = load i32, i32* %2, align 4
  %305 = call i32 @ixgbe_setup_vlan_hw_support(i32 %304)
  %306 = load %struct.adapter*, %struct.adapter** %3, align 8
  %307 = call i32 @ixgbe_config_dmac(%struct.adapter* %306)
  %308 = load i32, i32* %2, align 4
  %309 = call i32 @ixgbe_if_enable_intr(i32 %308)
  %310 = load %struct.adapter*, %struct.adapter** %3, align 8
  %311 = getelementptr inbounds %struct.adapter, %struct.adapter* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %327

316:                                              ; preds = %287
  %317 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %318 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %319 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %317, i32 %318)
  store i32 %319, i32* %13, align 4
  %320 = load i32, i32* @IXGBE_CTRL_EXT_PFRSTD, align 4
  %321 = load i32, i32* %13, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %13, align 4
  %323 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %324 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %325 = load i32, i32* %13, align 4
  %326 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %323, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %283, %316, %287
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @ixgbe_align_all_queue_indices(%struct.adapter*) #1

declare dso_local i32 @ixgbe_set_rar(%struct.ixgbe_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @ixgbe_init_hw(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_initialize_iov(%struct.adapter*) #1

declare dso_local i32 @ixgbe_initialize_transmit_units(i32) #1

declare dso_local i32 @ixgbe_if_multi_set(i32) #1

declare dso_local i32 @iflib_get_rx_mbuf_sz(i32) #1

declare dso_local i32 @ixgbe_initialize_receive_units(i32) #1

declare dso_local i32 @ixgbe_config_gpie(%struct.adapter*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_TXDCTL(i32) #1

declare dso_local i32 @IXGBE_RXDCTL(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ixgbe_enable_rx_dma(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_configure_ivars(%struct.adapter*) #1

declare dso_local i32 @IXGBE_EIAM_EX(i32) #1

declare dso_local i32 @ixgbe_set_ivar(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @ixgbe_init_fdir(%struct.adapter*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @IXGBE_EITR(i32) #1

declare dso_local i32 @ixgbe_set_phy_power(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_config_link(i32) #1

declare dso_local i32 @ixgbe_config_delay_values(%struct.adapter*) #1

declare dso_local i32 @ixgbe_start_hw(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_setup_vlan_hw_support(i32) #1

declare dso_local i32 @ixgbe_config_dmac(%struct.adapter*) #1

declare dso_local i32 @ixgbe_if_enable_intr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
