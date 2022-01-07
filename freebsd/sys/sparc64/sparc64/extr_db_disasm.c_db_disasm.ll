; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_disasm.c_db_disasm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_disasm.c_db_disasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sparc_insn = type { i32, i8*, i64 }

@sparc_i = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nop\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"undefined\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c",a\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c",pt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c",pn\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"      \09\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%%%s\00", align 1
@regs = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"%%f%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s0x%x\00", align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"%%asi\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"0x%-2.2x\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%%fcc%d\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"[%%%s + %%%s]\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"[%%%s %c 0x%x]\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" %%asi\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%%fsr\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"0x%xl\00", align 1
@ccodes = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [4 x i8] c"#%s\00", align 1
@prefetch = common dso_local global i32* null, align 8
@priv_regs = common dso_local global i32* null, align 8
@state_regs = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"%%hi(0x%x)\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"(UNKNOWN)\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @db_disasm(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sparc_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sparc_insn* bitcast (i32* @sparc_i to %struct.sparc_insn*), %struct.sparc_insn** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @db_get_value(i64 %14, i32 4, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 16777216
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, 4
  store i64 %21, i64* %3, align 8
  br label %514

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %167, %22
  %24 = load %struct.sparc_insn*, %struct.sparc_insn** %6, align 8
  %25 = getelementptr inbounds %struct.sparc_insn, %struct.sparc_insn* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %170

28:                                               ; preds = %23
  %29 = load %struct.sparc_insn*, %struct.sparc_insn** %6, align 8
  %30 = getelementptr inbounds %struct.sparc_insn, %struct.sparc_insn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = xor i32 %32, -1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = lshr i32 %34, 30
  %36 = and i32 %35, 3
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 -2147483648, i32* %8, align 4
  br label %155

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = lshr i32 %40, 30
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = lshr i32 %45, 22
  %47 = and i32 %46, 7
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32 @FORMAT2(i32 3, i32 7)
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %59

53:                                               ; preds = %44
  %54 = call i32 @FORMAT2(i32 3, i32 7)
  %55 = call i32 @EIF_F2_COND(i32 15)
  %56 = or i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %53, %49
  br label %154

60:                                               ; preds = %39
  %61 = load i32, i32* %9, align 4
  %62 = lshr i32 %61, 30
  %63 = and i32 %62, 3
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = lshr i32 %66, 19
  %68 = and i32 %67, 63
  %69 = icmp eq i32 %68, 52
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = call i32 @FORMAT3(i32 3, i32 63, i32 1)
  %72 = call i32 @EIF_F3_OPF(i32 511)
  %73 = or i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %153

76:                                               ; preds = %65, %60
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 30
  %79 = and i32 %78, 3
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = lshr i32 %82, 19
  %84 = and i32 %83, 63
  %85 = icmp eq i32 %84, 58
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = call i32 @FORMAT3(i32 3, i32 63, i32 1)
  %88 = call i32 @EIF_F4_TCOND(i32 15)
  %89 = or i32 %87, %88
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %152

92:                                               ; preds = %81, %76
  %93 = load i32, i32* %9, align 4
  %94 = lshr i32 %93, 30
  %95 = and i32 %94, 3
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = lshr i32 %98, 21
  %100 = and i32 %99, 15
  %101 = icmp eq i32 %100, 9
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = lshr i32 %103, 19
  %105 = and i32 %104, 3
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = call i32 @FORMAT3(i32 3, i32 63, i32 1)
  %109 = call i32 @EIF_F3_X(i32 1)
  %110 = or i32 %108, %109
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %151

113:                                              ; preds = %102, %97, %92
  %114 = load i32, i32* %9, align 4
  %115 = lshr i32 %114, 30
  %116 = and i32 %115, 3
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = lshr i32 %119, 19
  %121 = and i32 %120, 63
  %122 = icmp eq i32 %121, 44
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = call i32 @FORMAT3(i32 3, i32 63, i32 1)
  %125 = call i32 @COND2(i32 1, i32 15)
  %126 = or i32 %124, %125
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %150

129:                                              ; preds = %118, %113
  %130 = load i32, i32* %9, align 4
  %131 = lshr i32 %130, 30
  %132 = and i32 %131, 3
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %145

134:                                              ; preds = %129
  %135 = load i32, i32* %9, align 4
  %136 = lshr i32 %135, 19
  %137 = and i32 %136, 63
  %138 = icmp eq i32 %137, 53
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = call i32 @FORMAT3(i32 3, i32 63, i32 1)
  %141 = call i32 @COND2(i32 1, i32 15)
  %142 = or i32 %140, %141
  %143 = load i32, i32* %8, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %149

145:                                              ; preds = %134, %129
  %146 = call i32 @FORMAT3(i32 3, i32 63, i32 1)
  %147 = load i32, i32* %8, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %145, %139
  br label %150

150:                                              ; preds = %149, %123
  br label %151

151:                                              ; preds = %150, %107
  br label %152

152:                                              ; preds = %151, %86
  br label %153

153:                                              ; preds = %152, %70
  br label %154

154:                                              ; preds = %153, %59
  br label %155

155:                                              ; preds = %154, %38
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %7, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 1, i32* %10, align 4
  br label %170

167:                                              ; preds = %161, %155
  %168 = load %struct.sparc_insn*, %struct.sparc_insn** %6, align 8
  %169 = getelementptr inbounds %struct.sparc_insn, %struct.sparc_insn* %168, i32 1
  store %struct.sparc_insn* %169, %struct.sparc_insn** %6, align 8
  br label %23

170:                                              ; preds = %166, %23
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %175 = load i64, i64* %4, align 8
  %176 = add nsw i64 %175, 4
  store i64 %176, i64* %3, align 8
  br label %514

177:                                              ; preds = %170
  %178 = load %struct.sparc_insn*, %struct.sparc_insn** %6, align 8
  %179 = getelementptr inbounds %struct.sparc_insn, %struct.sparc_insn* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %180)
  %182 = load %struct.sparc_insn*, %struct.sparc_insn** %6, align 8
  %183 = getelementptr inbounds %struct.sparc_insn, %struct.sparc_insn* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  store i8* %184, i8** %11, align 8
  %185 = load i8*, i8** %11, align 8
  store i8* %185, i8** %12, align 8
  br label %186

186:                                              ; preds = %230, %177
  %187 = load i8*, i8** %12, align 8
  %188 = load i8, i8* %187, align 1
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %190, label %233

190:                                              ; preds = %186
  %191 = load i8*, i8** %12, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 44
  br i1 %194, label %195, label %229

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %223, %195
  %197 = load i8*, i8** %11, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = icmp ult i8* %197, %198
  br i1 %199, label %200, label %226

200:                                              ; preds = %196
  %201 = load i8*, i8** %11, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  switch i32 %203, label %222 [
    i32 97, label %204
    i32 112, label %212
  ]

204:                                              ; preds = %200
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @EIF_F2_A(i32 1)
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %204
  br label %222

212:                                              ; preds = %200
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @EIF_F2_P(i32 1)
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %221

219:                                              ; preds = %212
  %220 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %217
  br label %222

222:                                              ; preds = %200, %221, %211
  br label %223

223:                                              ; preds = %222
  %224 = load i8*, i8** %11, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %11, align 8
  br label %196

226:                                              ; preds = %196
  %227 = load i8*, i8** %11, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %11, align 8
  br label %233

229:                                              ; preds = %190
  br label %230

230:                                              ; preds = %229
  %231 = load i8*, i8** %12, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %12, align 8
  br label %186

233:                                              ; preds = %226, %186
  %234 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %235

235:                                              ; preds = %509, %233
  %236 = load i8*, i8** %11, align 8
  %237 = load i8, i8* %236, align 1
  %238 = icmp ne i8 %237, 0
  br i1 %238, label %239, label %510

239:                                              ; preds = %235
  %240 = load i8*, i8** %11, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  switch i32 %242, label %500 [
    i32 49, label %243
    i32 50, label %252
    i32 100, label %260
    i32 51, label %269
    i32 52, label %274
    i32 101, label %278
    i32 105, label %283
    i32 106, label %292
    i32 108, label %301
    i32 109, label %318
    i32 117, label %327
    i32 110, label %336
    i32 115, label %345
    i32 116, label %347
    i32 111, label %352
    i32 112, label %357
    i32 55, label %357
    i32 113, label %382
    i32 56, label %382
    i32 53, label %407
    i32 54, label %409
    i32 57, label %411
    i32 48, label %419
    i32 46, label %429
    i32 114, label %438
    i32 65, label %447
    i32 66, label %456
    i32 67, label %465
    i32 68, label %470
    i32 69, label %474
    i32 70, label %478
    i32 71, label %482
    i32 72, label %491
  ]

243:                                              ; preds = %239
  %244 = load i32*, i32** @regs, align 8
  %245 = load i32, i32* %7, align 4
  %246 = lshr i32 %245, 14
  %247 = and i32 %246, 31
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %250)
  br label %502

252:                                              ; preds = %239
  %253 = load i32*, i32** @regs, align 8
  %254 = load i32, i32* %7, align 4
  %255 = and i32 %254, 31
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %258)
  br label %502

260:                                              ; preds = %239
  %261 = load i32*, i32** @regs, align 8
  %262 = load i32, i32* %7, align 4
  %263 = lshr i32 %262, 25
  %264 = and i32 %263, 31
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %267)
  br label %502

269:                                              ; preds = %239
  %270 = load i32, i32* %7, align 4
  %271 = lshr i32 %270, 14
  %272 = and i32 %271, 31
  %273 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %272)
  br label %502

274:                                              ; preds = %239
  %275 = load i32, i32* %7, align 4
  %276 = and i32 %275, 31
  %277 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %276)
  br label %502

278:                                              ; preds = %239
  %279 = load i32, i32* %7, align 4
  %280 = lshr i32 %279, 25
  %281 = and i32 %280, 31
  %282 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %281)
  br label %502

283:                                              ; preds = %239
  %284 = load i32, i32* %7, align 4
  %285 = call i32 @IF_SIMM(i32 %284, i32 13)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @SIGN(i32 %286)
  %288 = load i32, i32* %13, align 4
  %289 = call i64 @abs(i32 %288)
  %290 = trunc i64 %289 to i32
  %291 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %287, i32 %290)
  br label %502

292:                                              ; preds = %239
  %293 = load i32, i32* %7, align 4
  %294 = call i32 @IF_SIMM(i32 %293, i32 11)
  store i32 %294, i32* %13, align 4
  %295 = load i32, i32* %13, align 4
  %296 = call i32 @SIGN(i32 %295)
  %297 = load i32, i32* %13, align 4
  %298 = call i64 @abs(i32 %297)
  %299 = trunc i64 %298 to i32
  %300 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %296, i32 %299)
  br label %502

301:                                              ; preds = %239
  %302 = load i32, i32* %7, align 4
  %303 = lshr i32 %302, 20
  %304 = and i32 %303, 3
  %305 = shl i32 %304, 13
  %306 = load i32, i32* %7, align 4
  %307 = and i32 %306, 8191
  %308 = or i32 %305, %307
  store i32 %308, i32* %13, align 4
  %309 = load i32, i32* %13, align 4
  %310 = call i32 @IF_SIMM(i32 %309, i32 16)
  store i32 %310, i32* %13, align 4
  %311 = load i64, i64* %4, align 8
  %312 = load i32, i32* %13, align 4
  %313 = mul nsw i32 4, %312
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %311, %314
  %316 = load i32, i32* @DB_STGY_ANY, align 4
  %317 = call i32 @db_printsym(i64 %315, i32 %316)
  br label %502

318:                                              ; preds = %239
  %319 = load i64, i64* %4, align 8
  %320 = load i32, i32* %7, align 4
  %321 = call i32 @IF_SIMM(i32 %320, i32 22)
  %322 = mul nsw i32 4, %321
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %319, %323
  %325 = load i32, i32* @DB_STGY_ANY, align 4
  %326 = call i32 @db_printsym(i64 %324, i32 %325)
  br label %502

327:                                              ; preds = %239
  %328 = load i64, i64* %4, align 8
  %329 = load i32, i32* %7, align 4
  %330 = call i32 @IF_SIMM(i32 %329, i32 19)
  %331 = mul nsw i32 4, %330
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %328, %332
  %334 = load i32, i32* @DB_STGY_ANY, align 4
  %335 = call i32 @db_printsym(i64 %333, i32 %334)
  br label %502

336:                                              ; preds = %239
  %337 = load i64, i64* %4, align 8
  %338 = load i32, i32* %7, align 4
  %339 = call i32 @IF_SIMM(i32 %338, i32 30)
  %340 = mul nsw i32 4, %339
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %337, %341
  %343 = load i32, i32* @DB_STGY_PROC, align 4
  %344 = call i32 @db_printsym(i64 %342, i32 %343)
  br label %502

345:                                              ; preds = %239
  %346 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %502

347:                                              ; preds = %239
  %348 = load i32, i32* %7, align 4
  %349 = lshr i32 %348, 5
  %350 = and i32 %349, 255
  %351 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %350)
  br label %502

352:                                              ; preds = %239
  %353 = load i32, i32* %7, align 4
  %354 = lshr i32 %353, 25
  %355 = and i32 %354, 3
  %356 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %355)
  br label %502

357:                                              ; preds = %239, %239
  %358 = load i32*, i32** @regs, align 8
  %359 = load i32, i32* %7, align 4
  %360 = lshr i32 %359, 14
  %361 = and i32 %360, 31
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %358, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = load i32*, i32** @regs, align 8
  %366 = load i32, i32* %7, align 4
  %367 = and i32 %366, 31
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %364, i32 %370)
  %372 = load i8*, i8** %11, align 8
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp eq i32 %374, 55
  br i1 %375, label %376, label %381

376:                                              ; preds = %357
  %377 = load i32, i32* %7, align 4
  %378 = lshr i32 %377, 5
  %379 = and i32 %378, 255
  %380 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %379)
  br label %381

381:                                              ; preds = %376, %357
  br label %502

382:                                              ; preds = %239, %239
  %383 = load i32, i32* %7, align 4
  %384 = call i32 @IF_SIMM(i32 %383, i32 13)
  store i32 %384, i32* %13, align 4
  %385 = load i32*, i32** @regs, align 8
  %386 = load i32, i32* %7, align 4
  %387 = lshr i32 %386, 14
  %388 = and i32 %387, 31
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %385, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %13, align 4
  %393 = icmp slt i32 %392, 0
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 45, i32 43
  %396 = load i32, i32* %13, align 4
  %397 = call i64 @abs(i32 %396)
  %398 = trunc i64 %397 to i32
  %399 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %391, i32 %395, i32 %398)
  %400 = load i8*, i8** %11, align 8
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = icmp eq i32 %402, 56
  br i1 %403, label %404, label %406

404:                                              ; preds = %382
  %405 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %406

406:                                              ; preds = %404, %382
  br label %502

407:                                              ; preds = %239
  %408 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %502

409:                                              ; preds = %239
  %410 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  br label %502

411:                                              ; preds = %239
  %412 = load i32, i32* %7, align 4
  %413 = and i32 %412, 15
  %414 = load i32, i32* %7, align 4
  %415 = lshr i32 %414, 4
  %416 = and i32 %415, 7
  %417 = or i32 %413, %416
  %418 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %417)
  br label %502

419:                                              ; preds = %239
  %420 = load i32*, i32** @ccodes, align 8
  %421 = load i32, i32* %7, align 4
  %422 = lshr i32 %421, 11
  %423 = and i32 %422, 3
  %424 = add i32 %423, 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %420, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %427)
  br label %502

429:                                              ; preds = %239
  %430 = load i32*, i32** @ccodes, align 8
  %431 = load i32, i32* %7, align 4
  %432 = lshr i32 %431, 11
  %433 = and i32 %432, 7
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %430, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %436)
  br label %502

438:                                              ; preds = %239
  %439 = load i32*, i32** @prefetch, align 8
  %440 = load i32, i32* %7, align 4
  %441 = lshr i32 %440, 25
  %442 = and i32 %441, 31
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %439, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %445)
  br label %502

447:                                              ; preds = %239
  %448 = load i32*, i32** @priv_regs, align 8
  %449 = load i32, i32* %7, align 4
  %450 = lshr i32 %449, 14
  %451 = and i32 %450, 31
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %448, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %454)
  br label %502

456:                                              ; preds = %239
  %457 = load i32*, i32** @state_regs, align 8
  %458 = load i32, i32* %7, align 4
  %459 = lshr i32 %458, 14
  %460 = and i32 %459, 31
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %457, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %463)
  br label %502

465:                                              ; preds = %239
  %466 = load i32, i32* %7, align 4
  %467 = and i32 %466, 4194303
  %468 = shl i32 %467, 10
  %469 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %468)
  br label %502

470:                                              ; preds = %239
  %471 = load i32, i32* %7, align 4
  %472 = and i32 %471, 31
  %473 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %472)
  br label %502

474:                                              ; preds = %239
  %475 = load i32, i32* %7, align 4
  %476 = and i32 %475, 63
  %477 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %476)
  br label %502

478:                                              ; preds = %239
  %479 = load i32, i32* %7, align 4
  %480 = and i32 %479, 63
  %481 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 %480)
  br label %502

482:                                              ; preds = %239
  %483 = load i32*, i32** @priv_regs, align 8
  %484 = load i32, i32* %7, align 4
  %485 = lshr i32 %484, 25
  %486 = and i32 %485, 31
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %483, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %489)
  br label %502

491:                                              ; preds = %239
  %492 = load i32*, i32** @state_regs, align 8
  %493 = load i32, i32* %7, align 4
  %494 = lshr i32 %493, 25
  %495 = and i32 %494, 31
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %492, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %498)
  br label %502

500:                                              ; preds = %239
  %501 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  br label %502

502:                                              ; preds = %500, %491, %482, %478, %474, %470, %465, %456, %447, %438, %429, %419, %411, %409, %407, %406, %381, %352, %347, %345, %336, %327, %318, %301, %292, %283, %278, %274, %269, %260, %252, %243
  %503 = load i8*, i8** %11, align 8
  %504 = getelementptr inbounds i8, i8* %503, i32 1
  store i8* %504, i8** %11, align 8
  %505 = load i8, i8* %504, align 1
  %506 = icmp ne i8 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %502
  %508 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  br label %509

509:                                              ; preds = %507, %502
  br label %235

510:                                              ; preds = %235
  %511 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  %512 = load i64, i64* %4, align 8
  %513 = add nsw i64 %512, 4
  store i64 %513, i64* %3, align 8
  br label %514

514:                                              ; preds = %510, %173, %18
  %515 = load i64, i64* %3, align 8
  ret i64 %515
}

declare dso_local i32 @db_get_value(i64, i32, i32) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @FORMAT2(i32, i32) #1

declare dso_local i32 @EIF_F2_COND(i32) #1

declare dso_local i32 @FORMAT3(i32, i32, i32) #1

declare dso_local i32 @EIF_F3_OPF(i32) #1

declare dso_local i32 @EIF_F4_TCOND(i32) #1

declare dso_local i32 @EIF_F3_X(i32) #1

declare dso_local i32 @COND2(i32, i32) #1

declare dso_local i32 @EIF_F2_A(i32) #1

declare dso_local i32 @EIF_F2_P(i32) #1

declare dso_local i32 @IF_SIMM(i32, i32) #1

declare dso_local i32 @SIGN(i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @db_printsym(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
