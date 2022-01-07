; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_setup_ctlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_ctau.c_ct_setup_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }

@RCR2_RSCLKM = common dso_local global i8 0, align 1
@TCR1_TSIS = common dso_local global i8 0, align 1
@TCR1_TSO = common dso_local global i8 0, align 1
@CFG_D = common dso_local global i64 0, align 8
@RCR2_SA_4 = common dso_local global i8 0, align 1
@TCR2_SA_4 = common dso_local global i8 0, align 1
@CFG_A = common dso_local global i64 0, align 8
@RCR1_RSO = common dso_local global i8 0, align 1
@RCR1_RSI = common dso_local global i8 0, align 1
@RCR2_RESE = common dso_local global i8 0, align 1
@TCR1_T16S = common dso_local global i8 0, align 1
@CCR1_CCS = common dso_local global i8 0, align 1
@CCR1_THDB3 = common dso_local global i8 0, align 1
@CCR1_RHDB3 = common dso_local global i8 0, align 1
@CCR1_TCRC4 = common dso_local global i8 0, align 1
@CCR1_RCRC4 = common dso_local global i8 0, align 1
@TCR2_AEBE = common dso_local global i8 0, align 1
@LICR_HIGAIN = common dso_local global i8 0, align 1
@E1SR_TP1 = common dso_local global i32 0, align 4
@E1SR_TP0 = common dso_local global i32 0, align 4
@LICR_LB120P = common dso_local global i8 0, align 1
@LICR_LB75P = common dso_local global i8 0, align 1
@DS_RCR1 = common dso_local global i32 0, align 4
@DS_RCR2 = common dso_local global i32 0, align 4
@DS_TCR1 = common dso_local global i32 0, align 4
@DS_TCR2 = common dso_local global i32 0, align 4
@DS_CCR1 = common dso_local global i32 0, align 4
@DS_CCR2 = common dso_local global i32 0, align 4
@CCR2_CNTCV = common dso_local global i8 0, align 1
@CCR2_AUTORA = common dso_local global i8 0, align 1
@CCR2_LOFA1 = common dso_local global i8 0, align 1
@DS_CCR3 = common dso_local global i32 0, align 4
@CCR3_TSCLKM = common dso_local global i8 0, align 1
@DS_LICR = common dso_local global i32 0, align 4
@DS_IMR1 = common dso_local global i32 0, align 4
@DS_IMR2 = common dso_local global i32 0, align 4
@SR2_SEC = common dso_local global i8 0, align 1
@DS_TEST1 = common dso_local global i32 0, align 4
@DS_TEST2 = common dso_local global i32 0, align 4
@DS_TAF = common dso_local global i32 0, align 4
@DS_TNAF = common dso_local global i32 0, align 4
@DS_TIDR = common dso_local global i32 0, align 4
@DS_TS = common dso_local global i32 0, align 4
@CFG_B = common dso_local global i64 0, align 8
@CFG_C = common dso_local global i64 0, align 8
@DS_TIR = common dso_local global i32 0, align 4
@DS_RCBR = common dso_local global i32 0, align 4
@DS_TCBR = common dso_local global i32 0, align 4
@CCR3_LIRESET = common dso_local global i8 0, align 1
@CCR3_ESRESET = common dso_local global i8 0, align 1
@DS_SR1 = common dso_local global i32 0, align 4
@DS_SR2 = common dso_local global i32 0, align 4
@DS_RIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ct_setup_ctlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_setup_ctlr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @E1CS1(i32 %24)
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @E1CS0(i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %25, %21 ], [ %30, %26 ]
  store i32 %32, i32* %4, align 4
  %33 = load i8, i8* @RCR2_RSCLKM, align 1
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* @TCR1_TSIS, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @TCR1_TSO, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CFG_D, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %31
  %47 = load i8, i8* @RCR2_SA_4, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %6, align 1
  %53 = load i8, i8* @TCR2_SA_4, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %8, align 1
  br label %59

59:                                               ; preds = %46, %31
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CFG_A, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i8, i8* @RCR1_RSO, align 1
  store i8 %67, i8* %5, align 1
  br label %76

68:                                               ; preds = %59
  %69 = load i8, i8* @RCR1_RSI, align 1
  store i8 %69, i8* %5, align 1
  %70 = load i8, i8* @RCR2_RESE, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, %71
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %6, align 1
  br label %76

76:                                               ; preds = %68, %66
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i8, i8* @TCR1_T16S, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %7, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %7, align 1
  br label %96

89:                                               ; preds = %76
  %90 = load i8, i8* @CCR1_CCS, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* %9, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, %91
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %9, align 1
  br label %96

96:                                               ; preds = %89, %82
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i8, i8* @CCR1_THDB3, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @CCR1_RHDB3, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %104, %106
  %108 = load i8, i8* %9, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %9, align 1
  br label %112

112:                                              ; preds = %102, %96
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %112
  %119 = load i8, i8* @CCR1_TCRC4, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* @CCR1_RCRC4, align 1
  %122 = zext i8 %121 to i32
  %123 = or i32 %120, %122
  %124 = load i8, i8* %9, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %125, %123
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %9, align 1
  %128 = load i8, i8* @TCR2_AEBE, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* %8, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %131, %129
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %8, align 1
  br label %134

134:                                              ; preds = %118, %112
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %134
  %141 = load i8, i8* @LICR_HIGAIN, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* %10, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %144, %142
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %10, align 1
  br label %147

147:                                              ; preds = %140, %134
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @E1SR(i32 %150)
  %152 = call i32 @inb(i32 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i32, i32* @E1SR_TP1, align 4
  br label %161

159:                                              ; preds = %147
  %160 = load i32, i32* @E1SR_TP0, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = and i32 %152, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load i8, i8* @LICR_LB120P, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* %10, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %169, %167
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %10, align 1
  br label %179

172:                                              ; preds = %161
  %173 = load i8, i8* @LICR_LB75P, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8, i8* %10, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, %174
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %10, align 1
  br label %179

179:                                              ; preds = %172, %165
  %180 = load i32, i32* %4, align 4
  %181 = load i32, i32* @DS_RCR1, align 4
  %182 = load i8, i8* %5, align 1
  %183 = call i32 @cte_out(i32 %180, i32 %181, i8 zeroext %182)
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @DS_RCR2, align 4
  %186 = load i8, i8* %6, align 1
  %187 = call i32 @cte_out(i32 %184, i32 %185, i8 zeroext %186)
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @DS_TCR1, align 4
  %190 = load i8, i8* %7, align 1
  %191 = call i32 @cte_out(i32 %188, i32 %189, i8 zeroext %190)
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @DS_TCR2, align 4
  %194 = load i8, i8* %8, align 1
  %195 = call i32 @cte_out(i32 %192, i32 %193, i8 zeroext %194)
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @DS_CCR1, align 4
  %198 = load i8, i8* %9, align 1
  %199 = call i32 @cte_out(i32 %196, i32 %197, i8 zeroext %198)
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @DS_CCR2, align 4
  %202 = load i8, i8* @CCR2_CNTCV, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8, i8* @CCR2_AUTORA, align 1
  %205 = zext i8 %204 to i32
  %206 = or i32 %203, %205
  %207 = load i8, i8* @CCR2_LOFA1, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %206, %208
  %210 = trunc i32 %209 to i8
  %211 = call i32 @cte_out(i32 %200, i32 %201, i8 zeroext %210)
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @DS_CCR3, align 4
  %214 = load i8, i8* @CCR3_TSCLKM, align 1
  %215 = call i32 @cte_out(i32 %212, i32 %213, i8 zeroext %214)
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @DS_LICR, align 4
  %218 = load i8, i8* %10, align 1
  %219 = call i32 @cte_out(i32 %216, i32 %217, i8 zeroext %218)
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @DS_IMR1, align 4
  %222 = call i32 @cte_out(i32 %220, i32 %221, i8 zeroext 0)
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* @DS_IMR2, align 4
  %225 = load i8, i8* @SR2_SEC, align 1
  %226 = call i32 @cte_out(i32 %223, i32 %224, i8 zeroext %225)
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @DS_TEST1, align 4
  %229 = call i32 @cte_out(i32 %227, i32 %228, i8 zeroext 0)
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @DS_TEST2, align 4
  %232 = call i32 @cte_out(i32 %230, i32 %231, i8 zeroext 0)
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @DS_TAF, align 4
  %235 = call i32 @cte_out(i32 %233, i32 %234, i8 zeroext -101)
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @DS_TNAF, align 4
  %238 = call i32 @cte_out(i32 %236, i32 %237, i8 zeroext -33)
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @DS_TIDR, align 4
  %241 = call i32 @cte_out(i32 %239, i32 %240, i8 zeroext -1)
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @DS_TS, align 4
  %244 = call i32 @cte_out(i32 %242, i32 %243, i8 zeroext 11)
  store i32 1, i32* %13, align 4
  br label %245

245:                                              ; preds = %256, %179
  %246 = load i32, i32* %13, align 4
  %247 = icmp slt i32 %246, 16
  br i1 %247, label %248, label %259

248:                                              ; preds = %245
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @DS_TS, align 4
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %250, %251
  %253 = trunc i32 %252 to i8
  %254 = zext i8 %253 to i32
  %255 = call i32 @cte_out(i32 %249, i32 %254, i8 zeroext -1)
  br label %256

256:                                              ; preds = %248
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %245

259:                                              ; preds = %245
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @CFG_B, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %259
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  store i64 0, i64* %269, align 8
  br label %289

270:                                              ; preds = %259
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @CFG_C, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %270
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = xor i64 %281, -1
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = and i64 %286, %282
  store i64 %287, i64* %285, align 8
  br label %288

288:                                              ; preds = %277, %270
  br label %289

289:                                              ; preds = %288, %266
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %289
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = and i64 %299, -65537
  store i64 %300, i64* %298, align 8
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = and i64 %304, -65537
  store i64 %305, i64* %303, align 8
  br label %306

306:                                              ; preds = %295, %289
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = xor i64 %310, -1
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = and i64 %315, %311
  store i64 %316, i64* %314, align 8
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = xor i64 %320, -1
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = and i64 %325, %321
  store i64 %326, i64* %324, align 8
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %306
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  br label %341

336:                                              ; preds = %306
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  br label %341

341:                                              ; preds = %336, %331
  %342 = phi i64 [ %335, %331 ], [ %340, %336 ]
  store i64 %342, i64* %11, align 8
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @CFG_A, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %341
  %350 = load i64, i64* %11, align 8
  %351 = xor i64 %350, -1
  store i64 %351, i64* %12, align 8
  br label %389

352:                                              ; preds = %341
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @CFG_D, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %360

359:                                              ; preds = %352
  store i64 0, i64* %12, align 8
  br label %388

360:                                              ; preds = %352
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %381

365:                                              ; preds = %360
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = or i64 %369, %373
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 3
  %378 = load i64, i64* %377, align 8
  %379 = or i64 %374, %378
  %380 = xor i64 %379, -1
  store i64 %380, i64* %12, align 8
  br label %387

381:                                              ; preds = %360
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = xor i64 %385, -1
  store i64 %386, i64* %12, align 8
  br label %387

387:                                              ; preds = %381, %365
  br label %388

388:                                              ; preds = %387, %359
  br label %389

389:                                              ; preds = %388, %349
  %390 = load i32, i32* %4, align 4
  %391 = load i32, i32* @DS_TIR, align 4
  %392 = load i64, i64* %12, align 8
  %393 = and i64 %392, 254
  %394 = trunc i64 %393 to i8
  %395 = call i32 @cte_out(i32 %390, i32 %391, i8 zeroext %394)
  %396 = load i32, i32* %4, align 4
  %397 = load i32, i32* @DS_TIR, align 4
  %398 = add nsw i32 %397, 1
  %399 = load i64, i64* %12, align 8
  %400 = lshr i64 %399, 8
  %401 = trunc i64 %400 to i8
  %402 = call i32 @cte_out(i32 %396, i32 %398, i8 zeroext %401)
  %403 = load i32, i32* %4, align 4
  %404 = load i32, i32* @DS_TIR, align 4
  %405 = add nsw i32 %404, 2
  %406 = load i64, i64* %12, align 8
  %407 = lshr i64 %406, 16
  %408 = trunc i64 %407 to i8
  %409 = call i32 @cte_out(i32 %403, i32 %405, i8 zeroext %408)
  %410 = load i32, i32* %4, align 4
  %411 = load i32, i32* @DS_TIR, align 4
  %412 = add nsw i32 %411, 3
  %413 = load i64, i64* %12, align 8
  %414 = lshr i64 %413, 24
  %415 = trunc i64 %414 to i8
  %416 = call i32 @cte_out(i32 %410, i32 %412, i8 zeroext %415)
  %417 = load i32, i32* %4, align 4
  %418 = load i32, i32* @DS_RCBR, align 4
  %419 = load i64, i64* %11, align 8
  %420 = and i64 %419, 254
  %421 = trunc i64 %420 to i8
  %422 = call i32 @cte_out(i32 %417, i32 %418, i8 zeroext %421)
  %423 = load i32, i32* %4, align 4
  %424 = load i32, i32* @DS_RCBR, align 4
  %425 = add nsw i32 %424, 1
  %426 = load i64, i64* %11, align 8
  %427 = lshr i64 %426, 8
  %428 = trunc i64 %427 to i8
  %429 = call i32 @cte_out(i32 %423, i32 %425, i8 zeroext %428)
  %430 = load i32, i32* %4, align 4
  %431 = load i32, i32* @DS_RCBR, align 4
  %432 = add nsw i32 %431, 2
  %433 = load i64, i64* %11, align 8
  %434 = lshr i64 %433, 16
  %435 = trunc i64 %434 to i8
  %436 = call i32 @cte_out(i32 %430, i32 %432, i8 zeroext %435)
  %437 = load i32, i32* %4, align 4
  %438 = load i32, i32* @DS_RCBR, align 4
  %439 = add nsw i32 %438, 3
  %440 = load i64, i64* %11, align 8
  %441 = lshr i64 %440, 24
  %442 = trunc i64 %441 to i8
  %443 = call i32 @cte_out(i32 %437, i32 %439, i8 zeroext %442)
  %444 = load i32, i32* %4, align 4
  %445 = load i32, i32* @DS_TCBR, align 4
  %446 = load i64, i64* %11, align 8
  %447 = and i64 %446, 254
  %448 = trunc i64 %447 to i8
  %449 = call i32 @cte_out(i32 %444, i32 %445, i8 zeroext %448)
  %450 = load i32, i32* %4, align 4
  %451 = load i32, i32* @DS_TCBR, align 4
  %452 = add nsw i32 %451, 1
  %453 = load i64, i64* %11, align 8
  %454 = lshr i64 %453, 8
  %455 = trunc i64 %454 to i8
  %456 = call i32 @cte_out(i32 %450, i32 %452, i8 zeroext %455)
  %457 = load i32, i32* %4, align 4
  %458 = load i32, i32* @DS_TCBR, align 4
  %459 = add nsw i32 %458, 2
  %460 = load i64, i64* %11, align 8
  %461 = lshr i64 %460, 16
  %462 = trunc i64 %461 to i8
  %463 = call i32 @cte_out(i32 %457, i32 %459, i8 zeroext %462)
  %464 = load i32, i32* %4, align 4
  %465 = load i32, i32* @DS_TCBR, align 4
  %466 = add nsw i32 %465, 3
  %467 = load i64, i64* %11, align 8
  %468 = lshr i64 %467, 24
  %469 = trunc i64 %468 to i8
  %470 = call i32 @cte_out(i32 %464, i32 %466, i8 zeroext %469)
  %471 = load i32, i32* %4, align 4
  %472 = load i32, i32* @DS_CCR3, align 4
  %473 = load i8, i8* @CCR3_TSCLKM, align 1
  %474 = zext i8 %473 to i32
  %475 = load i8, i8* @CCR3_LIRESET, align 1
  %476 = zext i8 %475 to i32
  %477 = or i32 %474, %476
  %478 = trunc i32 %477 to i8
  %479 = call i32 @cte_out(i32 %471, i32 %472, i8 zeroext %478)
  %480 = load i32, i32* %4, align 4
  %481 = load i32, i32* @DS_CCR3, align 4
  %482 = load i8, i8* @CCR3_TSCLKM, align 1
  %483 = call i32 @cte_out(i32 %480, i32 %481, i8 zeroext %482)
  %484 = load i32, i32* %4, align 4
  %485 = load i32, i32* @DS_CCR3, align 4
  %486 = load i8, i8* @CCR3_TSCLKM, align 1
  %487 = zext i8 %486 to i32
  %488 = load i8, i8* @CCR3_ESRESET, align 1
  %489 = zext i8 %488 to i32
  %490 = or i32 %487, %489
  %491 = trunc i32 %490 to i8
  %492 = call i32 @cte_out(i32 %484, i32 %485, i8 zeroext %491)
  %493 = load i32, i32* %4, align 4
  %494 = load i32, i32* @DS_CCR3, align 4
  %495 = load i8, i8* @CCR3_TSCLKM, align 1
  %496 = call i32 @cte_out(i32 %493, i32 %494, i8 zeroext %495)
  %497 = load i32, i32* %4, align 4
  %498 = load i32, i32* @DS_SR1, align 4
  %499 = call i32 @cte_ins(i32 %497, i32 %498, i32 255)
  %500 = load i32, i32* %4, align 4
  %501 = load i32, i32* @DS_SR2, align 4
  %502 = call i32 @cte_ins(i32 %500, i32 %501, i32 255)
  %503 = load i32, i32* %4, align 4
  %504 = load i32, i32* @DS_RIR, align 4
  %505 = call i32 @cte_ins(i32 %503, i32 %504, i32 255)
  ret void
}

declare dso_local i32 @E1CS1(i32) #1

declare dso_local i32 @E1CS0(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @E1SR(i32) #1

declare dso_local i32 @cte_out(i32, i32, i8 zeroext) #1

declare dso_local i32 @cte_ins(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
