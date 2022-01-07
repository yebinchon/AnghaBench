; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_set_tr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_set_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.xhci_trb = type { i32, i32, i32 }
%struct.pci_xhci_dev_emu = type { %struct.pci_xhci_dev_ep*, %struct.xhci_dev_ctx* }
%struct.pci_xhci_dev_ep = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xhci_dev_ctx = type { %struct.xhci_endp_ctx* }
%struct.xhci_endp_ctx = type { i32, i32 }
%struct.xhci_stream_ctx = type { i32 }

@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"pci_xhci set_tr: new-tr x%016lx, SCT %u DCS %u\0D\0A                 stream-id %u, slot %u, epid %u, C %u\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"pci_xhci: set_tr_deq: invalid epid %u\0D\0A\00", align 1
@XHCI_TRB_ERROR_TRB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"pci_xhci cmd set_tr invalid state %x\0D\0A\00", align 1
@XHCI_TRB_ERROR_CONTEXT_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"pci_xhci cmd set_tr streamid %x != 0\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"pci_xhci set_tr first TRB:\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, i32, %struct.xhci_trb*)* @pci_xhci_cmd_set_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_cmd_set_tr(%struct.pci_xhci_softc* %0, i32 %1, %struct.xhci_trb* %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_trb*, align 8
  %7 = alloca %struct.pci_xhci_dev_emu*, align 8
  %8 = alloca %struct.pci_xhci_dev_ep*, align 8
  %9 = alloca %struct.xhci_dev_ctx*, align 8
  %10 = alloca %struct.xhci_endp_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xhci_stream_ctx*, align 8
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xhci_trb* %2, %struct.xhci_trb** %6, align 8
  %15 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %16, i32 %17)
  store %struct.pci_xhci_dev_emu* %18, %struct.pci_xhci_dev_emu** %7, align 8
  %19 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %20 = icmp ne %struct.pci_xhci_dev_emu* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %24 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, -16
  %27 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %28 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 1
  %31 = and i32 %30, 7
  %32 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %33 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %37 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 65535
  %41 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %42 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %43)
  %45 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %46 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @XHCI_TRB_3_EP_GET(i32 %47)
  %49 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %50 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @DPRINTF(i8* %54)
  %56 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %57 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @XHCI_TRB_3_EP_GET(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %3
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 31
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %3
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @DPRINTF(i8* %68)
  %70 = load i32, i32* @XHCI_TRB_ERROR_TRB, align 4
  store i32 %70, i32* %11, align 4
  br label %213

71:                                               ; preds = %62
  %72 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %73 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %72, i32 0, i32 1
  %74 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %73, align 8
  store %struct.xhci_dev_ctx* %74, %struct.xhci_dev_ctx** %9, align 8
  %75 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %76 = icmp ne %struct.xhci_dev_ctx* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %80 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %79, i32 0, i32 0
  %81 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %81, i64 %83
  store %struct.xhci_endp_ctx* %84, %struct.xhci_endp_ctx** %10, align 8
  %85 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %86 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %85, i32 0, i32 0
  %87 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %87, i64 %89
  store %struct.pci_xhci_dev_ep* %90, %struct.pci_xhci_dev_ep** %8, align 8
  %91 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @XHCI_EPCTX_0_EPSTATE_GET(i32 %93)
  switch i32 %94, label %96 [
    i32 128, label %95
    i32 129, label %95
  ]

95:                                               ; preds = %71, %71
  br label %105

96:                                               ; preds = %71
  %97 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %98 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @XHCI_EPCTX_0_EPSTATE_GET(i32 %99)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @DPRINTF(i8* %102)
  %104 = load i32, i32* @XHCI_TRB_ERROR_CONTEXT_STATE, align 4
  store i32 %104, i32* %11, align 4
  br label %213

105:                                              ; preds = %95
  %106 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %107 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @XHCI_TRB_2_STREAM_GET(i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %111 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32 %112)
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %162

115:                                              ; preds = %105
  store %struct.xhci_stream_ctx* null, %struct.xhci_stream_ctx** %14, align 8
  %116 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %117 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @pci_xhci_find_stream(%struct.pci_xhci_softc* %116, %struct.xhci_endp_ctx* %117, i32 %118, %struct.xhci_stream_ctx** %14)
  store i32 %119, i32* %11, align 4
  %120 = load %struct.xhci_stream_ctx*, %struct.xhci_stream_ctx** %14, align 8
  %121 = icmp ne %struct.xhci_stream_ctx* %120, null
  br i1 %121, label %122, label %161

122:                                              ; preds = %115
  %123 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %124 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %123, i32 0, i32 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = icmp ne %struct.TYPE_3__* %125, null
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %130 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %133 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %132, i32 0, i32 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store i32 %131, i32* %138, align 4
  %139 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %140 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, -16
  %143 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %144 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %143, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i32 %142, i32* %149, align 4
  %150 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %151 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @XHCI_EPCTX_2_DCS_GET(i32 %152)
  %154 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %155 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i32 %153, i32* %160, align 4
  br label %161

161:                                              ; preds = %122, %115
  br label %205

162:                                              ; preds = %105
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = call i32 @DPRINTF(i8* %168)
  br label %170

170:                                              ; preds = %165, %162
  %171 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %172 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = and i64 %174, -16
  %176 = trunc i64 %175 to i32
  %177 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %178 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %180 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = and i64 %182, -16
  %184 = trunc i64 %183 to i32
  %185 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %186 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %188 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 1
  %191 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %192 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %194 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %195 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @XHCI_GADDR(%struct.pci_xhci_softc* %193, i32 %196)
  %198 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %199 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = call i32 @DPRINTF(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %201 = load %struct.pci_xhci_dev_ep*, %struct.pci_xhci_dev_ep** %8, align 8
  %202 = getelementptr inbounds %struct.pci_xhci_dev_ep, %struct.pci_xhci_dev_ep* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @pci_xhci_dump_trb(i32 %203)
  br label %205

205:                                              ; preds = %170, %161
  %206 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %207 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, -8
  %210 = or i32 %209, 128
  %211 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %212 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %205, %96, %65
  %214 = load i32, i32* %11, align 4
  ret i32 %214
}

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @XHCI_TRB_3_SLOT_GET(i32) #1

declare dso_local i32 @XHCI_TRB_3_EP_GET(i32) #1

declare dso_local i32 @XHCI_EPCTX_0_EPSTATE_GET(i32) #1

declare dso_local i32 @XHCI_TRB_2_STREAM_GET(i32) #1

declare dso_local i64 @XHCI_EPCTX_0_MAXP_STREAMS_GET(i32) #1

declare dso_local i32 @pci_xhci_find_stream(%struct.pci_xhci_softc*, %struct.xhci_endp_ctx*, i32, %struct.xhci_stream_ctx**) #1

declare dso_local i32 @XHCI_EPCTX_2_DCS_GET(i32) #1

declare dso_local i32 @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @pci_xhci_dump_trb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
