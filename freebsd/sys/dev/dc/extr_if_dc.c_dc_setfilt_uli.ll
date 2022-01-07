; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_uli.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_setfilt_uli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, i32, i32, i32, %struct.ifnet*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.ifnet = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, %struct.mbuf**, i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { %struct.dc_desc* }
%struct.dc_desc = type { i8*, i8*, i8* }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@DC_TX_LIST_CNT = common dso_local global i32 0, align 4
@DC_SFRAME_LEN = common dso_local global i32 0, align 4
@DC_TXCTL_SETUP = common dso_local global i32 0, align 4
@DC_TXCTL_TLINK = common dso_local global i32 0, align 4
@DC_FILTER_PERFECT = common dso_local global i32 0, align 4
@DC_TXCTL_FINT = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_RX_PROMISC = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ALLMULTI = common dso_local global i32 0, align 4
@dc_hash_maddr_uli = common dso_local global i32 0, align 4
@DC_ULI_FILTER_NPERF = common dso_local global i32 0, align 4
@DC_NETCFG_TX_ON = common dso_local global i32 0, align 4
@DC_NETCFG_RX_ON = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DC_TXSTAT_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@DC_TXSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_setfilt_uli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_setfilt_uli(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.dc_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %11 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %15, i32 0, i32 5
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %5, align 8
  %18 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %27 = call i32 @DC_INC(i32 %25, i32 %26)
  %28 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %29 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %34 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.dc_desc*, %struct.dc_desc** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %36, i64 %38
  store %struct.dc_desc* %39, %struct.dc_desc** %6, align 8
  %40 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %41 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @DC_SFRAME_LEN, align 4
  %46 = call i32 @bzero(i32* %44, i32 %45)
  %47 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DC_ADDR_LO(i32 %49)
  %51 = call i8* @htole32(i32 %50)
  %52 = load %struct.dc_desc*, %struct.dc_desc** %6, align 8
  %53 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @DC_SFRAME_LEN, align 4
  %55 = load i32, i32* @DC_TXCTL_SETUP, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @DC_TXCTL_TLINK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @DC_FILTER_PERFECT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DC_TXCTL_FINT, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @htole32(i32 %62)
  %64 = load %struct.dc_desc*, %struct.dc_desc** %6, align 8
  %65 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %67 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to %struct.mbuf*
  %71 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %72 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.mbuf**, %struct.mbuf*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %74, i64 %76
  store %struct.mbuf* %70, %struct.mbuf** %77, align 8
  %78 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %79 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %78, i32 0, i32 5
  %80 = load %struct.ifnet*, %struct.ifnet** %79, align 8
  %81 = call i32 @IF_LLADDR(%struct.ifnet* %80)
  %82 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %83 = call i32 @bcopy(i32 %81, i32* %14, i32 %82)
  %84 = getelementptr inbounds i32, i32* %14, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = getelementptr inbounds i32, i32* %14, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = or i32 %86, %88
  %90 = call i8* @DC_SP_MAC(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %94 = getelementptr inbounds i32, i32* %14, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = getelementptr inbounds i32, i32* %14, i64 2
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %96, %98
  %100 = call i8* @DC_SP_MAC(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %104 = getelementptr inbounds i32, i32* %14, i64 5
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = getelementptr inbounds i32, i32* %14, i64 4
  %108 = load i32, i32* %107, align 16
  %109 = or i32 %106, %108
  %110 = call i8* @DC_SP_MAC(i32 %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  %114 = call i8* @DC_SP_MAC(i32 65535)
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  %118 = call i8* @DC_SP_MAC(i32 65535)
  %119 = ptrtoint i8* %118 to i32
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %8, align 8
  store i32 %119, i32* %120, align 4
  %122 = call i8* @DC_SP_MAC(i32 65535)
  %123 = ptrtoint i8* %122 to i32
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  %126 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %127 = load i32, i32* @DC_NETCFG, align 4
  %128 = call i32 @CSR_READ_4(%struct.dc_softc* %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %130 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %131 = or i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %7, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %136 = load i32, i32* @dc_hash_maddr_uli, align 4
  %137 = call i32 @if_foreach_llmaddr(%struct.ifnet* %135, i32 %136, i32** %8)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @DC_ULI_FILTER_NPERF, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %1
  %142 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %167

145:                                              ; preds = %1
  br label %146

146:                                              ; preds = %163, %145
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @DC_ULI_FILTER_NPERF, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %146
  %151 = call i8* @DC_SP_MAC(i32 65535)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %8, align 8
  store i32 %152, i32* %153, align 4
  %155 = call i8* @DC_SP_MAC(i32 65535)
  %156 = ptrtoint i8* %155 to i32
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %8, align 8
  store i32 %156, i32* %157, align 4
  %159 = call i8* @DC_SP_MAC(i32 65535)
  %160 = ptrtoint i8* %159 to i32
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %8, align 8
  store i32 %160, i32* %161, align 4
  br label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %146

166:                                              ; preds = %146
  br label %167

167:                                              ; preds = %166, %141
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %170 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %167
  %175 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %176 = load i32, i32* @DC_NETCFG, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %179 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %180 = or i32 %178, %179
  %181 = xor i32 %180, -1
  %182 = and i32 %177, %181
  %183 = call i32 @CSR_WRITE_4(%struct.dc_softc* %175, i32 %176, i32 %182)
  br label %184

184:                                              ; preds = %174, %167
  %185 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %186 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @IFF_PROMISC, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %184
  %192 = load i32, i32* @DC_NETCFG_RX_PROMISC, align 4
  %193 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %7, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %191, %184
  %198 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %199 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @IFF_ALLMULTI, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load i32, i32* @DC_NETCFG_RX_ALLMULTI, align 4
  %206 = load i32, i32* %7, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %204, %197
  %209 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %210 = load i32, i32* @DC_NETCFG, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %213 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %214 = or i32 %212, %213
  %215 = xor i32 %214, -1
  %216 = and i32 %211, %215
  %217 = call i32 @CSR_WRITE_4(%struct.dc_softc* %209, i32 %210, i32 %216)
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @DC_NETCFG_TX_ON, align 4
  %220 = load i32, i32* @DC_NETCFG_RX_ON, align 4
  %221 = or i32 %219, %220
  %222 = and i32 %218, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %208
  %225 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %226 = load i32, i32* @DC_NETCFG, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @CSR_WRITE_4(%struct.dc_softc* %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %224, %208
  %230 = load i32, i32* @DC_TXSTAT_OWN, align 4
  %231 = call i8* @htole32(i32 %230)
  %232 = load %struct.dc_desc*, %struct.dc_desc** %6, align 8
  %233 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  %234 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %235 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %238 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %241 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %242 = or i32 %240, %241
  %243 = call i32 @bus_dmamap_sync(i32 %236, i32 %239, i32 %242)
  %244 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %245 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %248 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %251 = call i32 @bus_dmamap_sync(i32 %246, i32 %249, i32 %250)
  %252 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %253 = load i32, i32* @DC_TXSTART, align 4
  %254 = call i32 @CSR_WRITE_4(%struct.dc_softc* %252, i32 %253, i32 -1)
  %255 = call i32 @DELAY(i32 1000)
  %256 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %257 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %256, i32 0, i32 0
  store i32 5, i32* %257, align 8
  %258 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %258)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DC_INC(i32, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i8* @htole32(i32) #2

declare dso_local i32 @DC_ADDR_LO(i32) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i8* @DC_SP_MAC(i32) #2

declare dso_local i32 @CSR_READ_4(%struct.dc_softc*, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #2

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
