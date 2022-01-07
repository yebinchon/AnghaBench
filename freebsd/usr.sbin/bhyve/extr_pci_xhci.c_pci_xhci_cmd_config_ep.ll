; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_config_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_cmd_config_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { i32 }
%struct.xhci_trb = type { i32, i32 }
%struct.xhci_input_dev_ctx = type { %struct.TYPE_9__, %struct.xhci_endp_ctx*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.xhci_endp_ctx = type { i8*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.pci_xhci_dev_emu = type { i64, %struct.xhci_dev_ctx*, %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.xhci_dev_ctx = type { %struct.TYPE_10__, %struct.xhci_endp_ctx* }
%struct.TYPE_10__ = type { i8*, i32, i32, i8* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i32)* }

@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pci_xhci config_ep slot %u\0D\0A\00", align 1
@XHCI_TRB_3_DCEP_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"pci_xhci config_ep - deconfigure ep slot %u\0D\0A\00", align 1
@XHCI_ST_ADDRESSED = common dso_local global i64 0, align 8
@XHCI_ST_SLCTX_ADDRESSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"pci_xhci: config_ep slotstate x%x != addressed\0D\0A\00", align 1
@XHCI_TRB_ERROR_SLOT_NOT_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"pci_xhci: config_ep inputctx: D:x%08x A:x%08x 7:x%08x\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c" config ep - dropping ep %d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c" enable ep[%d]  %08x %08x %016lx %08x\0D\0A\00", align 1
@XHCI_ST_EPCTX_RUNNING = common dso_local global i32 0, align 4
@XHCI_ST_SLCTX_CONFIGURED = common dso_local global i32 0, align 4
@XHCI_ST_CONFIGURED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [69 x i8] c"EP configured; slot %u [0]=0x%08x [1]=0x%08x [2]=0x%08x [3]=0x%08x\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*, i32, %struct.xhci_trb*)* @pci_xhci_cmd_config_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_cmd_config_ep(%struct.pci_xhci_softc* %0, i32 %1, %struct.xhci_trb* %2) #0 {
  %4 = alloca %struct.pci_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_trb*, align 8
  %7 = alloca %struct.xhci_input_dev_ctx*, align 8
  %8 = alloca %struct.pci_xhci_dev_emu*, align 8
  %9 = alloca %struct.xhci_dev_ctx*, align 8
  %10 = alloca %struct.xhci_endp_ctx*, align 8
  %11 = alloca %struct.xhci_endp_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xhci_trb* %2, %struct.xhci_trb** %6, align 8
  %14 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DPRINTF(i8* %17)
  %19 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc* %19, i32 %20)
  store %struct.pci_xhci_dev_emu* %21, %struct.pci_xhci_dev_emu** %8, align 8
  %22 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %23 = icmp ne %struct.pci_xhci_dev_emu* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %27 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @XHCI_TRB_3_DCEP_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %92

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @DPRINTF(i8* %35)
  %37 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %38 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = icmp ne i32 (i32)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %45 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %44, i32 0, i32 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %50 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 %51)
  br label %53

53:                                               ; preds = %43, %32
  %54 = load i64, i64* @XHCI_ST_ADDRESSED, align 8
  %55 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %56 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %58 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc* %60, i32 %61)
  store %struct.xhci_dev_ctx* %62, %struct.xhci_dev_ctx** %9, align 8
  %63 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @FIELD_REPLACE(i8* %66, i32 1, i32 31, i32 27)
  %68 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %69 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  store i8* %67, i8** %70, align 8
  %71 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %72 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @XHCI_ST_SLCTX_ADDRESSED, align 4
  %76 = call i8* @FIELD_REPLACE(i8* %74, i32 %75, i32 31, i32 27)
  %77 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %78 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  store i32 2, i32* %13, align 4
  br label %80

80:                                               ; preds = %87, %53
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 32
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @pci_xhci_disable_ep(%struct.pci_xhci_dev_emu* %84, i32 %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %80

90:                                               ; preds = %80
  %91 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %91, i32* %12, align 4
  br label %250

92:                                               ; preds = %3
  %93 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %94 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @XHCI_ST_ADDRESSED, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %100 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @DPRINTF(i8* %102)
  %104 = load i32, i32* @XHCI_TRB_ERROR_SLOT_NOT_ON, align 4
  store i32 %104, i32* %12, align 4
  br label %250

105:                                              ; preds = %92
  %106 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %4, align 8
  %107 = load %struct.xhci_trb*, %struct.xhci_trb** %6, align 8
  %108 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = and i64 %110, -16
  %112 = trunc i64 %111 to i32
  %113 = call %struct.xhci_input_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc* %106, i32 %112)
  store %struct.xhci_input_dev_ctx* %113, %struct.xhci_input_dev_ctx** %7, align 8
  %114 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %115 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %114, i32 0, i32 1
  %116 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %115, align 8
  store %struct.xhci_dev_ctx* %116, %struct.xhci_dev_ctx** %9, align 8
  %117 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %118 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %122 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %126 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @DPRINTF(i8* %130)
  store i32 2, i32* %13, align 4
  br label %132

132:                                              ; preds = %204, %105
  %133 = load i32, i32* %13, align 4
  %134 = icmp sle i32 %133, 31
  br i1 %134, label %135, label %207

135:                                              ; preds = %132
  %136 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %137 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %136, i32 0, i32 1
  %138 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %138, i64 %140
  store %struct.xhci_endp_ctx* %141, %struct.xhci_endp_ctx** %10, align 8
  %142 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %143 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @XHCI_INCTX_0_DROP_MASK(i32 %146)
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %135
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = call i32 @DPRINTF(i8* %153)
  %155 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @pci_xhci_disable_ep(%struct.pci_xhci_dev_emu* %155, i32 %156)
  br label %158

158:                                              ; preds = %150, %135
  %159 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %160 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @XHCI_INCTX_1_ADD_MASK(i32 %163)
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %203

167:                                              ; preds = %158
  %168 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %169 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %168, i32 0, i32 1
  %170 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %170, i64 %172
  store %struct.xhci_endp_ctx* %173, %struct.xhci_endp_ctx** %11, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %176 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %179 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %182 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %185 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = call i32 @DPRINTF(i8* %188)
  %190 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %191 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %11, align 8
  %192 = call i32 @memcpy(%struct.xhci_endp_ctx* %190, %struct.xhci_endp_ctx* %191, i32 24)
  %193 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @pci_xhci_init_ep(%struct.pci_xhci_dev_emu* %193, i32 %194)
  %196 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %197 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* @XHCI_ST_EPCTX_RUNNING, align 4
  %200 = call i8* @FIELD_REPLACE(i8* %198, i32 %199, i32 7, i32 0)
  %201 = load %struct.xhci_endp_ctx*, %struct.xhci_endp_ctx** %10, align 8
  %202 = getelementptr inbounds %struct.xhci_endp_ctx, %struct.xhci_endp_ctx* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  br label %203

203:                                              ; preds = %167, %158
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %132

207:                                              ; preds = %132
  %208 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %209 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* @XHCI_ST_SLCTX_CONFIGURED, align 4
  %213 = call i8* @FIELD_REPLACE(i8* %211, i32 %212, i32 31, i32 27)
  %214 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %215 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  store i8* %213, i8** %216, align 8
  %217 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %218 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 3
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.xhci_input_dev_ctx*, %struct.xhci_input_dev_ctx** %7, align 8
  %222 = getelementptr inbounds %struct.xhci_input_dev_ctx, %struct.xhci_input_dev_ctx* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i8* @FIELD_COPY(i8* %220, i32 %224, i32 31, i32 27)
  %226 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %227 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 3
  store i8* %225, i8** %228, align 8
  %229 = load i64, i64* @XHCI_ST_CONFIGURED, align 8
  %230 = load %struct.pci_xhci_dev_emu*, %struct.pci_xhci_dev_emu** %8, align 8
  %231 = getelementptr inbounds %struct.pci_xhci_dev_emu, %struct.pci_xhci_dev_emu* %230, i32 0, i32 0
  store i64 %229, i64* %231, align 8
  %232 = load i32, i32* %5, align 4
  %233 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %234 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 3
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %238 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %242 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.xhci_dev_ctx*, %struct.xhci_dev_ctx** %9, align 8
  %246 = getelementptr inbounds %struct.xhci_dev_ctx, %struct.xhci_dev_ctx* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @DPRINTF(i8* %248)
  br label %250

250:                                              ; preds = %207, %98, %90
  %251 = load i32, i32* %12, align 4
  ret i32 %251
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.pci_xhci_dev_emu* @XHCI_SLOTDEV_PTR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.xhci_dev_ctx* @pci_xhci_get_dev_ctx(%struct.pci_xhci_softc*, i32) #1

declare dso_local i8* @FIELD_REPLACE(i8*, i32, i32, i32) #1

declare dso_local i32 @pci_xhci_disable_ep(%struct.pci_xhci_dev_emu*, i32) #1

declare dso_local %struct.xhci_input_dev_ctx* @XHCI_GADDR(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @XHCI_INCTX_0_DROP_MASK(i32) #1

declare dso_local i32 @XHCI_INCTX_1_ADD_MASK(i32) #1

declare dso_local i32 @memcpy(%struct.xhci_endp_ctx*, %struct.xhci_endp_ctx*, i32) #1

declare dso_local i32 @pci_xhci_init_ep(%struct.pci_xhci_dev_emu*, i32) #1

declare dso_local i8* @FIELD_COPY(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
