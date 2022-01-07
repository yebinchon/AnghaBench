; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_complete_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_xhci.c_pci_xhci_complete_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_xhci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.xhci_trb* }
%struct.xhci_trb = type { i32, i32, i32 }

@XHCI_CRCR_LO_CRR = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_RCS = common dso_local global i32 0, align 4
@XHCI_TRB_3_CYCLE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"pci_xhci: cmd type 0x%x, Trb0 x%016lx dwTrb2 x%08x dwTrb3 x%08x, TRB_CYCLE %u/ccs %u\0D\0A\00", align 1
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i32 0, align 4
@XHCI_TRB_EVENT_CMD_COMPLETE = common dso_local global i32 0, align 4
@XHCI_TRB_3_TC_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Reset Endpoint on slot %d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Stop Endpoint on slot %d\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"pci_xhci: unsupported cmd %x\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"pci_xhci: command 0x%x result: 0x%x\0D\0A\00", align 1
@XHCI_CRCR_LO_CA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_xhci_softc*)* @pci_xhci_complete_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_xhci_complete_commands(%struct.pci_xhci_softc* %0) #0 {
  %2 = alloca %struct.pci_xhci_softc*, align 8
  %3 = alloca %struct.xhci_trb, align 4
  %4 = alloca %struct.xhci_trb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_xhci_softc* %0, %struct.pci_xhci_softc** %2, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @XHCI_CRCR_LO_CRR, align 4
  %12 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %13 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %11
  store i32 %16, i32* %14, align 8
  %17 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %18 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.xhci_trb*, %struct.xhci_trb** %19, align 8
  store %struct.xhci_trb* %20, %struct.xhci_trb** %4, align 8
  %21 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XHCI_CRCR_LO_RCS, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %28 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, -16
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %1, %208
  %33 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %34 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %35 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.xhci_trb* %33, %struct.xhci_trb** %36, align 8
  %37 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %38 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @XHCI_TRB_3_TYPE_GET(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %212

51:                                               ; preds = %32
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %54 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %57 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %60 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %63 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @DPRINTF(i8* %69)
  %71 = load i32, i32* @XHCI_TRB_ERROR_SUCCESS, align 4
  store i32 %71, i32* %9, align 4
  %72 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %3, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @XHCI_TRB_EVENT_CMD_COMPLETE, align 4
  %77 = call i32 @XHCI_TRB_3_TYPE_SET(i32 %76)
  %78 = or i32 %75, %77
  %79 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %3, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  store i32 0, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %180 [
    i32 135, label %81
    i32 140, label %93
    i32 141, label %96
    i32 143, label %104
    i32 142, label %113
    i32 139, label %122
    i32 131, label %131
    i32 128, label %144
    i32 129, label %157
    i32 132, label %166
    i32 138, label %174
    i32 134, label %175
    i32 130, label %176
    i32 136, label %177
    i32 137, label %178
    i32 133, label %179
  ]

81:                                               ; preds = %51
  %82 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %83 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @XHCI_TRB_3_TC_BIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @XHCI_CRCR_LO_RCS, align 4
  %90 = load i32, i32* %6, align 4
  %91 = xor i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %81
  br label %185

93:                                               ; preds = %51
  %94 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %95 = call i32 @pci_xhci_cmd_enable_slot(%struct.pci_xhci_softc* %94, i32* %8)
  store i32 %95, i32* %9, align 4
  br label %185

96:                                               ; preds = %51
  %97 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %98 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @pci_xhci_cmd_disable_slot(%struct.pci_xhci_softc* %101, i32 %102)
  store i32 %103, i32* %9, align 4
  br label %185

104:                                              ; preds = %51
  %105 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %106 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %112 = call i32 @pci_xhci_cmd_address_device(%struct.pci_xhci_softc* %109, i32 %110, %struct.xhci_trb* %111)
  store i32 %112, i32* %9, align 4
  br label %185

113:                                              ; preds = %51
  %114 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %115 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %121 = call i32 @pci_xhci_cmd_config_ep(%struct.pci_xhci_softc* %118, i32 %119, %struct.xhci_trb* %120)
  store i32 %121, i32* %9, align 4
  br label %185

122:                                              ; preds = %51
  %123 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %124 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %130 = call i32 @pci_xhci_cmd_eval_ctx(%struct.pci_xhci_softc* %127, i32 %128, %struct.xhci_trb* %129)
  store i32 %130, i32* %9, align 4
  br label %185

131:                                              ; preds = %51
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @DPRINTF(i8* %134)
  %136 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %137 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %143 = call i32 @pci_xhci_cmd_reset_ep(%struct.pci_xhci_softc* %140, i32 %141, %struct.xhci_trb* %142)
  store i32 %143, i32* %9, align 4
  br label %185

144:                                              ; preds = %51
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @DPRINTF(i8* %147)
  %149 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %150 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %156 = call i32 @pci_xhci_cmd_reset_ep(%struct.pci_xhci_softc* %153, i32 %154, %struct.xhci_trb* %155)
  store i32 %156, i32* %9, align 4
  br label %185

157:                                              ; preds = %51
  %158 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %159 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %165 = call i32 @pci_xhci_cmd_set_tr(%struct.pci_xhci_softc* %162, i32 %163, %struct.xhci_trb* %164)
  store i32 %165, i32* %9, align 4
  br label %185

166:                                              ; preds = %51
  %167 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %168 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @XHCI_TRB_3_SLOT_GET(i32 %169)
  store i32 %170, i32* %8, align 4
  %171 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @pci_xhci_cmd_reset_device(%struct.pci_xhci_softc* %171, i32 %172)
  store i32 %173, i32* %9, align 4
  br label %185

174:                                              ; preds = %51
  br label %185

175:                                              ; preds = %51
  br label %185

176:                                              ; preds = %51
  br label %185

177:                                              ; preds = %51
  br label %185

178:                                              ; preds = %51
  br label %185

179:                                              ; preds = %51
  br label %185

180:                                              ; preds = %51
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 @DPRINTF(i8* %183)
  br label %185

185:                                              ; preds = %180, %179, %178, %177, %176, %175, %174, %166, %157, %144, %131, %122, %113, %104, %96, %93, %92
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 135
  br i1 %187, label %188, label %208

188:                                              ; preds = %185
  %189 = load i32, i32* %5, align 4
  %190 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %3, i32 0, i32 1
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @XHCI_TRB_2_ERROR_SET(i32 %191)
  %193 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %3, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %192
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @XHCI_TRB_3_SLOT_SET(i32 %196)
  %198 = getelementptr inbounds %struct.xhci_trb, %struct.xhci_trb* %3, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %197
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = call i32 @DPRINTF(i8* %204)
  %206 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %207 = call i32 @pci_xhci_insert_event(%struct.pci_xhci_softc* %206, %struct.xhci_trb* %3, i32 1)
  br label %208

208:                                              ; preds = %188, %185
  %209 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %210 = load %struct.xhci_trb*, %struct.xhci_trb** %4, align 8
  %211 = call %struct.xhci_trb* @pci_xhci_trb_next(%struct.pci_xhci_softc* %209, %struct.xhci_trb* %210, i32* %5)
  store %struct.xhci_trb* %211, %struct.xhci_trb** %4, align 8
  br label %32

212:                                              ; preds = %50
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %215 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @XHCI_CRCR_LO_CA, align 4
  %219 = and i32 %217, %218
  %220 = or i32 %213, %219
  %221 = load i32, i32* %6, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %224 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  %226 = load i32, i32* @XHCI_CRCR_LO_CRR, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.pci_xhci_softc*, %struct.pci_xhci_softc** %2, align 8
  %229 = getelementptr inbounds %struct.pci_xhci_softc, %struct.pci_xhci_softc* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = and i32 %231, %227
  store i32 %232, i32* %230, align 8
  %233 = load i32, i32* %10, align 4
  ret i32 %233
}

declare dso_local i32 @XHCI_TRB_3_TYPE_GET(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @XHCI_TRB_3_TYPE_SET(i32) #1

declare dso_local i32 @pci_xhci_cmd_enable_slot(%struct.pci_xhci_softc*, i32*) #1

declare dso_local i32 @XHCI_TRB_3_SLOT_GET(i32) #1

declare dso_local i32 @pci_xhci_cmd_disable_slot(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @pci_xhci_cmd_address_device(%struct.pci_xhci_softc*, i32, %struct.xhci_trb*) #1

declare dso_local i32 @pci_xhci_cmd_config_ep(%struct.pci_xhci_softc*, i32, %struct.xhci_trb*) #1

declare dso_local i32 @pci_xhci_cmd_eval_ctx(%struct.pci_xhci_softc*, i32, %struct.xhci_trb*) #1

declare dso_local i32 @pci_xhci_cmd_reset_ep(%struct.pci_xhci_softc*, i32, %struct.xhci_trb*) #1

declare dso_local i32 @pci_xhci_cmd_set_tr(%struct.pci_xhci_softc*, i32, %struct.xhci_trb*) #1

declare dso_local i32 @pci_xhci_cmd_reset_device(%struct.pci_xhci_softc*, i32) #1

declare dso_local i32 @XHCI_TRB_2_ERROR_SET(i32) #1

declare dso_local i32 @XHCI_TRB_3_SLOT_SET(i32) #1

declare dso_local i32 @pci_xhci_insert_event(%struct.pci_xhci_softc*, %struct.xhci_trb*, i32) #1

declare dso_local %struct.xhci_trb* @pci_xhci_trb_next(%struct.pci_xhci_softc*, %struct.xhci_trb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
