; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_address_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_address_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.xhci_trb = type { i32 }
%struct.pci_xhci_dev_emu = type { i32, i32, %struct.TYPE_6__*, %struct.xhci_dev_ctx*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 (i32)* }
%struct.xhci_dev_ctx = type { %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.xhci_input_dev_ctx = type { %struct.TYPE_4__, %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx }
%struct.TYPE_4__ = type { i64, i32 }
%struct.xhci_endp_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [132 x i8] c"pci_xhci: address device, input ctl: D 0x%08x A 0x%08x,\0D\0A          slot %08x %08x %08x %08x\0D\0A          ep0  %08x %08x %016lx %08x\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"pci_xhci: address device, input ctl invalid\0D\0A\00", align 1
@XHCI_TRB_ERROR_TRB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"pci_xhci: address device, dev ctx\0D\0A          slot %08x %08x %08x %08x\0D\0A\00", align 1
@XHCI_TRB_ERROR_ENDP_NOT_ON = common dso_local global i32 0, align 4
@XHCI_ST_SLCTX_ADDRESSED = common dso_local global i32 0, align 4
@XHCI_ST_EPCTX_RUNNING = common dso_local global i32 0, align 4
@XHCI_ST_ADDRESSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [113 x i8] c"pci_xhci: address device, output ctx\0D\0A          slot %08x %08x %08x %08x\0D\0A          ep0  %08x %08x %016lx %08x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, i32, %struct.xhci_trb*)* @pci_xhci_cmd_address_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_cmd_address_device(%struct.pci_xhci_softc* %0, i32 %1, %struct.xhci_trb* %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_trb*, align 8
  %7 = alloca %struct.pci_xhci_dev_emu*, align 8
  %8 = alloca %struct.xhci_input_dev_ctx*, align 8
  %9 = alloca %struct.xhci_slot_ctx*, align 8
  %10 = alloca %struct.xhci_dev_ctx*, align 8
  %11 = alloca %struct.xhci_endp_ctx*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xhci_trb* %2, %struct.xhci_trb** %6, align 8
  %13 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %14 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %15 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, -16
  %19 = trunc i64 %18 to i32
  %20 = call %struct.xhci_input_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc* %13, i32 %19)
  store %struct.xhci_input_dev_ctx* %20, %struct.xhci_input_dev_ctx** %8, align 8
  %21 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %21, i32 0, i32 2
  store %struct.xhci_slot_ctx* %22, %struct.xhci_slot_ctx** %9, align 8
  %23 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %23, i32 0, i32 1
  %25 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %24, align 8
  %26 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %25, i64 1
  %27 = bitcast %struct.xhci_slot_ctx* %26 to %struct.xhci_endp_ctx*
  store %struct.xhci_endp_ctx* %27, %struct.xhci_endp_ctx** %11, align 8
  %28 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %8, align 8
  %34 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %50 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %53 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %56 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %59 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @DPRINTF(i8* %62)
  %64 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %3
  %70 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 3
  %75 = icmp ne i32 %74, 3
  br i1 %75, label %76, label %79

76:                                               ; preds = %69, %3
  %77 = call i32 @DPRINTF(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @XHCI_TRB_ERROR_TRB, align 4
  store i32 %78, i32* %12, align 4
  br label %205

79:                                               ; preds = %69
  %80 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc* %80, i32 %81)
  store %struct.xhci_dev_ctx* %82, %struct.xhci_dev_ctx** %10, align 8
  %83 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %84 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %88 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @DPRINTF(i8* %100)
  %102 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %102, i32 %103)
  store %struct.pci_xhci_dev_emu* %104, %struct.pci_xhci_dev_emu** %7, align 8
  %105 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %106 = icmp ne %struct.pci_xhci_dev_emu* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %111 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %114 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %115 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %114, i32 0, i32 3
  store %struct.xhci_dev_ctx* %113, %struct.xhci_dev_ctx** %115, align 8
  %116 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %117 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64 (i32)*, i64 (i32)** %119, align 8
  %121 = icmp eq i64 (i32)* %120, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %79
  %123 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %124 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64 (i32)*, i64 (i32)** %126, align 8
  %128 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %129 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 %127(i32 %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122, %79
  %134 = load i32, i32* @XHCI_TRB_ERROR_ENDP_NOT_ON, align 4
  store i32 %134, i32* %12, align 4
  br label %205

135:                                              ; preds = %122
  %136 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %137 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %136, i32 0, i32 0
  %138 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %9, align 8
  %139 = call i32 @memcpy(%struct.xhci_slot_ctx* %137, %struct.xhci_slot_ctx* %138, i32 32)
  %140 = load i32, i32* @XHCI_ST_SLCTX_ADDRESSED, align 4
  %141 = call i32 @XHCI_SCTX_3_SLOT_STATE_SET(i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @XHCI_SCTX_3_DEV_ADDR_SET(i32 %142)
  %144 = or i32 %141, %143
  %145 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %146 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %149 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %148, i32 0, i32 1
  %150 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %149, align 8
  %151 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %150, i64 1
  %152 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %153 = bitcast %struct.xhci_endp_ctx* %152 to %struct.xhci_slot_ctx*
  %154 = call i32 @memcpy(%struct.xhci_slot_ctx* %151, %struct.xhci_slot_ctx* %153, i32 32)
  %155 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %156 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %155, i32 0, i32 1
  %157 = load %struct.xhci_slot_ctx*, %struct.xhci_slot_ctx** %156, align 8
  %158 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %157, i64 1
  %159 = bitcast %struct.xhci_slot_ctx* %158 to %struct.xhci_endp_ctx*
  store %struct.xhci_endp_ctx* %159, %struct.xhci_endp_ctx** %11, align 8
  %160 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %161 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, -8
  %164 = load i32, i32* @XHCI_ST_EPCTX_RUNNING, align 4
  %165 = call i32 @XHCI_EPCTX_0_EPSTATE_SET(i32 %164)
  %166 = or i32 %163, %165
  %167 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %168 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %170 = call i32 @pci_xhci_init_ep(%struct.pci_xhci_dev_emu* %169, i32 1)
  %171 = load i32, i32* @XHCI_ST_ADDRESSED, align 4
  %172 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %7, align 8
  %173 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %175 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %179 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %183 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %10, align 8
  %187 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.xhci_slot_ctx, %struct.xhci_slot_ctx* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %191 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %194 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %197 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %200 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 @DPRINTF(i8* %203)
  br label %205

205:                                              ; preds = %135, %133, %76
  %206 = load i32, i32* %12, align 4
  ret i32 %206
}

declare dso_local %struct.xhci_input_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc*, i32) #1

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.xhci_slot_ctx*, %struct.xhci_slot_ctx*, i32) #1

declare dso_local i32 @XHCI_SCTX_3_SLOT_STATE_SET(i32) #1

declare dso_local i32 @XHCI_SCTX_3_DEV_ADDR_SET(i32) #1

declare dso_local i32 @XHCI_EPCTX_0_EPSTATE_SET(i32) #1

declare dso_local i32 @pci_xhci_init_ep(%struct.pci_xhci_dev_emu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
