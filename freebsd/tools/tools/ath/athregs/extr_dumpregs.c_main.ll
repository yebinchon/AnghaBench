; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ath_diag = type { i32, i32, i32, i32*, i32, i64 }
%struct.ath_driver_req = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"i:aAbdkmNqxz\00", align 1
@DUMP_ALL = common dso_local global i32 0, align 4
@DUMP_BASEBAND = common dso_local global i32 0, align 4
@DUMP_DCU = common dso_local global i32 0, align 4
@DUMP_KEYCACHE = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@DUMP_BASIC = common dso_local global i32 0, align 4
@DUMP_QCU = common dso_local global i32 0, align 4
@DUMP_XR = common dso_local global i32 0, align 4
@DUMP_INTERRUPT = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@HAL_DIAG_REVS = common dso_local global i32 0, align 4
@SIOCGATHDIAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"no registers are known for this part (devid 0x%x mac %d.%d phy %d)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Cannot malloc output buffer, size %u\0A\00", align 1
@HAL_DIAG_REGS = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"Warning, botched return data;register at offset 0x%x not present\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ath_diag, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ath_driver_req, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i32 @ath_driver_req_init(%struct.ath_driver_req* %14)
  %18 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %21, %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %69, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %12, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %67 [
    i32 97, label %31
    i32 65, label %35
    i32 98, label %36
    i32 100, label %40
    i32 107, label %44
    i32 105, label %48
    i32 109, label %50
    i32 78, label %54
    i32 113, label %55
    i32 120, label %59
    i32 122, label %63
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @DUMP_ALL, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %69

35:                                               ; preds = %29
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  br label %69

36:                                               ; preds = %29
  %37 = load i32, i32* @DUMP_BASEBAND, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %69

40:                                               ; preds = %29
  %41 = load i32, i32* @DUMP_DCU, align 4
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %11, align 4
  br label %69

44:                                               ; preds = %29
  %45 = load i32, i32* @DUMP_KEYCACHE, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %69

48:                                               ; preds = %29
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** %7, align 8
  br label %69

50:                                               ; preds = %29
  %51 = load i32, i32* @DUMP_BASIC, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %69

54:                                               ; preds = %29
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1), align 4
  br label %69

55:                                               ; preds = %29
  %56 = load i32, i32* @DUMP_QCU, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %69

59:                                               ; preds = %29
  %60 = load i32, i32* @DUMP_XR, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %69

63:                                               ; preds = %29
  %64 = load i32, i32* @DUMP_INTERRUPT, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %69

67:                                               ; preds = %29
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %63, %59, %55, %54, %50, %48, %44, %40, %36, %35, %31
  br label %24

70:                                               ; preds = %24
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @ath_driver_req_open(%struct.ath_driver_req* %14, i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @exit(i32 127) #3
  unreachable

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @strncpy(i32 %78, i8* %79, i32 4)
  %81 = load i64, i64* @optind, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = sub nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %4, align 4
  %86 = load i64, i64* @optind, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 %86
  store i8** %88, i8*** %5, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* @DUMP_BASIC, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %91, %76
  %94 = load i32, i32* @HAL_DIAG_REVS, align 4
  %95 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 3
  store i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 3, i32 0), i32** %96, align 8
  %97 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 1
  store i32 16, i32* %97, align 4
  %98 = load i32, i32* @SIOCGATHDIAG, align 4
  %99 = call i64 @ath_driver_req_fetch_diag(%struct.ath_driver_req* %14, i32 %98, %struct.ath_diag* %6)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %93
  %106 = load i32, i32* %11, align 4
  %107 = call i64 @ath_hal_setupregs(%struct.ath_diag* %6, i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 3, i32 3), align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 3, i32 2), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 3, i32 1), align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 3, i32 0), align 8
  %114 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %109, %105
  %116 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @ath_hal_setupdiagregs(i32* %118, i32 %123)
  %125 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @malloc(i32 %127)
  %129 = inttoptr i64 %128 to i8*
  %130 = bitcast i8* %129 to i32*
  %131 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 3
  store i32* %130, i32** %131, align 8
  %132 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %115
  %136 = load i32, i32* @stderr, align 4
  %137 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = call i32 @exit(i32 -1) #3
  unreachable

141:                                              ; preds = %115
  %142 = load i32, i32* @HAL_DIAG_REGS, align 4
  %143 = load i32, i32* @ATH_DIAG_IN, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @ATH_DIAG_DYN, align 4
  %146 = or i32 %144, %145
  %147 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 0
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* @SIOCGATHDIAG, align 4
  %149 = call i64 @ath_driver_req_fetch_diag(%struct.ath_driver_req* %14, i32 %148, %struct.ath_diag* %6)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %151, %141
  %156 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  store i32* %157, i32** %9, align 8
  %158 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %6, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32* %163, i32** %10, align 8
  br label %164

164:                                              ; preds = %205, %155
  %165 = load i32*, i32** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = icmp ult i32* %165, %166
  br i1 %167, label %168, label %206

168:                                              ; preds = %164
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %15, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %16, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %9, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %9, align 8
  %179 = load i32, i32* %15, align 4
  %180 = ashr i32 %179, 2
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %16, align 4
  %182 = ashr i32 %181, 2
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %201, %168
  %184 = load i32*, i32** %9, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = icmp uge i32* %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = load i32, i32* @stderr, align 4
  %189 = load i32, i32* %15, align 4
  %190 = shl i32 %189, 2
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %190)
  br label %205

192:                                              ; preds = %183
  %193 = load i32*, i32** %9, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %9, align 8
  %195 = load i32, i32* %193, align 4
  %196 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 2), align 8
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %195, i32* %200, align 4
  br label %201

201:                                              ; preds = %192
  %202 = load i32, i32* %15, align 4
  %203 = load i32, i32* %16, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %183, label %205

205:                                              ; preds = %201, %187
  br label %164

206:                                              ; preds = %164
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* @DUMP_BASIC, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i32, i32* @stdout, align 4
  %213 = load i32, i32* @DUMP_BASIC, align 4
  %214 = call i32 @ath_hal_dumpregs(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %206
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @DUMP_INTERRUPT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %243

220:                                              ; preds = %215
  %221 = load i32, i32* @DUMP_INTERRUPT, align 4
  %222 = call i64 @ath_hal_anyregs(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %220
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @DUMP_BASIC, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = call i32 @putchar(i8 signext 10)
  br label %231

231:                                              ; preds = %229, %224
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i32, i32* @stdout, align 4
  %236 = load i32, i32* @DUMP_INTERRUPT, align 4
  %237 = call i32 @ath_hal_dumpregs(i32 %235, i32 %236)
  br label %242

238:                                              ; preds = %231
  %239 = load i32, i32* @stdout, align 4
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @ath_hal_dumpint(i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %238, %234
  br label %243

243:                                              ; preds = %242, %220, %215
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* @DUMP_QCU, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %273

248:                                              ; preds = %243
  %249 = load i32, i32* @DUMP_QCU, align 4
  %250 = call i64 @ath_hal_anyregs(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %248
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* @DUMP_BASIC, align 4
  %255 = load i32, i32* @DUMP_INTERRUPT, align 4
  %256 = or i32 %254, %255
  %257 = and i32 %253, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = call i32 @putchar(i8 signext 10)
  br label %261

261:                                              ; preds = %259, %252
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load i32, i32* @stdout, align 4
  %266 = load i32, i32* @DUMP_QCU, align 4
  %267 = call i32 @ath_hal_dumpregs(i32 %265, i32 %266)
  br label %272

268:                                              ; preds = %261
  %269 = load i32, i32* @stdout, align 4
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @ath_hal_dumpqcu(i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %268, %264
  br label %273

273:                                              ; preds = %272, %248, %243
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* @DUMP_DCU, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %305

278:                                              ; preds = %273
  %279 = load i32, i32* @DUMP_DCU, align 4
  %280 = call i64 @ath_hal_anyregs(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %305

282:                                              ; preds = %278
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* @DUMP_BASIC, align 4
  %285 = load i32, i32* @DUMP_INTERRUPT, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* @DUMP_QCU, align 4
  %288 = or i32 %286, %287
  %289 = and i32 %283, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %282
  %292 = call i32 @putchar(i8 signext 10)
  br label %293

293:                                              ; preds = %291, %282
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = load i32, i32* @stdout, align 4
  %298 = load i32, i32* @DUMP_DCU, align 4
  %299 = call i32 @ath_hal_dumpregs(i32 %297, i32 %298)
  br label %304

300:                                              ; preds = %293
  %301 = load i32, i32* @stdout, align 4
  %302 = load i32, i32* %11, align 4
  %303 = call i32 @ath_hal_dumpdcu(i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %300, %296
  br label %305

305:                                              ; preds = %304, %278, %273
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @DUMP_KEYCACHE, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %305
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %330

313:                                              ; preds = %310
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @DUMP_BASIC, align 4
  %316 = load i32, i32* @DUMP_INTERRUPT, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @DUMP_QCU, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* @DUMP_DCU, align 4
  %321 = or i32 %319, %320
  %322 = and i32 %314, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %313
  %325 = call i32 @putchar(i8 signext 10)
  br label %326

326:                                              ; preds = %324, %313
  %327 = load i32, i32* @stdout, align 4
  %328 = load i32, i32* @DUMP_KEYCACHE, align 4
  %329 = call i32 @ath_hal_dumpregs(i32 %327, i32 %328)
  br label %333

330:                                              ; preds = %310
  %331 = load i32, i32* @stdout, align 4
  %332 = call i32 @ath_hal_dumpkeycache(i32 %331, i32 128)
  br label %333

333:                                              ; preds = %330, %326
  br label %334

334:                                              ; preds = %333, %305
  %335 = load i32, i32* %11, align 4
  %336 = load i32, i32* @DUMP_BASEBAND, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %352

339:                                              ; preds = %334
  %340 = load i32, i32* %11, align 4
  %341 = load i32, i32* @DUMP_BASEBAND, align 4
  %342 = xor i32 %341, -1
  %343 = and i32 %340, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %339
  %346 = load i32, i32* @stdout, align 4
  %347 = call i32 (i32, i8*, ...) @fprintf(i32 %346, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %348

348:                                              ; preds = %345, %339
  %349 = load i32, i32* @stdout, align 4
  %350 = load i32, i32* %11, align 4
  %351 = call i32 @ath_hal_dumpbb(i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %334
  %353 = call i32 @ath_driver_req_close(%struct.ath_driver_req* %14)
  ret i32 0
}

declare dso_local i32 @ath_driver_req_init(%struct.ath_driver_req*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @ath_driver_req_open(%struct.ath_driver_req*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ath_driver_req_fetch_diag(%struct.ath_driver_req*, i32, %struct.ath_diag*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i64 @ath_hal_setupregs(%struct.ath_diag*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ath_hal_setupdiagregs(i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @ath_hal_dumpregs(i32, i32) #1

declare dso_local i64 @ath_hal_anyregs(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @ath_hal_dumpint(i32, i32) #1

declare dso_local i32 @ath_hal_dumpqcu(i32, i32) #1

declare dso_local i32 @ath_hal_dumpdcu(i32, i32) #1

declare dso_local i32 @ath_hal_dumpkeycache(i32, i32) #1

declare dso_local i32 @ath_hal_dumpbb(i32, i32) #1

declare dso_local i32 @ath_driver_req_close(%struct.ath_driver_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
