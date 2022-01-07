; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_initialize_receive_units.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_initialize_receive_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw, %struct.TYPE_4__*, i32, i32, %struct.ix_rx_queue* }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32* }
%struct.ix_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32, i32, i32 }
%struct.ifnet = type { i64, i32 }

@ETHERMTU = common dso_local global i64 0, align 8
@IXGBE_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_TCPHDR = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_UDPHDR = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_IPV4HDR = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_IPV6HDR = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_L2HDR = common dso_local global i32 0, align 4
@IXGBE_VFPSRTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [111 x i8] c"There is a problem with the PF setup.  It is likely the receive unit for this VF will not function correctly.\0A\00", align 1
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEHDR_MASK = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_MASK = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_VME = common dso_local global i32 0, align 4
@ixgbe_mac_X550_vf = common dso_local global i64 0, align 8
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_initialize_receive_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_initialize_receive_units(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ix_rx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_ring*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.adapter* @iflib_get_softc(i32 %18)
  store %struct.adapter* %19, %struct.adapter** %3, align 8
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  store %struct.ixgbe_hw* %21, %struct.ixgbe_hw** %5, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call %struct.ifnet* @iflib_get_ifp(i32 %22)
  store %struct.ifnet* %23, %struct.ifnet** %6, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 5
  %26 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %25, align 8
  store %struct.ix_rx_queue* %26, %struct.ix_rx_queue** %7, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ETHERMTU, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %34 = ashr i32 4096, %33
  store i32 %34, i32* %8, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %37 = ashr i32 2048, %36
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @IXGBE_PSRTYPE_TCPHDR, align 4
  %40 = load i32, i32* @IXGBE_PSRTYPE_UDPHDR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IXGBE_PSRTYPE_IPV4HDR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IXGBE_PSRTYPE_IPV6HDR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IXGBE_PSRTYPE_L2HDR, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, 536870912
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %38
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %57 = load i32, i32* @IXGBE_VFPSRTYPE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %56, i32 %57, i32 %58)
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ixgbevf_rlpml_set_vf(%struct.ixgbe_hw* %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %55
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %231, %71
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %236

81:                                               ; preds = %75
  %82 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %83 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %82, i32 0, i32 0
  store %struct.rx_ring* %83, %struct.rx_ring** %11, align 8
  %84 = load %struct.rx_ring*, %struct.rx_ring** %11, align 8
  %85 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %12, align 4
  %87 = load %struct.rx_ring*, %struct.rx_ring** %11, align 8
  %88 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %15, align 4
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @IXGBE_VFRXDCTL(i32 %91)
  %93 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %90, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @IXGBE_VFRXDCTL(i32 %99)
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %98, i32 %100, i32 %101)
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %118, %81
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %104, 10
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @IXGBE_VFRXDCTL(i32 %108)
  %110 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %107, i32 %109)
  %111 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = call i32 @msec_delay(i32 1)
  br label %117

116:                                              ; preds = %106
  br label %121

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %103

121:                                              ; preds = %116, %103
  %122 = call i32 (...) @wmb()
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @IXGBE_VFRDBAL(i32 %124)
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = and i64 %127, 4294967295
  %129 = trunc i64 %128 to i32
  %130 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %123, i32 %125, i32 %129)
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @IXGBE_VFRDBAH(i32 %132)
  %134 = load i32, i32* %12, align 4
  %135 = ashr i32 %134, 32
  %136 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %131, i32 %133, i32 %135)
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @IXGBE_VFRDLEN(i32 %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %137, i32 %139, i32 %147)
  %149 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %150 = load %struct.rx_ring*, %struct.rx_ring** %11, align 8
  %151 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @IXGBE_VFRDH(i32 %152)
  %154 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %149, i32 %153, i32 0)
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %156 = load %struct.rx_ring*, %struct.rx_ring** %11, align 8
  %157 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @IXGBE_VFRDT(i32 %158)
  %160 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %155, i32 %159, i32 0)
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @IXGBE_VFSRRCTL(i32 %162)
  %164 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %161, i32 %163)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* @IXGBE_SRRCTL_BSIZEHDR_MASK, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %13, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_MASK, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %13, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %13, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* @IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  %179 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @IXGBE_VFSRRCTL(i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %179, i32 %181, i32 %182)
  %184 = load %struct.rx_ring*, %struct.rx_ring** %11, align 8
  %185 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @IXGBE_VFRDT(i32 %186)
  %188 = load %struct.rx_ring*, %struct.rx_ring** %11, align 8
  %189 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %191 = load i32, i32* @IXGBE_RXDCTL_VME, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* %14, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %14, align 4
  %195 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @IXGBE_VFRXDCTL(i32 %196)
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %195, i32 %197, i32 %198)
  store i32 0, i32* %17, align 4
  br label %200

200:                                              ; preds = %214, %121
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %201, 10
  br i1 %202, label %203, label %217

203:                                              ; preds = %200
  %204 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @IXGBE_VFRXDCTL(i32 %205)
  %207 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %204, i32 %206)
  %208 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  br label %217

212:                                              ; preds = %203
  %213 = call i32 @msec_delay(i32 1)
  br label %214

214:                                              ; preds = %212
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %200

217:                                              ; preds = %211, %200
  %218 = call i32 (...) @wmb()
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %220 = load %struct.rx_ring*, %struct.rx_ring** %11, align 8
  %221 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @IXGBE_VFRDT(i32 %222)
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 1
  %230 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %219, i32 %223, i32 %229)
  br label %231

231:                                              ; preds = %217
  %232 = load i32, i32* %10, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %10, align 4
  %234 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %235 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %234, i32 1
  store %struct.ix_rx_queue* %235, %struct.ix_rx_queue** %7, align 8
  br label %75

236:                                              ; preds = %75
  %237 = load %struct.adapter*, %struct.adapter** %3, align 8
  %238 = getelementptr inbounds %struct.adapter, %struct.adapter* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @ixgbe_mac_X550_vf, align 8
  %243 = icmp sge i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %236
  %245 = load %struct.adapter*, %struct.adapter** %3, align 8
  %246 = call i32 @ixv_initialize_rss_mapping(%struct.adapter* %245)
  br label %247

247:                                              ; preds = %244, %236
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i64 @ixgbevf_rlpml_set_vf(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @IXGBE_VFRDBAL(i32) #1

declare dso_local i32 @IXGBE_VFRDBAH(i32) #1

declare dso_local i32 @IXGBE_VFRDLEN(i32) #1

declare dso_local i32 @IXGBE_VFRDH(i32) #1

declare dso_local i32 @IXGBE_VFRDT(i32) #1

declare dso_local i32 @IXGBE_VFSRRCTL(i32) #1

declare dso_local i32 @ixv_initialize_rss_mapping(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
