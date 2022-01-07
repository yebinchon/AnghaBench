; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_init_pxp_arb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_init_ops.h_ecore_init_pxp_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.bxe_softc = type { i32 }

@MAX_RD_ORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"read order of %d  order adjusted to %d\0A\00", align 1
@MAX_WR_ORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"write order of %d  order adjusted to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"write order adjusted to 1 for FPGA\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"read order %d  write order %d\0A\00", align 1
@NUM_RD_Q = common dso_local global i32 0, align 4
@read_arb_addr = common dso_local global %struct.TYPE_8__* null, align 8
@read_arb_data = common dso_local global %struct.TYPE_7__** null, align 8
@NUM_WR_Q = common dso_local global i32 0, align 4
@write_arb_addr = common dso_local global %struct.TYPE_6__* null, align 8
@PXP2_REG_RQ_BW_WR_L29 = common dso_local global i64 0, align 8
@PXP2_REG_RQ_BW_WR_L30 = common dso_local global i64 0, align 8
@write_arb_data = common dso_local global %struct.TYPE_5__** null, align 8
@PXP2_REG_PSWRQ_BW_RD = common dso_local global i64 0, align 8
@PXP2_REG_PSWRQ_BW_WR = common dso_local global i64 0, align 8
@PXP2_REG_RQ_WR_MBS0 = common dso_local global i64 0, align 8
@PXP2_REG_RQ_WR_MBS1 = common dso_local global i64 0, align 8
@PXP2_REG_RQ_RD_MBS0 = common dso_local global i64 0, align 8
@PXP2_REG_RQ_RD_MBS1 = common dso_local global i64 0, align 8
@PXP2_REG_RQ_PDR_LIMIT = common dso_local global i64 0, align 8
@PXP2_REG_WR_USDMDP_TH = common dso_local global i64 0, align 8
@PXP2_REG_WR_DMAE_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_HC_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_USDM_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_CSDM_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_TSDM_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_XSDM_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_QM_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_TM_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_SRC_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_DBG_MPS = common dso_local global i64 0, align 8
@PXP2_REG_WR_CDU_MPS = common dso_local global i64 0, align 8
@PXP2_REG_PGL_TAGS_LIMIT = common dso_local global i64 0, align 8
@PCIE_REG_PCIER_TL_HDR_FC_ST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32, i32)* @ecore_init_pxp_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_init_pxp_arb(%struct.bxe_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAX_RD_ORD, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_RD_ORD, align 4
  %16 = call i32 (%struct.bxe_softc*, i8*, ...) @ECORE_MSG(%struct.bxe_softc* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* @MAX_RD_ORD, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_WR_ORD, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_WR_ORD, align 4
  %26 = call i32 (%struct.bxe_softc*, i8*, ...) @ECORE_MSG(%struct.bxe_softc* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @MAX_WR_ORD, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %30 = call i64 @CHIP_REV_IS_FPGA(%struct.bxe_softc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %34 = call i32 (%struct.bxe_softc*, i8*, ...) @ECORE_MSG(%struct.bxe_softc* %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.bxe_softc*, i8*, ...) @ECORE_MSG(%struct.bxe_softc* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %100, %35
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NUM_RD_Q, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %40
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @read_arb_addr, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @read_arb_data, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @REG_WR(%struct.bxe_softc* %46, i64 %52, i32 %62)
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @read_arb_addr, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @read_arb_data, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %73
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @REG_WR(%struct.bxe_softc* %64, i64 %70, i32 %80)
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @read_arb_addr, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @read_arb_data, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %89, i64 %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @REG_WR(%struct.bxe_softc* %82, i64 %88, i32 %98)
  br label %100

100:                                              ; preds = %45
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %40

103:                                              ; preds = %40
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %271, %103
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @NUM_WR_Q, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %274

109:                                              ; preds = %104
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @PXP2_REG_RQ_BW_WR_L29, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %127, label %118

118:                                              ; preds = %109
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PXP2_REG_RQ_BW_WR_L30, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %182

127:                                              ; preds = %118, %109
  %128 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %135, i64 %137
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @REG_WR(%struct.bxe_softc* %128, i64 %134, i32 %144)
  %146 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %153, i64 %155
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @REG_WR(%struct.bxe_softc* %146, i64 %152, i32 %162)
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %171, i64 %173
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @REG_WR(%struct.bxe_softc* %164, i64 %170, i32 %180)
  br label %270

182:                                              ; preds = %118
  %183 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @REG_RD(%struct.bxe_softc* %183, i64 %189)
  store i32 %190, i32* %7, align 4
  %191 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %199, i64 %201
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 %208, 10
  %210 = or i32 %198, %209
  %211 = call i32 @REG_WR(%struct.bxe_softc* %191, i64 %197, i32 %210)
  %212 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @REG_RD(%struct.bxe_softc* %212, i64 %218)
  store i32 %219, i32* %7, align 4
  %220 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %228, i64 %230
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 10
  %239 = or i32 %227, %238
  %240 = call i32 @REG_WR(%struct.bxe_softc* %220, i64 %226, i32 %239)
  %241 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i32 @REG_RD(%struct.bxe_softc* %241, i64 %247)
  store i32 %248, i32* %7, align 4
  %249 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** @write_arb_addr, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %258 = load i32, i32* %8, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %257, i64 %259
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = shl i32 %266, 7
  %268 = or i32 %256, %267
  %269 = call i32 @REG_WR(%struct.bxe_softc* %249, i64 %255, i32 %268)
  br label %270

270:                                              ; preds = %182, %127
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  br label %104

274:                                              ; preds = %104
  %275 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %276 = load i32, i32* @NUM_WR_Q, align 4
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %275, i64 %278
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %279, align 8
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %7, align 4
  %286 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %287 = load i32, i32* @NUM_WR_Q, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %286, i64 %289
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %290, align 8
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = shl i32 %296, 10
  %298 = load i32, i32* %7, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %7, align 4
  %300 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @write_arb_data, align 8
  %301 = load i32, i32* @NUM_WR_Q, align 4
  %302 = sub nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %300, i64 %303
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %304, align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = shl i32 %310, 17
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %7, align 4
  %314 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %315 = load i64, i64* @PXP2_REG_PSWRQ_BW_RD, align 8
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @REG_WR(%struct.bxe_softc* %314, i64 %315, i32 %316)
  %318 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @read_arb_data, align 8
  %319 = load i32, i32* @NUM_RD_Q, align 4
  %320 = sub nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %318, i64 %321
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %7, align 4
  %329 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @read_arb_data, align 8
  %330 = load i32, i32* @NUM_RD_Q, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %329, i64 %332
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = load i32, i32* %5, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = shl i32 %339, 10
  %341 = load i32, i32* %7, align 4
  %342 = add nsw i32 %341, %340
  store i32 %342, i32* %7, align 4
  %343 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @read_arb_data, align 8
  %344 = load i32, i32* @NUM_RD_Q, align 4
  %345 = sub nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %343, i64 %346
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = load i32, i32* %5, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = shl i32 %353, 17
  %355 = load i32, i32* %7, align 4
  %356 = add nsw i32 %355, %354
  store i32 %356, i32* %7, align 4
  %357 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %358 = load i64, i64* @PXP2_REG_PSWRQ_BW_WR, align 8
  %359 = load i32, i32* %7, align 4
  %360 = call i32 @REG_WR(%struct.bxe_softc* %357, i64 %358, i32 %359)
  %361 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %362 = load i64, i64* @PXP2_REG_RQ_WR_MBS0, align 8
  %363 = load i32, i32* %6, align 4
  %364 = call i32 @REG_WR(%struct.bxe_softc* %361, i64 %362, i32 %363)
  %365 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %366 = load i64, i64* @PXP2_REG_RQ_WR_MBS1, align 8
  %367 = load i32, i32* %6, align 4
  %368 = call i32 @REG_WR(%struct.bxe_softc* %365, i64 %366, i32 %367)
  %369 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %370 = load i64, i64* @PXP2_REG_RQ_RD_MBS0, align 8
  %371 = load i32, i32* %5, align 4
  %372 = call i32 @REG_WR(%struct.bxe_softc* %369, i64 %370, i32 %371)
  %373 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %374 = load i64, i64* @PXP2_REG_RQ_RD_MBS1, align 8
  %375 = load i32, i32* %5, align 4
  %376 = call i32 @REG_WR(%struct.bxe_softc* %373, i64 %374, i32 %375)
  %377 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %378 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %274
  %381 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %382 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %380, %274
  %385 = load i32, i32* %5, align 4
  %386 = load i32, i32* @MAX_RD_ORD, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  %389 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %390 = load i64, i64* @PXP2_REG_RQ_PDR_LIMIT, align 8
  %391 = call i32 @REG_WR(%struct.bxe_softc* %389, i64 %390, i32 3584)
  br label %392

392:                                              ; preds = %388, %384, %380
  %393 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %394 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %402

396:                                              ; preds = %392
  %397 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %398 = load i64, i64* @PXP2_REG_WR_USDMDP_TH, align 8
  %399 = load i32, i32* %6, align 4
  %400 = shl i32 4, %399
  %401 = call i32 @REG_WR(%struct.bxe_softc* %397, i64 %398, i32 %400)
  br label %419

402:                                              ; preds = %392
  %403 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %404 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %402
  %407 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %408 = load i64, i64* @PXP2_REG_WR_USDMDP_TH, align 8
  %409 = load i32, i32* %6, align 4
  %410 = shl i32 8, %409
  %411 = call i32 @REG_WR(%struct.bxe_softc* %407, i64 %408, i32 %410)
  br label %418

412:                                              ; preds = %402
  %413 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %414 = load i64, i64* @PXP2_REG_WR_USDMDP_TH, align 8
  %415 = load i32, i32* %6, align 4
  %416 = shl i32 24, %415
  %417 = call i32 @REG_WR(%struct.bxe_softc* %413, i64 %414, i32 %416)
  br label %418

418:                                              ; preds = %412, %406
  br label %419

419:                                              ; preds = %418, %396
  %420 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %421 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %482, label %423

423:                                              ; preds = %419
  %424 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %425 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %433, label %427

427:                                              ; preds = %423
  %428 = load i32, i32* %6, align 4
  store i32 %428, i32* %7, align 4
  %429 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %430 = load i64, i64* @PXP2_REG_WR_DMAE_MPS, align 8
  %431 = load i32, i32* %7, align 4
  %432 = call i32 @REG_WR(%struct.bxe_softc* %429, i64 %430, i32 %431)
  br label %441

433:                                              ; preds = %423
  %434 = load i32, i32* %6, align 4
  %435 = icmp eq i32 %434, 0
  %436 = zext i1 %435 to i64
  %437 = select i1 %435, i32 2, i32 3
  store i32 %437, i32* %7, align 4
  %438 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %439 = load i64, i64* @PXP2_REG_WR_DMAE_MPS, align 8
  %440 = call i32 @REG_WR(%struct.bxe_softc* %438, i64 %439, i32 2)
  br label %441

441:                                              ; preds = %433, %427
  %442 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %443 = load i64, i64* @PXP2_REG_WR_HC_MPS, align 8
  %444 = load i32, i32* %7, align 4
  %445 = call i32 @REG_WR(%struct.bxe_softc* %442, i64 %443, i32 %444)
  %446 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %447 = load i64, i64* @PXP2_REG_WR_USDM_MPS, align 8
  %448 = load i32, i32* %7, align 4
  %449 = call i32 @REG_WR(%struct.bxe_softc* %446, i64 %447, i32 %448)
  %450 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %451 = load i64, i64* @PXP2_REG_WR_CSDM_MPS, align 8
  %452 = load i32, i32* %7, align 4
  %453 = call i32 @REG_WR(%struct.bxe_softc* %450, i64 %451, i32 %452)
  %454 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %455 = load i64, i64* @PXP2_REG_WR_TSDM_MPS, align 8
  %456 = load i32, i32* %7, align 4
  %457 = call i32 @REG_WR(%struct.bxe_softc* %454, i64 %455, i32 %456)
  %458 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %459 = load i64, i64* @PXP2_REG_WR_XSDM_MPS, align 8
  %460 = load i32, i32* %7, align 4
  %461 = call i32 @REG_WR(%struct.bxe_softc* %458, i64 %459, i32 %460)
  %462 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %463 = load i64, i64* @PXP2_REG_WR_QM_MPS, align 8
  %464 = load i32, i32* %7, align 4
  %465 = call i32 @REG_WR(%struct.bxe_softc* %462, i64 %463, i32 %464)
  %466 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %467 = load i64, i64* @PXP2_REG_WR_TM_MPS, align 8
  %468 = load i32, i32* %7, align 4
  %469 = call i32 @REG_WR(%struct.bxe_softc* %466, i64 %467, i32 %468)
  %470 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %471 = load i64, i64* @PXP2_REG_WR_SRC_MPS, align 8
  %472 = load i32, i32* %7, align 4
  %473 = call i32 @REG_WR(%struct.bxe_softc* %470, i64 %471, i32 %472)
  %474 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %475 = load i64, i64* @PXP2_REG_WR_DBG_MPS, align 8
  %476 = load i32, i32* %7, align 4
  %477 = call i32 @REG_WR(%struct.bxe_softc* %474, i64 %475, i32 %476)
  %478 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %479 = load i64, i64* @PXP2_REG_WR_CDU_MPS, align 8
  %480 = load i32, i32* %7, align 4
  %481 = call i32 @REG_WR(%struct.bxe_softc* %478, i64 %479, i32 %480)
  br label %482

482:                                              ; preds = %441, %419
  %483 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %484 = call i32 @REG_RD(%struct.bxe_softc* %483, i64 10624)
  store i32 %484, i32* %7, align 4
  %485 = load i32, i32* %7, align 4
  %486 = and i32 %485, 255
  store i32 %486, i32* %7, align 4
  %487 = load i32, i32* %7, align 4
  %488 = icmp sle i32 %487, 32
  br i1 %488, label %489, label %493

489:                                              ; preds = %482
  %490 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %491 = load i64, i64* @PXP2_REG_PGL_TAGS_LIMIT, align 8
  %492 = call i32 @REG_WR(%struct.bxe_softc* %490, i64 %491, i32 32)
  br label %493

493:                                              ; preds = %489, %482
  ret void
}

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, ...) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
