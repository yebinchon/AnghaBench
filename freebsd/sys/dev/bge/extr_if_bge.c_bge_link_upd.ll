; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_link_upd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_link_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mii_data = type { i32, i32 }

@BGE_ASICREV_BCM5700 = common dso_local global i64 0, align 8
@BGE_CHIPID_BCM5700_B2 = common dso_local global i64 0, align 8
@BGE_MAC_STS = common dso_local global i32 0, align 4
@BGE_MACSTAT_MI_INTERRUPT = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"link UP\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"link DOWN\0A\00", align 1
@BGE_MAC_EVT_ENB = common dso_local global i32 0, align 4
@BGE_EVTENB_MI_INTERRUPT = common dso_local global i32 0, align 4
@BRGPHY_MII_ISR = common dso_local global i32 0, align 4
@BRGPHY_MII_IMR = common dso_local global i32 0, align 4
@BRGPHY_INTRS = common dso_local global i32 0, align 4
@BGE_FLAG_TBI = common dso_local global i32 0, align 4
@BGE_MACSTAT_TBI_PCS_SYNCHED = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5704 = common dso_local global i64 0, align 8
@BGE_MAC_MODE = common dso_local global i32 0, align 4
@BGE_MACMODE_TBI_SEND_CFGS = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@BGE_MIMODE_AUTOPOLL = common dso_local global i32 0, align 4
@BGE_MI_STS = common dso_local global i32 0, align 4
@BGE_MISTS_LINK = common dso_local global i32 0, align 4
@BGE_MACSTAT_SYNC_CHANGED = common dso_local global i32 0, align 4
@BGE_MACSTAT_CFG_CHANGED = common dso_local global i32 0, align 4
@BGE_MACSTAT_MI_COMPLETE = common dso_local global i32 0, align 4
@BGE_MACSTAT_LINK_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_link_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_link_upd(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %6 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %7 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %6)
  %8 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %8, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BGE_ASICREV_BCM5700, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %121

15:                                               ; preds = %1
  %16 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BGE_CHIPID_BCM5700_B2, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %121

21:                                               ; preds = %15
  %22 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %23 = load i32, i32* @BGE_MAC_STS, align 4
  %24 = call i32 @CSR_READ_4(%struct.bge_softc* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BGE_MACSTAT_MI_INTERRUPT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %120

29:                                               ; preds = %21
  %30 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.mii_data* @device_get_softc(i32 %32)
  store %struct.mii_data* %33, %struct.mii_data** %3, align 8
  %34 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %35 = call i32 @mii_pollstat(%struct.mii_data* %34)
  %36 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %37 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %29
  %41 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %42 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFM_ACTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %49 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IFM_SUBTYPE(i32 %50)
  %52 = load i64, i64* @IFM_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %56 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load i64, i64* @bootverbose, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @if_printf(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %54
  br label %98

67:                                               ; preds = %47, %40, %29
  %68 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %69 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %74 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IFM_ACTIVE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %81 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IFM_SUBTYPE(i32 %82)
  %84 = load i64, i64* @IFM_NONE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %79, %72
  %87 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %88 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %87, i32 0, i32 2
  store i32 0, i32* %88, align 8
  %89 = load i64, i64* @bootverbose, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %93 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @if_printf(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %86
  br label %97

97:                                               ; preds = %96, %79, %67
  br label %98

98:                                               ; preds = %97, %66
  %99 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %100 = load i32, i32* @BGE_MAC_EVT_ENB, align 4
  %101 = load i32, i32* @BGE_EVTENB_MI_INTERRUPT, align 4
  %102 = call i32 @CSR_WRITE_4(%struct.bge_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %104 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %107 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BRGPHY_MII_ISR, align 4
  %110 = call i32 @bge_miibus_readreg(i32 %105, i32 %108, i32 %109)
  %111 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %112 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %115 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @BRGPHY_MII_IMR, align 4
  %118 = load i32, i32* @BRGPHY_INTRS, align 4
  %119 = call i32 @bge_miibus_writereg(i32 %113, i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %98, %21
  br label %319

121:                                              ; preds = %15, %1
  %122 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %123 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BGE_FLAG_TBI, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %198

128:                                              ; preds = %121
  %129 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %130 = load i32, i32* @BGE_MAC_STS, align 4
  %131 = call i32 @CSR_READ_4(%struct.bge_softc* %129, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @BGE_MACSTAT_TBI_PCS_SYNCHED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %175

136:                                              ; preds = %128
  %137 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %138 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %174, label %141

141:                                              ; preds = %136
  %142 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %143 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %147 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @BGE_ASICREV_BCM5704, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %141
  %152 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %153 = load i32, i32* @BGE_MAC_MODE, align 4
  %154 = load i32, i32* @BGE_MACMODE_TBI_SEND_CFGS, align 4
  %155 = call i32 @BGE_CLRBIT(%struct.bge_softc* %152, i32 %153, i32 %154)
  %156 = call i32 @DELAY(i32 40)
  br label %157

157:                                              ; preds = %151, %141
  %158 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %159 = load i32, i32* @BGE_MAC_STS, align 4
  %160 = call i32 @CSR_WRITE_4(%struct.bge_softc* %158, i32 %159, i32 -1)
  %161 = load i64, i64* @bootverbose, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %165 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @if_printf(i32 %166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %168

168:                                              ; preds = %163, %157
  %169 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %170 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @LINK_STATE_UP, align 4
  %173 = call i32 @if_link_state_change(i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %168, %136
  br label %197

175:                                              ; preds = %128
  %176 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %177 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %175
  %181 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %182 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %181, i32 0, i32 2
  store i32 0, i32* %182, align 8
  %183 = load i64, i64* @bootverbose, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %187 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @if_printf(i32 %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %190

190:                                              ; preds = %185, %180
  %191 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %192 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @LINK_STATE_DOWN, align 4
  %195 = call i32 @if_link_state_change(i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %190, %175
  br label %197

197:                                              ; preds = %196, %174
  br label %308

198:                                              ; preds = %121
  %199 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %200 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @BGE_MIMODE_AUTOPOLL, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %296

205:                                              ; preds = %198
  %206 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %207 = load i32, i32* @BGE_MI_STS, align 4
  %208 = call i32 @CSR_READ_4(%struct.bge_softc* %206, i32 %207)
  %209 = load i32, i32* @BGE_MISTS_LINK, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 1, i32 0
  store i32 %213, i32* %4, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %216 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %214, %217
  br i1 %218, label %225, label %219

219:                                              ; preds = %205
  %220 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %221 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @BGE_ASICREV_BCM5700, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %295

225:                                              ; preds = %219, %205
  %226 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %227 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = call %struct.mii_data* @device_get_softc(i32 %228)
  store %struct.mii_data* %229, %struct.mii_data** %3, align 8
  %230 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %231 = call i32 @mii_pollstat(%struct.mii_data* %230)
  %232 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %233 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %263, label %236

236:                                              ; preds = %225
  %237 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %238 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @IFM_ACTIVE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %263

243:                                              ; preds = %236
  %244 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %245 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @IFM_SUBTYPE(i32 %246)
  %248 = load i64, i64* @IFM_NONE, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %263

250:                                              ; preds = %243
  %251 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %252 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = load i64, i64* @bootverbose, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %250
  %258 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %259 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @if_printf(i32 %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %262

262:                                              ; preds = %257, %250
  br label %294

263:                                              ; preds = %243, %236, %225
  %264 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %265 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %293

268:                                              ; preds = %263
  %269 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %270 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @IFM_ACTIVE, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %268
  %276 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %277 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i64 @IFM_SUBTYPE(i32 %278)
  %280 = load i64, i64* @IFM_NONE, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %293

282:                                              ; preds = %275, %268
  %283 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %284 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %283, i32 0, i32 2
  store i32 0, i32* %284, align 8
  %285 = load i64, i64* @bootverbose, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %289 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @if_printf(i32 %290, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %292

292:                                              ; preds = %287, %282
  br label %293

293:                                              ; preds = %292, %275, %263
  br label %294

294:                                              ; preds = %293, %262
  br label %295

295:                                              ; preds = %294, %219
  br label %307

296:                                              ; preds = %198
  %297 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %298 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = call %struct.mii_data* @device_get_softc(i32 %299)
  store %struct.mii_data* %300, %struct.mii_data** %3, align 8
  %301 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %302 = call i32 @mii_pollstat(%struct.mii_data* %301)
  %303 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %304 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @bge_miibus_statchg(i32 %305)
  br label %307

307:                                              ; preds = %296, %295
  br label %308

308:                                              ; preds = %307, %197
  %309 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %310 = load i32, i32* @BGE_MAC_STS, align 4
  %311 = load i32, i32* @BGE_MACSTAT_SYNC_CHANGED, align 4
  %312 = load i32, i32* @BGE_MACSTAT_CFG_CHANGED, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @BGE_MACSTAT_MI_COMPLETE, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @BGE_MACSTAT_LINK_CHANGED, align 4
  %317 = or i32 %315, %316
  %318 = call i32 @CSR_WRITE_4(%struct.bge_softc* %309, i32 %310, i32 %317)
  br label %319

319:                                              ; preds = %308, %120
  ret void
}

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i64 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_miibus_readreg(i32, i32, i32) #1

declare dso_local i32 @bge_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @BGE_CLRBIT(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

declare dso_local i32 @bge_miibus_statchg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
