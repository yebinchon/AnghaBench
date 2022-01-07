; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_initialize_receive_units.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_initialize_receive_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.ixgbe_hw, %struct.ix_rx_queue*, %struct.TYPE_6__* }
%struct.ixgbe_hw = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ix_rx_queue = type { %struct.rx_ring }
%struct.rx_ring = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.ifnet = type { i64, i32 }

@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_BAM = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_FCTRL_DPF = common dso_local global i32 0, align 4
@IXGBE_FCTRL_PMCF = common dso_local global i32 0, align 4
@IXGBE_HLREG0 = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i64 0, align 8
@IXGBE_HLREG0_JUMBOEN = common dso_local global i32 0, align 4
@BSIZEPKT_ROUNDUP = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEHDR_MASK = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_BSIZEPKT_MASK = common dso_local global i32 0, align 4
@IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF = common dso_local global i32 0, align 4
@ixgbe_fc_none = common dso_local global i64 0, align 8
@IXGBE_SRRCTL_DROP_EN = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_TCPHDR = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_UDPHDR = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_IPV4HDR = common dso_local global i32 0, align 4
@IXGBE_PSRTYPE_IPV6HDR = common dso_local global i32 0, align 4
@IXGBE_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_RXCSUM_PCSD = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_RXCSUM_IPPCSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_initialize_receive_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_initialize_receive_units(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ix_rx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rx_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.adapter* @iflib_get_softc(i32 %18)
  store %struct.adapter* %19, %struct.adapter** %3, align 8
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %4, align 8
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 2
  store %struct.ixgbe_hw* %24, %struct.ixgbe_hw** %5, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call %struct.ifnet* @iflib_get_ifp(i32 %25)
  store %struct.ifnet* %26, %struct.ifnet** %6, align 8
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = call i32 @ixgbe_disable_rx(%struct.ixgbe_hw* %27)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %30 = load i32, i32* @IXGBE_FCTRL, align 4
  %31 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @IXGBE_FCTRL_BAM, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load i32, i32* @IXGBE_FCTRL_DPF, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @IXGBE_FCTRL_PMCF, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %42, %1
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %51 = load i32, i32* @IXGBE_FCTRL, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %55 = load i32, i32* @IXGBE_HLREG0, align 4
  %56 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ETHERMTU, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = load i32, i32* @IXGBE_HLREG0_JUMBOEN, align 4
  %64 = load i32, i32* %14, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %14, align 4
  br label %71

66:                                               ; preds = %49
  %67 = load i32, i32* @IXGBE_HLREG0_JUMBOEN, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %14, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %73 = load i32, i32* @IXGBE_HLREG0, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %72, i32 %73, i32 %74)
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @BSIZEPKT_ROUNDUP, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_SHIFT, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = getelementptr inbounds %struct.adapter, %struct.adapter* %83, i32 0, i32 3
  %85 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %84, align 8
  store %struct.ix_rx_queue* %85, %struct.ix_rx_queue** %7, align 8
  br label %86

86:                                               ; preds = %186, %71
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %191

92:                                               ; preds = %86
  %93 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %94 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %93, i32 0, i32 0
  store %struct.rx_ring* %94, %struct.rx_ring** %15, align 8
  %95 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %96 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %16, align 4
  %98 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %99 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %9, align 4
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @IXGBE_RDBAL(i32 %102)
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = and i64 %105, 4294967295
  %107 = trunc i64 %106 to i32
  %108 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %101, i32 %103, i32 %107)
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @IXGBE_RDBAH(i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = ashr i32 %112, 32
  %114 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %109, i32 %111, i32 %113)
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @IXGBE_RDLEN(i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %115, i32 %117, i32 %125)
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @IXGBE_SRRCTL(i32 %128)
  %130 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %127, i32 %129)
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* @IXGBE_SRRCTL_BSIZEHDR_MASK, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* @IXGBE_SRRCTL_BSIZEPKT_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %12, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %12, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* @IXGBE_SRRCTL_DESCTYPE_ADV_ONEBUF, align 4
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %12, align 4
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %161

149:                                              ; preds = %92
  %150 = load %struct.adapter*, %struct.adapter** %3, align 8
  %151 = getelementptr inbounds %struct.adapter, %struct.adapter* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ixgbe_fc_none, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = load i32, i32* @IXGBE_SRRCTL_DROP_EN, align 4
  %159 = load i32, i32* %12, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %12, align 4
  br label %166

161:                                              ; preds = %149, %92
  %162 = load i32, i32* @IXGBE_SRRCTL_DROP_EN, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %12, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %161, %157
  %167 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @IXGBE_SRRCTL(i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %167, i32 %169, i32 %170)
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @IXGBE_RDH(i32 %173)
  %175 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %172, i32 %174, i32 0)
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @IXGBE_RDT(i32 %177)
  %179 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %176, i32 %178, i32 0)
  %180 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %181 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @IXGBE_RDT(i32 %182)
  %184 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %185 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %166
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  %189 = load %struct.ix_rx_queue*, %struct.ix_rx_queue** %7, align 8
  %190 = getelementptr inbounds %struct.ix_rx_queue, %struct.ix_rx_queue* %189, i32 1
  store %struct.ix_rx_queue* %190, %struct.ix_rx_queue** %7, align 8
  br label %86

191:                                              ; preds = %86
  %192 = load %struct.adapter*, %struct.adapter** %3, align 8
  %193 = getelementptr inbounds %struct.adapter, %struct.adapter* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %191
  %200 = load i32, i32* @IXGBE_PSRTYPE_TCPHDR, align 4
  %201 = load i32, i32* @IXGBE_PSRTYPE_UDPHDR, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @IXGBE_PSRTYPE_IPV4HDR, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @IXGBE_PSRTYPE_IPV6HDR, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %17, align 4
  %207 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %208 = call i32 @IXGBE_PSRTYPE(i32 0)
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %199, %191
  %212 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %213 = load i32, i32* @IXGBE_RXCSUM, align 4
  %214 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %212, i32 %213)
  store i32 %214, i32* %13, align 4
  %215 = load %struct.adapter*, %struct.adapter** %3, align 8
  %216 = call i32 @ixgbe_initialize_rss_mapping(%struct.adapter* %215)
  %217 = load %struct.adapter*, %struct.adapter** %3, align 8
  %218 = getelementptr inbounds %struct.adapter, %struct.adapter* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %225

221:                                              ; preds = %211
  %222 = load i32, i32* @IXGBE_RXCSUM_PCSD, align 4
  %223 = load i32, i32* %13, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %221, %211
  %226 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %227 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @IFCAP_RXCSUM, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load i32, i32* @IXGBE_RXCSUM_PCSD, align 4
  %234 = load i32, i32* %13, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %13, align 4
  br label %236

236:                                              ; preds = %232, %225
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* @IXGBE_RXCSUM_PCSD, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %236
  %242 = load i32, i32* @IXGBE_RXCSUM_IPPCSE, align 4
  %243 = load i32, i32* %13, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %241, %236
  %246 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %247 = load i32, i32* @IXGBE_RXCSUM, align 4
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %246, i32 %247, i32 %248)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @ixgbe_disable_rx(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RDBAL(i32) #1

declare dso_local i32 @IXGBE_RDBAH(i32) #1

declare dso_local i32 @IXGBE_RDLEN(i32) #1

declare dso_local i32 @IXGBE_SRRCTL(i32) #1

declare dso_local i32 @IXGBE_RDH(i32) #1

declare dso_local i32 @IXGBE_RDT(i32) #1

declare dso_local i32 @IXGBE_PSRTYPE(i32) #1

declare dso_local i32 @ixgbe_initialize_rss_mapping(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
