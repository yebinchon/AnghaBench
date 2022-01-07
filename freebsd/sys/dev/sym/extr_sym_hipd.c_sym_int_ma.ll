; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_int_ma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_int_ma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32*, i64, i64 }
%struct.sym_pmc = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_17__, %struct.sym_pmc, %struct.sym_pmc }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32 }

@nc_dsp = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@FE_DFBC = common dso_local global i32 0, align 4
@nc_dfbc = common dso_local global i32 0, align 4
@nc_dfifo = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@nc_sstat0 = common dso_local global i32 0, align 4
@OLF = common dso_local global i32 0, align 4
@FE_C10 = common dso_local global i32 0, align 4
@ORF = common dso_local global i32 0, align 4
@EWS = common dso_local global i32 0, align 4
@nc_sstat2 = common dso_local global i32 0, align 4
@OLF1 = common dso_local global i32 0, align 4
@ORF1 = common dso_local global i32 0, align 4
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@DEBUG_PHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"P%x%x RL=%d D=%d \00", align 1
@nc_sbcl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\0ACP=%p DSP=%x NXT=%x VDSP=%p CMD=%x \00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%s: interrupted SCRIPT address not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: SCSI phase error fixup: CCB already dequeued.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"OCMD=%x\0ATBLP=%p OLEN=%x OADR=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"internal error: cmd=%02x != %02x=(vdsp[0] >> 24)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"phase change %x-%x %d@%08x resid=%d.\0A\00", align 1
@HF_PRT = common dso_local global i32 0, align 4
@HF_IN_PM0 = common dso_local global i32 0, align 4
@HF_IN_PM1 = common dso_local global i32 0, align 4
@HF_DP_SAVED = common dso_local global i32 0, align 4
@HF_ACT_PM = common dso_local global i32 0, align 4
@pm0_data = common dso_local global i32 0, align 4
@pm1_data = common dso_local global i32 0, align 4
@dispatch = common dso_local global i32 0, align 4
@nc_scntl2 = common dso_local global i32 0, align 4
@WSR = common dso_local global i32 0, align 4
@wsr_ma_helper = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"PM %x %x %x / %x %x %x.\0A\00", align 1
@nc_temp = common dso_local global i32 0, align 4
@send_ident = common dso_local global i32 0, align 4
@NO_TAG = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@M_IDENTIFY = common dso_local global i32 0, align 4
@ident_break_atn = common dso_local global i32 0, align 4
@ident_break = common dso_local global i32 0, align 4
@send_wdtr = common dso_local global i32 0, align 4
@send_sdtr = common dso_local global i32 0, align 4
@send_ppr = common dso_local global i32 0, align 4
@nego_bad_phase = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @sym_int_ma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_ma(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sym_pmc*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %23 = load i32, i32* @nc_dsp, align 4
  %24 = call i32 @INL(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @nc_dbc, align 4
  %26 = call i32 @INL(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @nc_dsa, align 4
  %28 = call i32 @INL(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 24
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 16777215
  store i32 %32, i32* %4, align 4
  store i32 0, i32* %13, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.TYPE_20__* @sym_ccb_from_dsa(%struct.TYPE_19__* %33, i32 %34)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %18, align 8
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, 7
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %159

39:                                               ; preds = %1
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 5
  br i1 %42, label %43, label %159

43:                                               ; preds = %39
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FE_DFBC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @nc_dfbc, align 4
  %52 = call i32 @INW(i32 %51)
  store i32 %52, i32* %13, align 4
  br label %78

53:                                               ; preds = %43
  %54 = load i32, i32* @nc_dfifo, align 4
  %55 = call i32 @INL(i32 %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* @DFS, align 4
  %58 = shl i32 %57, 16
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load i32, i32* %21, align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 768
  %65 = load i32, i32* %21, align 4
  %66 = and i32 %65, 255
  %67 = or i32 %64, %66
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %67, %68
  %70 = and i32 %69, 1023
  store i32 %70, i32* %13, align 4
  br label %77

71:                                               ; preds = %53
  %72 = load i32, i32* %21, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* %4, align 4
  %75 = sub nsw i32 %73, %74
  %76 = and i32 %75, 127
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %71, %61
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @nc_sstat0, align 4
  %83 = call i32 @INB(i32 %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @OLF, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %78
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FE_C10, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @ORF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %91
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %109 = icmp ne %struct.TYPE_20__* %108, null
  br i1 %109, label %110, label %146

110:                                              ; preds = %107
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @EWS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %110
  %120 = load i32, i32* @nc_sstat2, align 4
  %121 = call i32 @INB(i32 %120)
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* @OLF1, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %119
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FE_C10, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* @ORF1, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145, %110, %107
  %147 = load i32, i32* @nc_ctest3, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CLF, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @OUTB(i32 %147, i32 %152)
  %154 = load i32, i32* @nc_stest3, align 4
  %155 = load i32, i32* @TE, align 4
  %156 = load i32, i32* @CSF, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @OUTB(i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %146, %39, %1
  %160 = load i32, i32* @DEBUG_FLAGS, align 4
  %161 = load i32, i32* @DEBUG_TINY, align 4
  %162 = load i32, i32* @DEBUG_PHASE, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %159
  %167 = load i32, i32* %14, align 4
  %168 = and i32 %167, 7
  %169 = load i32, i32* @nc_sbcl, align 4
  %170 = call i32 @INB(i32 %169)
  %171 = and i32 %170, 7
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %168, i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %166, %159
  store i32* null, i32** %8, align 8
  store i32 0, i32* %7, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %176, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %175
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %185, %188
  %190 = icmp sle i32 %182, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %181
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 8
  %194 = load i64, i64* %193, align 8
  %195 = inttoptr i64 %194 to i8*
  %196 = load i32, i32* %5, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %196, %199
  %201 = sub nsw i32 %200, 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %195, i64 %202
  %204 = bitcast i8* %203 to i32*
  store i32* %204, i32** %8, align 8
  %205 = load i32, i32* %5, align 4
  store i32 %205, i32* %7, align 4
  br label %238

206:                                              ; preds = %181, %175
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = icmp sgt i32 %207, %210
  br i1 %211, label %212, label %237

212:                                              ; preds = %206
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  %221 = icmp sle i32 %213, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %212
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 7
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to i8*
  %227 = load i32, i32* %5, align 4
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = sub nsw i32 %227, %230
  %232 = sub nsw i32 %231, 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %226, i64 %233
  %235 = bitcast i8* %234 to i32*
  store i32* %235, i32** %8, align 8
  %236 = load i32, i32* %5, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %222, %212, %206
  br label %238

238:                                              ; preds = %237, %191
  %239 = load i32, i32* @DEBUG_FLAGS, align 4
  %240 = load i32, i32* @DEBUG_PHASE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = load i32, i32* %14, align 4
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %244, i32 %245, i32 %246, i32* %247, i32 %248)
  br label %250

250:                                              ; preds = %243, %238
  %251 = load i32*, i32** %8, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %257, label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %255 = call i8* @sym_name(%struct.TYPE_19__* %254)
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %255)
  br label %640

257:                                              ; preds = %250
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %259 = icmp ne %struct.TYPE_20__* %258, null
  br i1 %259, label %264, label %260

260:                                              ; preds = %257
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %262 = call i8* @sym_name(%struct.TYPE_19__* %261)
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %262)
  br label %640

264:                                              ; preds = %257
  %265 = load i32*, i32** %8, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @scr_to_cpu(i32 %267)
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %14, align 4
  %270 = and i32 %269, 16
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %264
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 3
  %275 = bitcast %struct.TYPE_18__* %274 to i8*
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = bitcast i8* %278 to i32*
  store i32* %279, i32** %11, align 8
  %280 = load i32*, i32** %11, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @scr_to_cpu(i32 %282)
  store i32 %283, i32* %10, align 4
  %284 = load i32*, i32** %11, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @scr_to_cpu(i32 %286)
  store i32 %287, i32* %9, align 4
  br label %294

288:                                              ; preds = %264
  store i32* null, i32** %11, align 8
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @scr_to_cpu(i32 %291)
  %293 = and i32 %292, 16777215
  store i32 %293, i32* %10, align 4
  br label %294

294:                                              ; preds = %288, %272
  %295 = load i32, i32* @DEBUG_FLAGS, align 4
  %296 = load i32, i32* @DEBUG_PHASE, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %294
  %300 = load i32*, i32** %8, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @scr_to_cpu(i32 %302)
  %304 = ashr i32 %303, 24
  %305 = load i32*, i32** %11, align 8
  %306 = load i32, i32* %10, align 4
  %307 = load i32, i32* %9, align 4
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %304, i32* %305, i32 %306, i32 %307)
  br label %309

309:                                              ; preds = %299, %294
  %310 = load i32, i32* %14, align 4
  %311 = and i32 %310, 2
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i32, i32* %14, align 4
  br label %318

315:                                              ; preds = %309
  %316 = load i32, i32* %14, align 4
  %317 = and i32 %316, -5
  br label %318

318:                                              ; preds = %315, %313
  %319 = phi i32 [ %314, %313 ], [ %317, %315 ]
  %320 = load i32*, i32** %8, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @scr_to_cpu(i32 %322)
  %324 = ashr i32 %323, 24
  %325 = icmp ne i32 %319, %324
  br i1 %325, label %326, label %336

326:                                              ; preds = %318
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %328 = call i32 @PRINT_ADDR(%struct.TYPE_20__* %327)
  %329 = load i32, i32* %14, align 4
  %330 = load i32*, i32** %8, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @scr_to_cpu(i32 %332)
  %334 = lshr i32 %333, 24
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %329, i32 %334)
  br label %640

336:                                              ; preds = %318
  %337 = load i32, i32* %14, align 4
  %338 = and i32 %337, 2
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %352

340:                                              ; preds = %336
  %341 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %342 = call i32 @PRINT_ADDR(%struct.TYPE_20__* %341)
  %343 = load i32, i32* %14, align 4
  %344 = and i32 %343, 7
  %345 = load i32, i32* @nc_sbcl, align 4
  %346 = call i32 @INB(i32 %345)
  %347 = and i32 %346, 7
  %348 = load i32, i32* %10, align 4
  %349 = load i32, i32* %9, align 4
  %350 = load i32, i32* %4, align 4
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %344, i32 %347, i32 %348, i32 %349, i32 %350)
  br label %562

352:                                              ; preds = %336
  %353 = load i32, i32* @HF_PRT, align 4
  %354 = call i32 @INB(i32 %353)
  store i32 %354, i32* %16, align 4
  %355 = load i32, i32* %16, align 4
  store i32 %355, i32* %15, align 4
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* @HF_IN_PM0, align 4
  %358 = load i32, i32* @HF_IN_PM1, align 4
  %359 = or i32 %357, %358
  %360 = load i32, i32* @HF_DP_SAVED, align 4
  %361 = or i32 %359, %360
  %362 = and i32 %356, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %399

364:                                              ; preds = %352
  %365 = load i32, i32* %15, align 4
  %366 = load i32, i32* @HF_IN_PM0, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %376

369:                                              ; preds = %364
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @scr_to_cpu(i32 %374)
  store i32 %375, i32* %7, align 4
  br label %389

376:                                              ; preds = %364
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* @HF_IN_PM1, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %376
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @scr_to_cpu(i32 %386)
  store i32 %387, i32* %7, align 4
  br label %388

388:                                              ; preds = %381, %376
  br label %389

389:                                              ; preds = %388, %369
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* @HF_DP_SAVED, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %389
  %395 = load i32, i32* @HF_ACT_PM, align 4
  %396 = load i32, i32* %15, align 4
  %397 = xor i32 %396, %395
  store i32 %397, i32* %15, align 4
  br label %398

398:                                              ; preds = %394, %389
  br label %399

399:                                              ; preds = %398, %352
  %400 = load i32, i32* %15, align 4
  %401 = load i32, i32* @HF_ACT_PM, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %411, label %404

404:                                              ; preds = %399
  %405 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 3
  store %struct.sym_pmc* %407, %struct.sym_pmc** %17, align 8
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %409 = load i32, i32* @pm0_data, align 4
  %410 = call i32 @SCRIPTA_BA(%struct.TYPE_19__* %408, i32 %409)
  store i32 %410, i32* %12, align 4
  br label %418

411:                                              ; preds = %399
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 2
  store %struct.sym_pmc* %414, %struct.sym_pmc** %17, align 8
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %416 = load i32, i32* @pm1_data, align 4
  %417 = call i32 @SCRIPTA_BA(%struct.TYPE_19__* %415, i32 %416)
  store i32 %417, i32* %12, align 4
  br label %418

418:                                              ; preds = %411, %404
  %419 = load i32, i32* @HF_IN_PM0, align 4
  %420 = load i32, i32* @HF_IN_PM1, align 4
  %421 = or i32 %419, %420
  %422 = load i32, i32* @HF_DP_SAVED, align 4
  %423 = or i32 %421, %422
  %424 = xor i32 %423, -1
  %425 = load i32, i32* %15, align 4
  %426 = and i32 %425, %424
  store i32 %426, i32* %15, align 4
  %427 = load i32, i32* %15, align 4
  %428 = load i32, i32* %16, align 4
  %429 = icmp ne i32 %427, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %418
  %431 = load i32, i32* @HF_PRT, align 4
  %432 = load i32, i32* %15, align 4
  %433 = call i32 @OUTB(i32 %431, i32 %432)
  br label %434

434:                                              ; preds = %430, %418
  %435 = load i32, i32* %9, align 4
  %436 = load i32, i32* %10, align 4
  %437 = add nsw i32 %435, %436
  %438 = load i32, i32* %4, align 4
  %439 = sub nsw i32 %437, %438
  %440 = call i8* @cpu_to_scr(i32 %439)
  %441 = ptrtoint i8* %440 to i32
  %442 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %443 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 0
  store i32 %441, i32* %444, align 4
  %445 = load i32, i32* %4, align 4
  %446 = call i8* @cpu_to_scr(i32 %445)
  %447 = ptrtoint i8* %446 to i32
  %448 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %449 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i32 0, i32 1
  store i32 %447, i32* %450, align 4
  %451 = load i32, i32* %7, align 4
  %452 = call i8* @cpu_to_scr(i32 %451)
  %453 = ptrtoint i8* %452 to i32
  %454 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %455 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %454, i32 0, i32 0
  store i32 %453, i32* %455, align 4
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %457 = load i32, i32* @dispatch, align 4
  %458 = call i32 @SCRIPTA_BA(%struct.TYPE_19__* %456, i32 %457)
  store i32 %458, i32* %7, align 4
  %459 = load i32, i32* %14, align 4
  %460 = and i32 %459, 7
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %462, label %530

462:                                              ; preds = %434
  %463 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %464 = icmp ne %struct.TYPE_20__* %463, null
  br i1 %464, label %465, label %530

465:                                              ; preds = %462
  %466 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %467 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %466, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @EWS, align 4
  %472 = and i32 %470, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %530

474:                                              ; preds = %465
  %475 = load i32, i32* @nc_scntl2, align 4
  %476 = call i32 @INB(i32 %475)
  %477 = load i32, i32* @WSR, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %530

480:                                              ; preds = %474
  %481 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %482 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @scr_to_cpu(i32 %484)
  store i32 %485, i32* %22, align 4
  %486 = load i32, i32* %22, align 4
  %487 = call i8* @cpu_to_scr(i32 %486)
  %488 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %489 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %488, i32 0, i32 3
  %490 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i32 0, i32 1
  store i8* %487, i8** %491, align 8
  %492 = load i32, i32* %22, align 4
  %493 = add nsw i32 %492, 1
  %494 = call i8* @cpu_to_scr(i32 %493)
  %495 = ptrtoint i8* %494 to i32
  %496 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %497 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %497, i32 0, i32 0
  store i32 %495, i32* %498, align 4
  %499 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %500 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %499, i32 0, i32 1
  %501 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @scr_to_cpu(i32 %502)
  store i32 %503, i32* %22, align 4
  %504 = load i32, i32* %22, align 4
  %505 = and i32 %504, -16777216
  %506 = or i32 %505, 1
  %507 = call i8* @cpu_to_scr(i32 %506)
  %508 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %509 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %508, i32 0, i32 3
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %510, i32 0, i32 0
  store i8* %507, i8** %511, align 8
  %512 = load i32, i32* %22, align 4
  %513 = sub nsw i32 %512, 1
  %514 = call i8* @cpu_to_scr(i32 %513)
  %515 = ptrtoint i8* %514 to i32
  %516 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %517 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i32 0, i32 1
  store i32 %515, i32* %518, align 4
  %519 = load i32, i32* %22, align 4
  %520 = and i32 %519, 16777215
  %521 = icmp eq i32 %520, 1
  br i1 %521, label %522, label %526

522:                                              ; preds = %480
  %523 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %524 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  store i32 %525, i32* %12, align 4
  br label %526

526:                                              ; preds = %522, %480
  %527 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %528 = load i32, i32* @wsr_ma_helper, align 4
  %529 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %527, i32 %528)
  store i32 %529, i32* %7, align 4
  br label %530

530:                                              ; preds = %526, %474, %465, %462, %434
  %531 = load i32, i32* @DEBUG_FLAGS, align 4
  %532 = load i32, i32* @DEBUG_PHASE, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %556

535:                                              ; preds = %530
  %536 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %537 = call i32 @PRINT_ADDR(%struct.TYPE_20__* %536)
  %538 = load i32, i32* %16, align 4
  %539 = load i32, i32* %15, align 4
  %540 = load i32, i32* %12, align 4
  %541 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %542 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @scr_to_cpu(i32 %544)
  %546 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %547 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = call i32 @scr_to_cpu(i32 %549)
  %551 = load %struct.sym_pmc*, %struct.sym_pmc** %17, align 8
  %552 = getelementptr inbounds %struct.sym_pmc, %struct.sym_pmc* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @scr_to_cpu(i32 %553)
  %555 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %538, i32 %539, i32 %540, i32 %545, i32 %550, i32 %554)
  br label %556

556:                                              ; preds = %535, %530
  %557 = load i32, i32* @nc_temp, align 4
  %558 = load i32, i32* %12, align 4
  %559 = call i32 @OUTL(i32 %557, i32 %558)
  %560 = load i32, i32* %7, align 4
  %561 = call i32 @OUTL_DSP(i32 %560)
  br label %643

562:                                              ; preds = %340
  %563 = load i32, i32* %5, align 4
  %564 = sub nsw i32 %563, 8
  store i32 %564, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %565 = load i32, i32* %14, align 4
  %566 = and i32 %565, 7
  switch i32 %566, label %633 [
    i32 2, label %567
    i32 6, label %571
  ]

567:                                              ; preds = %562
  %568 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %569 = load i32, i32* @dispatch, align 4
  %570 = call i32 @SCRIPTA_BA(%struct.TYPE_19__* %568, i32 %569)
  store i32 %570, i32* %7, align 4
  br label %633

571:                                              ; preds = %562
  %572 = load i32, i32* %5, align 4
  %573 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %574 = load i32, i32* @send_ident, align 4
  %575 = call i32 @SCRIPTA_BA(%struct.TYPE_19__* %573, i32 %574)
  %576 = icmp eq i32 %572, %575
  br i1 %576, label %577, label %609

577:                                              ; preds = %571
  %578 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 8
  %581 = load i32, i32* @NO_TAG, align 4
  %582 = icmp ne i32 %580, %581
  br i1 %582, label %583, label %604

583:                                              ; preds = %577
  %584 = load i32, i32* %10, align 4
  %585 = load i32, i32* %4, align 4
  %586 = sub nsw i32 %584, %585
  %587 = icmp sle i32 %586, 3
  br i1 %587, label %588, label %604

588:                                              ; preds = %583
  %589 = load i32, i32* @HS_BUSY, align 4
  %590 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %591 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %590, i32 0, i32 1
  store i32 %589, i32* %591, align 4
  %592 = load i32, i32* @M_IDENTIFY, align 4
  %593 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %594 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = or i32 %592, %595
  %597 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %598 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %597, i32 0, i32 6
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 0
  store i32 %596, i32* %600, align 4
  %601 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %602 = load i32, i32* @ident_break_atn, align 4
  %603 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %601, i32 %602)
  store i32 %603, i32* %7, align 4
  br label %608

604:                                              ; preds = %583, %577
  %605 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %606 = load i32, i32* @ident_break, align 4
  %607 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %605, i32 %606)
  store i32 %607, i32* %7, align 4
  br label %608

608:                                              ; preds = %604, %588
  br label %632

609:                                              ; preds = %571
  %610 = load i32, i32* %5, align 4
  %611 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %612 = load i32, i32* @send_wdtr, align 4
  %613 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %611, i32 %612)
  %614 = icmp eq i32 %610, %613
  br i1 %614, label %627, label %615

615:                                              ; preds = %609
  %616 = load i32, i32* %5, align 4
  %617 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %618 = load i32, i32* @send_sdtr, align 4
  %619 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %617, i32 %618)
  %620 = icmp eq i32 %616, %619
  br i1 %620, label %627, label %621

621:                                              ; preds = %615
  %622 = load i32, i32* %5, align 4
  %623 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %624 = load i32, i32* @send_ppr, align 4
  %625 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %623, i32 %624)
  %626 = icmp eq i32 %622, %625
  br i1 %626, label %627, label %631

627:                                              ; preds = %621, %615, %609
  %628 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %629 = load i32, i32* @nego_bad_phase, align 4
  %630 = call i32 @SCRIPTB_BA(%struct.TYPE_19__* %628, i32 %629)
  store i32 %630, i32* %7, align 4
  br label %631

631:                                              ; preds = %627, %621
  br label %632

632:                                              ; preds = %631, %608
  br label %633

633:                                              ; preds = %562, %632, %567
  %634 = load i32, i32* %7, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %639

636:                                              ; preds = %633
  %637 = load i32, i32* %7, align 4
  %638 = call i32 @OUTL_DSP(i32 %637)
  br label %643

639:                                              ; preds = %633
  br label %640

640:                                              ; preds = %639, %326, %260, %253
  %641 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %642 = call i32 @sym_start_reset(%struct.TYPE_19__* %641)
  br label %643

643:                                              ; preds = %640, %636, %556
  ret void
}

declare dso_local i32 @INL(i32) #1

declare dso_local %struct.TYPE_20__* @sym_ccb_from_dsa(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @INW(i32) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sym_name(%struct.TYPE_19__*) #1

declare dso_local i32 @scr_to_cpu(i32) #1

declare dso_local i32 @PRINT_ADDR(%struct.TYPE_20__*) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @OUTL(i32, i32) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @sym_start_reset(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
