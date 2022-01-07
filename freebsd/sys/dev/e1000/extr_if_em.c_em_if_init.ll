; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i64, %struct.TYPE_15__, i64, i64, i32, %struct.em_tx_queue*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.em_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"em_if_init: begin\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@e1000_82571 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@E1000_RAR_ENTRIES = common dso_local global i64 0, align 8
@E1000_VET = common dso_local global i32 0, align 4
@ETHERTYPE_VLAN = common dso_local global i32 0, align 4
@igb_mac_min = common dso_local global i64 0, align 8
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_VME = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@e1000_82574 = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_PBA_CLR = common dso_local global i32 0, align 4
@E1000_IVAR = common dso_local global i32 0, align 4
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICS = common dso_local global i32 0, align 4
@E1000_ICS_LSC = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_i354 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_if_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_if_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.em_tx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.adapter* @iflib_get_softc(i32 %11)
  store %struct.adapter* %12, %struct.adapter** %3, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %4, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.ifnet* @iflib_get_ifp(i32 %16)
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = call i32 @if_getlladdr(%struct.ifnet* %19)
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %27 = call i32 @bcopy(i32 %20, i32 %25, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 3
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @e1000_rar_set(%struct.TYPE_15__* %29, i32 %34, i64 0)
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @e1000_82571, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %1
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 3
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @e1000_set_laa_state_82571(%struct.TYPE_15__* %45, i32 %46)
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 3
  %50 = load %struct.adapter*, %struct.adapter** %3, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @E1000_RAR_ENTRIES, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @e1000_rar_set(%struct.TYPE_15__* %49, i32 %54, i64 %56)
  br label %58

58:                                               ; preds = %43, %1
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @em_reset(i32 %59)
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @em_if_update_admin_status(i32 %61)
  store i32 0, i32* %7, align 4
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 7
  %65 = load %struct.em_tx_queue*, %struct.em_tx_queue** %64, align 8
  store %struct.em_tx_queue* %65, %struct.em_tx_queue** %6, align 8
  br label %66

66:                                               ; preds = %88, %58
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load %struct.em_tx_queue*, %struct.em_tx_queue** %6, align 8
  %74 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %73, i32 0, i32 0
  store %struct.tx_ring* %74, %struct.tx_ring** %8, align 8
  %75 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %76 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %79 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  %86 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %87 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load %struct.em_tx_queue*, %struct.em_tx_queue** %6, align 8
  %92 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %91, i32 1
  store %struct.em_tx_queue* %92, %struct.em_tx_queue** %6, align 8
  br label %66

93:                                               ; preds = %66
  %94 = load %struct.adapter*, %struct.adapter** %3, align 8
  %95 = getelementptr inbounds %struct.adapter, %struct.adapter* %94, i32 0, i32 3
  %96 = load i32, i32* @E1000_VET, align 4
  %97 = load i32, i32* @ETHERTYPE_VLAN, align 4
  %98 = call i32 @E1000_WRITE_REG(%struct.TYPE_15__* %95, i32 %96, i32 %97)
  %99 = load %struct.adapter*, %struct.adapter** %3, align 8
  %100 = getelementptr inbounds %struct.adapter, %struct.adapter* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @igb_mac_min, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 3
  %109 = call i32 @e1000_rx_fifo_flush_82575(%struct.TYPE_15__* %108)
  br label %110

110:                                              ; preds = %106, %93
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = call i32 @em_init_manageability(%struct.adapter* %111)
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @em_initialize_transmit_unit(i32 %113)
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @em_if_multi_set(i32 %115)
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @iflib_get_rx_mbuf_sz(i32 %117)
  %119 = load %struct.adapter*, %struct.adapter** %3, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @em_initialize_receive_unit(i32 %121)
  %123 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %124 = call i32 @if_getcapenable(%struct.ifnet* %123)
  %125 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %110
  %129 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %130 = call i32 @if_getcapenable(%struct.ifnet* %129)
  %131 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load %struct.adapter*, %struct.adapter** %3, align 8
  %136 = call i32 @em_setup_vlan_hw_support(%struct.adapter* %135)
  br label %150

137:                                              ; preds = %128
  %138 = load %struct.adapter*, %struct.adapter** %3, align 8
  %139 = getelementptr inbounds %struct.adapter, %struct.adapter* %138, i32 0, i32 3
  %140 = load i32, i32* @E1000_CTRL, align 4
  %141 = call i32 @E1000_READ_REG(%struct.TYPE_15__* %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* @E1000_CTRL_VME, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 3
  %147 = load i32, i32* @E1000_CTRL, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @E1000_WRITE_REG(%struct.TYPE_15__* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %137, %134
  br label %151

151:                                              ; preds = %150, %110
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* @IFF_PROMISC, align 4
  %154 = call i32 @em_if_set_promisc(i32 %152, i32 %153)
  %155 = load %struct.adapter*, %struct.adapter** %3, align 8
  %156 = getelementptr inbounds %struct.adapter, %struct.adapter* %155, i32 0, i32 3
  %157 = call i32 @e1000_clear_hw_cntrs_base_generic(%struct.TYPE_15__* %156)
  %158 = load %struct.adapter*, %struct.adapter** %3, align 8
  %159 = getelementptr inbounds %struct.adapter, %struct.adapter* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @e1000_82574, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %185

165:                                              ; preds = %151
  %166 = load %struct.adapter*, %struct.adapter** %3, align 8
  %167 = getelementptr inbounds %struct.adapter, %struct.adapter* %166, i32 0, i32 3
  %168 = load i32, i32* @E1000_CTRL_EXT, align 4
  %169 = call i32 @E1000_READ_REG(%struct.TYPE_15__* %167, i32 %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* @E1000_CTRL_EXT_PBA_CLR, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  %173 = load %struct.adapter*, %struct.adapter** %3, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 3
  %175 = load i32, i32* @E1000_CTRL_EXT, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @E1000_WRITE_REG(%struct.TYPE_15__* %174, i32 %175, i32 %176)
  %178 = load %struct.adapter*, %struct.adapter** %3, align 8
  %179 = getelementptr inbounds %struct.adapter, %struct.adapter* %178, i32 0, i32 3
  %180 = load i32, i32* @E1000_IVAR, align 4
  %181 = load %struct.adapter*, %struct.adapter** %3, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @E1000_WRITE_REG(%struct.TYPE_15__* %179, i32 %180, i32 %183)
  br label %195

185:                                              ; preds = %151
  %186 = load %struct.adapter*, %struct.adapter** %3, align 8
  %187 = getelementptr inbounds %struct.adapter, %struct.adapter* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load %struct.adapter*, %struct.adapter** %3, align 8
  %193 = call i32 @igb_configure_queues(%struct.adapter* %192)
  br label %194

194:                                              ; preds = %191, %185
  br label %195

195:                                              ; preds = %194, %165
  %196 = load %struct.adapter*, %struct.adapter** %3, align 8
  %197 = getelementptr inbounds %struct.adapter, %struct.adapter* %196, i32 0, i32 3
  %198 = load i32, i32* @E1000_ICR, align 4
  %199 = call i32 @E1000_READ_REG(%struct.TYPE_15__* %197, i32 %198)
  %200 = load %struct.adapter*, %struct.adapter** %3, align 8
  %201 = getelementptr inbounds %struct.adapter, %struct.adapter* %200, i32 0, i32 3
  %202 = load i32, i32* @E1000_ICS, align 4
  %203 = load i32, i32* @E1000_ICS_LSC, align 4
  %204 = call i32 @E1000_WRITE_REG(%struct.TYPE_15__* %201, i32 %202, i32 %203)
  %205 = load %struct.adapter*, %struct.adapter** %3, align 8
  %206 = getelementptr inbounds %struct.adapter, %struct.adapter* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %195
  %210 = load %struct.adapter*, %struct.adapter** %3, align 8
  %211 = getelementptr inbounds %struct.adapter, %struct.adapter* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.adapter*, %struct.adapter** %3, align 8
  %216 = call i32 @em_get_hw_control(%struct.adapter* %215)
  br label %217

217:                                              ; preds = %214, %209, %195
  %218 = load %struct.adapter*, %struct.adapter** %3, align 8
  %219 = getelementptr inbounds %struct.adapter, %struct.adapter* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @igb_mac_min, align 8
  %224 = icmp sge i64 %222, %223
  br i1 %224, label %225, label %254

225:                                              ; preds = %217
  %226 = load %struct.adapter*, %struct.adapter** %3, align 8
  %227 = getelementptr inbounds %struct.adapter, %struct.adapter* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @e1000_media_type_copper, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %254

233:                                              ; preds = %225
  %234 = load %struct.adapter*, %struct.adapter** %3, align 8
  %235 = getelementptr inbounds %struct.adapter, %struct.adapter* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @e1000_i354, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %233
  %242 = load %struct.adapter*, %struct.adapter** %3, align 8
  %243 = getelementptr inbounds %struct.adapter, %struct.adapter* %242, i32 0, i32 3
  %244 = load i32, i32* @TRUE, align 4
  %245 = load i32, i32* @TRUE, align 4
  %246 = call i32 @e1000_set_eee_i354(%struct.TYPE_15__* %243, i32 %244, i32 %245)
  br label %253

247:                                              ; preds = %233
  %248 = load %struct.adapter*, %struct.adapter** %3, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 3
  %250 = load i32, i32* @TRUE, align 4
  %251 = load i32, i32* @TRUE, align 4
  %252 = call i32 @e1000_set_eee_i350(%struct.TYPE_15__* %249, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %247, %241
  br label %254

254:                                              ; preds = %253, %225, %217
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @if_getlladdr(%struct.ifnet*) #1

declare dso_local i32 @e1000_rar_set(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @e1000_set_laa_state_82571(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @em_reset(i32) #1

declare dso_local i32 @em_if_update_admin_status(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @e1000_rx_fifo_flush_82575(%struct.TYPE_15__*) #1

declare dso_local i32 @em_init_manageability(%struct.adapter*) #1

declare dso_local i32 @em_initialize_transmit_unit(i32) #1

declare dso_local i32 @em_if_multi_set(i32) #1

declare dso_local i32 @iflib_get_rx_mbuf_sz(i32) #1

declare dso_local i32 @em_initialize_receive_unit(i32) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @em_setup_vlan_hw_support(%struct.adapter*) #1

declare dso_local i32 @E1000_READ_REG(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @em_if_set_promisc(i32, i32) #1

declare dso_local i32 @e1000_clear_hw_cntrs_base_generic(%struct.TYPE_15__*) #1

declare dso_local i32 @igb_configure_queues(%struct.adapter*) #1

declare dso_local i32 @em_get_hw_control(%struct.adapter*) #1

declare dso_local i32 @e1000_set_eee_i354(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @e1000_set_eee_i350(%struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
