; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_ether = type { i32 }
%struct.axe_softc = type { i32*, i32, i32*, i32 }
%struct.ifnet = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AXE_178_CMD_WRITE_NODEID = common dso_local global i32 0, align 4
@AXE_178_CMD_WRITE_IPG012 = common dso_local global i32 0, align 4
@AXE_172_CMD_WRITE_NODEID = common dso_local global i32 0, align 4
@AXE_172_CMD_WRITE_IPG0 = common dso_local global i32 0, align 4
@AXE_172_CMD_WRITE_IPG1 = common dso_local global i32 0, align 4
@AXE_172_CMD_WRITE_IPG2 = common dso_local global i32 0, align 4
@AXE_FLAG_STD_FRAME = common dso_local global i32 0, align 4
@AXE_FLAG_CSUM_FRAME = common dso_local global i32 0, align 4
@AXE_FLAG_772B = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@AXE_CSUM_HDR_LEN_MASK = common dso_local global i32 0, align 4
@AXE_HDR_LEN_MASK = common dso_local global i32 0, align 4
@AXE_772B_CMD_RXCTL_WRITE_CFG = common dso_local global i32 0, align 4
@ax88772b_mfb_table = common dso_local global %struct.TYPE_2__* null, align 8
@AX88772B_MFB_16K = common dso_local global i64 0, align 8
@AXE_RXCMD_MULTICAST = common dso_local global i32 0, align 4
@AXE_RXCMD_ENABLE = common dso_local global i32 0, align 4
@AXE_772B_RXCMD_HDR_TYPE_1 = common dso_local global i32 0, align 4
@AXE_772B_RXCMD_IPHDR_ALIGN = common dso_local global i32 0, align 4
@AXE_178_RXCMD_MFB_16384 = common dso_local global i32 0, align 4
@AXE_172_RXCMD_UNICAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@AXE_RXCMD_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@AXE_RXCMD_BROADCAST = common dso_local global i32 0, align 4
@AXE_CMD_RXCTL_WRITE = common dso_local global i32 0, align 4
@AXE_BULK_DT_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @axe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_init(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.axe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.axe_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.axe_softc* %7, %struct.axe_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @AXE_LOCK_ASSERT(%struct.axe_softc* %10, i32 %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %233

20:                                               ; preds = %1
  %21 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %22 = call i32 @axe_stop(%struct.usb_ether* %21)
  %23 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %24 = call i32 @axe_reset(%struct.axe_softc* %23)
  %25 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %26 = call i64 @AXE_IS_178_FAMILY(%struct.axe_softc* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %20
  %29 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %30 = load i32, i32* @AXE_178_CMD_WRITE_NODEID, align 4
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32* @IF_LLADDR(%struct.ifnet* %31)
  %33 = call i32 @axe_cmd(%struct.axe_softc* %29, i32 %30, i32 0, i32 0, i32* %32)
  %34 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %35 = load i32, i32* @AXE_178_CMD_WRITE_IPG012, align 4
  %36 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %37 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %42 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %48 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %46, %51
  %53 = call i32 @axe_cmd(%struct.axe_softc* %34, i32 %35, i32 %40, i32 %52, i32* null)
  br label %84

54:                                               ; preds = %20
  %55 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %56 = load i32, i32* @AXE_172_CMD_WRITE_NODEID, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = call i32* @IF_LLADDR(%struct.ifnet* %57)
  %59 = call i32 @axe_cmd(%struct.axe_softc* %55, i32 %56, i32 0, i32 0, i32* %58)
  %60 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %61 = load i32, i32* @AXE_172_CMD_WRITE_IPG0, align 4
  %62 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %63 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @axe_cmd(%struct.axe_softc* %60, i32 %61, i32 0, i32 %66, i32* null)
  %68 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %69 = load i32, i32* @AXE_172_CMD_WRITE_IPG1, align 4
  %70 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %71 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @axe_cmd(%struct.axe_softc* %68, i32 %69, i32 0, i32 %74, i32* null)
  %76 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %77 = load i32, i32* @AXE_172_CMD_WRITE_IPG2, align 4
  %78 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %79 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @axe_cmd(%struct.axe_softc* %76, i32 %77, i32 0, i32 %82, i32* null)
  br label %84

84:                                               ; preds = %54, %28
  %85 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %86 = call i64 @AXE_IS_178_FAMILY(%struct.axe_softc* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %129

88:                                               ; preds = %84
  %89 = load i32, i32* @AXE_FLAG_STD_FRAME, align 4
  %90 = load i32, i32* @AXE_FLAG_CSUM_FRAME, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %94 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %98 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AXE_FLAG_772B, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %88
  %104 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %105 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IFCAP_RXCSUM, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load i32, i32* @AXE_CSUM_HDR_LEN_MASK, align 4
  %112 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %113 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @AXE_FLAG_CSUM_FRAME, align 4
  %115 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %116 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %128

119:                                              ; preds = %103, %88
  %120 = load i32, i32* @AXE_HDR_LEN_MASK, align 4
  %121 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %122 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @AXE_FLAG_STD_FRAME, align 4
  %124 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %125 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %119, %110
  br label %129

129:                                              ; preds = %128, %84
  %130 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %131 = call i32 @axe_csum_cfg(%struct.usb_ether* %130)
  %132 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %133 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @AXE_FLAG_772B, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %129
  %139 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %140 = load i32, i32* @AXE_772B_CMD_RXCTL_WRITE_CFG, align 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ax88772b_mfb_table, align 8
  %142 = load i64, i64* @AX88772B_MFB_16K, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ax88772b_mfb_table, align 8
  %147 = load i64, i64* @AX88772B_MFB_16K, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @axe_cmd(%struct.axe_softc* %139, i32 %140, i32 %145, i32 %150, i32* null)
  br label %152

152:                                              ; preds = %138, %129
  %153 = load i32, i32* @AXE_RXCMD_MULTICAST, align 4
  %154 = load i32, i32* @AXE_RXCMD_ENABLE, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %5, align 4
  %156 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %157 = call i64 @AXE_IS_178_FAMILY(%struct.axe_softc* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %186

159:                                              ; preds = %152
  %160 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %161 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @AXE_FLAG_772B, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %159
  %167 = load i32, i32* @AXE_772B_RXCMD_HDR_TYPE_1, align 4
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %5, align 4
  %170 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %171 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IFCAP_RXCSUM, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load i32, i32* @AXE_772B_RXCMD_IPHDR_ALIGN, align 4
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %176, %166
  br label %185

181:                                              ; preds = %159
  %182 = load i32, i32* @AXE_178_RXCMD_MFB_16384, align 4
  %183 = load i32, i32* %5, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181, %180
  br label %190

186:                                              ; preds = %152
  %187 = load i32, i32* @AXE_172_RXCMD_UNICAST, align 4
  %188 = load i32, i32* %5, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %186, %185
  %191 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @IFF_PROMISC, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i32, i32* @AXE_RXCMD_PROMISC, align 4
  %199 = load i32, i32* %5, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %197, %190
  %202 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %203 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @IFF_BROADCAST, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load i32, i32* @AXE_RXCMD_BROADCAST, align 4
  %210 = load i32, i32* %5, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %208, %201
  %213 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %214 = load i32, i32* @AXE_CMD_RXCTL_WRITE, align 4
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @axe_cmd(%struct.axe_softc* %213, i32 %214, i32 0, i32 %215, i32* null)
  %217 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %218 = call i32 @axe_setmulti(%struct.usb_ether* %217)
  %219 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %220 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @AXE_BULK_DT_WR, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @usbd_xfer_set_stall(i32 %224)
  %226 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %227 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %232 = call i32 @axe_ifmedia_upd(%struct.ifnet* %231)
  br label %233

233:                                              ; preds = %212, %19
  ret void
}

declare dso_local %struct.axe_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @AXE_LOCK_ASSERT(%struct.axe_softc*, i32) #1

declare dso_local i32 @axe_stop(%struct.usb_ether*) #1

declare dso_local i32 @axe_reset(%struct.axe_softc*) #1

declare dso_local i64 @AXE_IS_178_FAMILY(%struct.axe_softc*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @axe_csum_cfg(%struct.usb_ether*) #1

declare dso_local i32 @axe_setmulti(%struct.usb_ether*) #1

declare dso_local i32 @usbd_xfer_set_stall(i32) #1

declare dso_local i32 @axe_ifmedia_upd(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
