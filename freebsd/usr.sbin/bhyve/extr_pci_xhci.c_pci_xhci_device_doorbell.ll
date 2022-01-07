; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_device_doorbell.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_device_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i64 }
%struct.pci_xhci_dev_emu = type { %struct.pci_xhci_dev_ep* }
%struct.pci_xhci_dev_ep = type { i32, i64, %struct.xhci_trb*, %struct.pci_xhci_trb_ring*, %struct.TYPE_2__* }
%struct.xhci_trb = type { i32 }
%struct.pci_xhci_trb_ring = type { i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.xhci_dev_ctx = type { %struct.xhci_endp_ctx* }
%struct.xhci_endp_ctx = type { i32, i32, i32, i32 }
%struct.xhci_stream_ctx = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"pci_xhci doorbell slot %u epid %u stream %u\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"pci_xhci: invalid doorbell slot %u\0D\0A\00", align 1
@XHCI_MAX_ENDPOINTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"pci_xhci: invalid endpoint %u\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"pci_xhci: device doorbell ep[%u] %08x %08x %016lx %08x\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"pci_xhci: invalid stream %u\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"doorbell, stream %u, ccs %lx, trb ccs %x\0D\0A\00", align 1
@XHCI_TRB_3_CYCLE_BIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"doorbell, ccs %lx, trb ccs %x\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"pci_xhci: ring %lx trb[%lx] EP %u is RESERVED?\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_xhci_softc*, i64, i64, i64)* @pci_xhci_device_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_xhci_device_doorbell(%struct.pci_xhci_softc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pci_xhci_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pci_xhci_dev_emu*, align 8
  %10 = alloca %struct.pci_xhci_dev_ep*, align 8
  %11 = alloca %struct.xhci_dev_ctx*, align 8
  %12 = alloca %struct.xhci_endp_ctx*, align 8
  %13 = alloca %struct.pci_xhci_trb_ring*, align 8
  %14 = alloca %struct.xhci_trb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.xhci_stream_ctx*, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @DPRINTF(i8* %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %5, align 8
  %28 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %4
  %32 = load i64, i64* %6, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @DPRINTF(i8* %33)
  br label %225

35:                                               ; preds = %25
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @XHCI_MAX_ENDPOINTS, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %7, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @DPRINTF(i8* %44)
  br label %225

46:                                               ; preds = %38
  %47 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %47, i64 %48)
  store %struct.pci_xhci_dev_emu* %49, %struct.pci_xhci_dev_emu** %9, align 8
  %50 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %9, align 8
  %51 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %50, i32 0, i32 0
  %52 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %52, i64 %53
  store %struct.pci_xhci_dev_ep* %54, %struct.pci_xhci_dev_ep** %10, align 8
  %55 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc* %55, i64 %56)
  store %struct.xhci_dev_ctx* %57, %struct.xhci_dev_ctx** %11, align 8
  %58 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %11, align 8
  %59 = icmp ne %struct.xhci_dev_ctx* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %225

61:                                               ; preds = %46
  %62 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %11, align 8
  %63 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %62, i32 0, i32 0
  %64 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %64, i64 %65
  store %struct.xhci_endp_ctx* %66, %struct.xhci_endp_ctx** %12, align 8
  store %struct.pci_xhci_trb_ring* null, %struct.pci_xhci_trb_ring** %13, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %69 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %72 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %75 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %78 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @DPRINTF(i8* %81)
  %83 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %84 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %61
  br label %225

88:                                               ; preds = %61
  %89 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %90 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %5, align 8
  %97 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %9, align 8
  %98 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %99 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @pci_xhci_try_usb_xfer(%struct.pci_xhci_softc* %96, %struct.pci_xhci_dev_emu* %97, %struct.pci_xhci_dev_ep* %98, %struct.xhci_endp_ctx* %99, i64 %100, i64 %101)
  br label %225

103:                                              ; preds = %88
  %104 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %105 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %167

109:                                              ; preds = %103
  %110 = load i64, i64* %8, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* %8, align 8
  %114 = icmp eq i64 %113, 65534
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %8, align 8
  %117 = icmp eq i64 %116, 65535
  br i1 %117, label %118, label %122

118:                                              ; preds = %115, %112, %109
  %119 = load i64, i64* %8, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @DPRINTF(i8* %120)
  br label %225

122:                                              ; preds = %115
  store %struct.xhci_stream_ctx* null, %struct.xhci_stream_ctx** %17, align 8
  %123 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %5, align 8
  %124 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @pci_xhci_find_stream(%struct.pci_xhci_softc* %123, %struct.xhci_endp_ctx* %124, i64 %125, %struct.xhci_stream_ctx** %17)
  %127 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %17, align 8
  %128 = icmp eq %struct.xhci_stream_ctx* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i64, i64* %8, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 @DPRINTF(i8* %131)
  br label %225

133:                                              ; preds = %122
  %134 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %135 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %134, i32 0, i32 3
  %136 = load %struct.pci_xhci_trb_ring*, %struct.pci_xhci_trb_ring** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds %struct.pci_xhci_trb_ring, %struct.pci_xhci_trb_ring* %136, i64 %137
  store %struct.pci_xhci_trb_ring* %138, %struct.pci_xhci_trb_ring** %13, align 8
  %139 = load %struct.pci_xhci_trb_ring*, %struct.pci_xhci_trb_ring** %13, align 8
  %140 = getelementptr inbounds %struct.pci_xhci_trb_ring, %struct.pci_xhci_trb_ring* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %15, align 4
  %142 = load %struct.pci_xhci_trb_ring*, %struct.pci_xhci_trb_ring** %13, align 8
  %143 = getelementptr inbounds %struct.pci_xhci_trb_ring, %struct.pci_xhci_trb_ring* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %16, align 8
  %145 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %5, align 8
  %146 = load %struct.pci_xhci_trb_ring*, %struct.pci_xhci_trb_ring** %13, align 8
  %147 = getelementptr inbounds %struct.pci_xhci_trb_ring, %struct.pci_xhci_trb_ring* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = and i64 %149, -16
  %151 = trunc i64 %150 to i32
  %152 = call %struct.xhci_trb* @XHCI_GADDR(%struct.pci_xhci_softc* %145, i32 %151)
  store %struct.xhci_trb* %152, %struct.xhci_trb** %14, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %155 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.xhci_trb*, %struct.xhci_trb** %14, align 8
  %160 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %163 = and i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = inttoptr i64 %164 to i8*
  %166 = call i32 @DPRINTF(i8* %165)
  br label %197

167:                                              ; preds = %103
  %168 = load i64, i64* %8, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i64, i64* %8, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = call i32 @DPRINTF(i8* %172)
  br label %225

174:                                              ; preds = %167
  %175 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %176 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %15, align 4
  %178 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %179 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %16, align 8
  %181 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %182 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %181, i32 0, i32 2
  %183 = load %struct.xhci_trb*, %struct.xhci_trb** %182, align 8
  store %struct.xhci_trb* %183, %struct.xhci_trb** %14, align 8
  %184 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %185 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %188 = and i32 %186, %187
  %189 = load %struct.xhci_trb*, %struct.xhci_trb** %14, align 8
  %190 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %193 = and i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i8*
  %196 = call i32 @DPRINTF(i8* %195)
  br label %197

197:                                              ; preds = %174, %133
  %198 = load %struct.xhci_trb*, %struct.xhci_trb** %14, align 8
  %199 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @XHCI_TRB_3_TYPE_GET(i32 %200)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %205 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %208 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i64, i64* %7, align 8
  %211 = inttoptr i64 %210 to i8*
  %212 = call i32 @DPRINTF(i8* %211)
  br label %225

213:                                              ; preds = %197
  %214 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %5, align 8
  %215 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %9, align 8
  %216 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %10, align 8
  %217 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %12, align 8
  %218 = load %struct.xhci_trb*, %struct.xhci_trb** %14, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* %7, align 8
  %221 = load i32, i32* %15, align 4
  %222 = load i64, i64* %16, align 8
  %223 = load i64, i64* %8, align 8
  %224 = call i32 @pci_xhci_handle_transfer(%struct.pci_xhci_softc* %214, %struct.pci_xhci_dev_emu* %215, %struct.pci_xhci_dev_ep* %216, %struct.xhci_endp_ctx* %217, %struct.xhci_trb* %218, i64 %219, i64 %220, i32 %221, i64 %222, i64 %223)
  br label %225

225:                                              ; preds = %213, %203, %170, %129, %118, %95, %87, %60, %42, %31
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i64) #1

declare dso_local %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc*, i64) #1

declare dso_local i32 @pci_xhci_try_usb_xfer(%struct.pci_xhci_softc*, %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_ep*, %struct.xhci_endp_ctx*, i64, i64) #1

declare dso_local i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32) #1

declare dso_local i32 @pci_xhci_find_stream(%struct.pci_xhci_softc*, %struct.xhci_endp_ctx*, i64, %struct.xhci_stream_ctx**) #1

declare dso_local %struct.xhci_trb* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i64 @XHCI_TRB_3_TYPE_GET(i32) #1

declare dso_local i32 @pci_xhci_handle_transfer(%struct.pci_xhci_softc*, %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_ep*, %struct.xhci_endp_ctx*, %struct.xhci_trb*, i64, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
