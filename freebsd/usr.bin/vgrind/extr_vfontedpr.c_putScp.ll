; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_putScp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_putScp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@s_start = common dso_local global i8* null, align 8
@_escaped = common dso_local global i32 0, align 4
@nokeyw = common dso_local global i64 0, align 8
@incomm = common dso_local global i32 0, align 4
@instr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"'FN \00", align 1
@pname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@psptr = common dso_local global i64 0, align 8
@PSMAX = common dso_local global i64 0, align 8
@pstack = common dso_local global i8** null, align 8
@PNAMELEN = common dso_local global i64 0, align 8
@blklevel = common dso_local global i64 0, align 8
@plstack = common dso_local global i64* null, align 8
@inchr = common dso_local global i32 0, align 4
@l_blkend = common dso_local global i32 0, align 4
@l_blkbeg = common dso_local global i32 0, align 4
@l_combeg = common dso_local global i32 0, align 4
@l_acmbeg = common dso_local global i32 0, align 4
@l_strbeg = common dso_local global i32 0, align 4
@l_chrbeg = common dso_local global i32 0, align 4
@l_nocom = common dso_local global i32 0, align 4
@STANDARD = common dso_local global i64 0, align 8
@comtype = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\\c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\\c\0A'+C\0A\00", align 1
@ALTERNATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"\\c\0A'-F\0A\00", align 1
@prccont = common dso_local global i32 0, align 4
@l_comend = common dso_local global i32 0, align 4
@l_acmend = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"\\c\0A'-C\0A\00", align 1
@l_strend = common dso_local global i32 0, align 4
@l_chrend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @putScp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putScp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  store i8* %13, i8** %3, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i8*, i8** %2, align 8
  store i8* %18, i8** @s_start, align 8
  store i32 0, i32* @_escaped, align 4
  %19 = load i64, i64* @nokeyw, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @incomm, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @instr, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %1
  br label %62

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @isproc(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = call i32 @ps(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = load i8*, i8** @pname, align 8
  %35 = call i32 @ps(i8* %34)
  %36 = call i32 @ps(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* @psptr, align 8
  %38 = load i64, i64* @PSMAX, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %32
  %41 = load i64, i64* @psptr, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* @psptr, align 8
  %43 = load i8**, i8*** @pstack, align 8
  %44 = load i64, i64* @psptr, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @pname, align 8
  %48 = load i64, i64* @PNAMELEN, align 8
  %49 = call i32 @strncpy(i8* %46, i8* %47, i64 %48)
  %50 = load i8**, i8*** @pstack, align 8
  %51 = load i64, i64* @psptr, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* @PNAMELEN, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i64, i64* @blklevel, align 8
  %57 = load i64*, i64** @plstack, align 8
  %58 = load i64, i64* @psptr, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %40, %32
  br label %61

61:                                               ; preds = %60, %28
  br label %62

62:                                               ; preds = %61, %27
  br label %63

63:                                               ; preds = %462, %62
  %64 = load i32, i32* @incomm, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %334, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @instr, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %334, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @inchr, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %334, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* @l_blkend, align 4
  %75 = call i8* @expmatch(i8* %73, i32 %74, i8* %17)
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* @l_blkbeg, align 4
  %78 = call i8* @expmatch(i8* %76, i32 %77, i8* %17)
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* @l_combeg, align 4
  %81 = call i8* @expmatch(i8* %79, i32 %80, i8* %17)
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* @l_acmbeg, align 4
  %84 = call i8* @expmatch(i8* %82, i32 %83, i8* %17)
  store i8* %84, i8** %7, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* @l_strbeg, align 4
  %87 = call i8* @expmatch(i8* %85, i32 %86, i8* %17)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* @l_chrbeg, align 4
  %90 = call i8* @expmatch(i8* %88, i32 %89, i8* %17)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %3, align 8
  %92 = load i32, i32* @l_nocom, align 4
  %93 = call i8* @expmatch(i8* %91, i32 %92, i8* %17)
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %117

96:                                               ; preds = %72
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = icmp ule i8* %97, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %100, %96
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = icmp ule i8* %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i8*, i8** %7, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107, %103
  %111 = load i8*, i8** %3, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 -1
  %114 = call i32 @putKcp(i8* %111, i8* %113, i32 0)
  %115 = load i8*, i8** %12, align 8
  store i8* %115, i8** %3, align 8
  br label %462

116:                                              ; preds = %107, %100
  br label %117

117:                                              ; preds = %116, %72
  %118 = load i8*, i8** %6, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %170

120:                                              ; preds = %117
  %121 = load i8*, i8** %6, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = icmp ult i8* %121, %122
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load i8*, i8** %8, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %169

127:                                              ; preds = %124, %120
  %128 = load i8*, i8** %6, align 8
  %129 = load i8*, i8** %7, align 8
  %130 = icmp ult i8* %128, %129
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %169

134:                                              ; preds = %131, %127
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ult i8* %135, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %9, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %169

141:                                              ; preds = %138, %134
  %142 = load i8*, i8** %6, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = icmp ult i8* %142, %143
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load i8*, i8** %10, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %169

148:                                              ; preds = %145, %141
  %149 = load i8*, i8** %6, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = icmp ult i8* %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %11, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %169

155:                                              ; preds = %152, %148
  %156 = load i8*, i8** %3, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 -1
  %159 = call i32 @putKcp(i8* %156, i8* %158, i32 0)
  %160 = load i8*, i8** %6, align 8
  store i8* %160, i8** %3, align 8
  store i32 1, i32* @incomm, align 4
  %161 = load i64, i64* @STANDARD, align 8
  store i64 %161, i64* @comtype, align 8
  %162 = load i8*, i8** %3, align 8
  %163 = load i8*, i8** %2, align 8
  %164 = icmp ne i8* %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %155
  %166 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %155
  %168 = call i32 @ps(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %462

169:                                              ; preds = %152, %145, %138, %131, %124
  br label %170

170:                                              ; preds = %169, %117
  %171 = load i8*, i8** %7, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %216

173:                                              ; preds = %170
  %174 = load i8*, i8** %7, align 8
  %175 = load i8*, i8** %8, align 8
  %176 = icmp ult i8* %174, %175
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i8*, i8** %8, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %215

180:                                              ; preds = %177, %173
  %181 = load i8*, i8** %7, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = icmp ult i8* %181, %182
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %9, align 8
  %186 = icmp eq i8* %185, null
  br i1 %186, label %187, label %215

187:                                              ; preds = %184, %180
  %188 = load i8*, i8** %7, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = icmp ult i8* %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load i8*, i8** %10, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %215

194:                                              ; preds = %191, %187
  %195 = load i8*, i8** %7, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = icmp ult i8* %195, %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i8*, i8** %11, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %215

201:                                              ; preds = %198, %194
  %202 = load i8*, i8** %3, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 -1
  %205 = call i32 @putKcp(i8* %202, i8* %204, i32 0)
  %206 = load i8*, i8** %7, align 8
  store i8* %206, i8** %3, align 8
  store i32 1, i32* @incomm, align 4
  %207 = load i64, i64* @ALTERNATE, align 8
  store i64 %207, i64* @comtype, align 8
  %208 = load i8*, i8** %3, align 8
  %209 = load i8*, i8** %2, align 8
  %210 = icmp ne i8* %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %201
  %212 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %201
  %214 = call i32 @ps(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %462

215:                                              ; preds = %198, %191, %184, %177
  br label %216

216:                                              ; preds = %215, %170
  %217 = load i8*, i8** %8, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %247

219:                                              ; preds = %216
  %220 = load i8*, i8** %8, align 8
  %221 = load i8*, i8** %9, align 8
  %222 = icmp ult i8* %220, %221
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = load i8*, i8** %9, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %246

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %8, align 8
  %228 = load i8*, i8** %10, align 8
  %229 = icmp ult i8* %227, %228
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = load i8*, i8** %10, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %246

233:                                              ; preds = %230, %226
  %234 = load i8*, i8** %8, align 8
  %235 = load i8*, i8** %11, align 8
  %236 = icmp ult i8* %234, %235
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load i8*, i8** %11, align 8
  %239 = icmp eq i8* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %237, %233
  %241 = load i8*, i8** %3, align 8
  %242 = load i8*, i8** %8, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 -1
  %244 = call i32 @putKcp(i8* %241, i8* %243, i32 0)
  %245 = load i8*, i8** %8, align 8
  store i8* %245, i8** %3, align 8
  store i32 1, i32* @instr, align 4
  br label %462

246:                                              ; preds = %237, %230, %223
  br label %247

247:                                              ; preds = %246, %216
  %248 = load i8*, i8** %9, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %271

250:                                              ; preds = %247
  %251 = load i8*, i8** %9, align 8
  %252 = load i8*, i8** %10, align 8
  %253 = icmp ult i8* %251, %252
  br i1 %253, label %257, label %254

254:                                              ; preds = %250
  %255 = load i8*, i8** %10, align 8
  %256 = icmp eq i8* %255, null
  br i1 %256, label %257, label %270

257:                                              ; preds = %254, %250
  %258 = load i8*, i8** %9, align 8
  %259 = load i8*, i8** %11, align 8
  %260 = icmp ult i8* %258, %259
  br i1 %260, label %264, label %261

261:                                              ; preds = %257
  %262 = load i8*, i8** %11, align 8
  %263 = icmp eq i8* %262, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %261, %257
  %265 = load i8*, i8** %3, align 8
  %266 = load i8*, i8** %9, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 -1
  %268 = call i32 @putKcp(i8* %265, i8* %267, i32 0)
  %269 = load i8*, i8** %9, align 8
  store i8* %269, i8** %3, align 8
  store i32 1, i32* @inchr, align 4
  br label %462

270:                                              ; preds = %261, %254
  br label %271

271:                                              ; preds = %270, %247
  %272 = load i8*, i8** %11, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %322

274:                                              ; preds = %271
  %275 = load i8*, i8** %11, align 8
  %276 = load i8*, i8** %10, align 8
  %277 = icmp ult i8* %275, %276
  br i1 %277, label %281, label %278

278:                                              ; preds = %274
  %279 = load i8*, i8** %10, align 8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %321

281:                                              ; preds = %278, %274
  %282 = load i8*, i8** %3, align 8
  %283 = load i8*, i8** %11, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 -1
  %285 = call i32 @putKcp(i8* %282, i8* %284, i32 0)
  %286 = load i8*, i8** %11, align 8
  store i8* %286, i8** %3, align 8
  %287 = load i64, i64* @blklevel, align 8
  %288 = icmp sgt i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = load i64, i64* @blklevel, align 8
  %291 = add nsw i64 %290, -1
  store i64 %291, i64* @blklevel, align 8
  br label %292

292:                                              ; preds = %289, %281
  %293 = load i64, i64* @psptr, align 8
  %294 = icmp uge i64 %293, 0
  br i1 %294, label %295, label %320

295:                                              ; preds = %292
  %296 = load i64*, i64** @plstack, align 8
  %297 = load i64, i64* @psptr, align 8
  %298 = getelementptr inbounds i64, i64* %296, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @blklevel, align 8
  %301 = icmp sge i64 %299, %300
  br i1 %301, label %302, label %320

302:                                              ; preds = %295
  %303 = load i8*, i8** %3, align 8
  %304 = load i8*, i8** %2, align 8
  %305 = icmp ne i8* %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %302
  %307 = call i32 @ps(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %302
  %309 = call i32 @ps(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %310 = load i64*, i64** @plstack, align 8
  %311 = load i64, i64* @psptr, align 8
  %312 = getelementptr inbounds i64, i64* %310, i64 %311
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* @blklevel, align 8
  %314 = load i64, i64* @psptr, align 8
  %315 = add i64 %314, -1
  store i64 %315, i64* @psptr, align 8
  %316 = icmp uge i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %308
  store i32 1, i32* @prccont, align 4
  br label %319

318:                                              ; preds = %308
  store i64 -1, i64* @psptr, align 8
  br label %319

319:                                              ; preds = %318, %317
  br label %320

320:                                              ; preds = %319, %295, %292
  br label %462

321:                                              ; preds = %278
  br label %322

322:                                              ; preds = %321, %271
  %323 = load i8*, i8** %10, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %333

325:                                              ; preds = %322
  %326 = load i8*, i8** %3, align 8
  %327 = load i8*, i8** %10, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 -1
  %329 = call i32 @putKcp(i8* %326, i8* %328, i32 0)
  %330 = load i8*, i8** %10, align 8
  store i8* %330, i8** %3, align 8
  %331 = load i64, i64* @blklevel, align 8
  %332 = add nsw i64 %331, 1
  store i64 %332, i64* @blklevel, align 8
  br label %462

333:                                              ; preds = %322
  br label %448

334:                                              ; preds = %69, %66, %63
  %335 = load i32, i32* @incomm, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %389

337:                                              ; preds = %334
  %338 = load i8*, i8** %3, align 8
  %339 = load i32, i32* @l_comend, align 4
  %340 = call i8* @expmatch(i8* %338, i32 %339, i8* %17)
  store i8* %340, i8** %6, align 8
  %341 = load i8*, i8** %3, align 8
  %342 = load i32, i32* @l_acmend, align 4
  %343 = call i8* @expmatch(i8* %341, i32 %342, i8* %17)
  store i8* %343, i8** %7, align 8
  %344 = load i64, i64* @comtype, align 8
  %345 = load i64, i64* @STANDARD, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %350

347:                                              ; preds = %337
  %348 = load i8*, i8** %6, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %357, label %350

350:                                              ; preds = %347, %337
  %351 = load i64, i64* @comtype, align 8
  %352 = load i64, i64* @ALTERNATE, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %375

354:                                              ; preds = %350
  %355 = load i8*, i8** %7, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %357, label %375

357:                                              ; preds = %354, %347
  %358 = load i64, i64* @comtype, align 8
  %359 = load i64, i64* @STANDARD, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %367

361:                                              ; preds = %357
  %362 = load i8*, i8** %3, align 8
  %363 = load i8*, i8** %6, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 -1
  %365 = call i32 @putKcp(i8* %362, i8* %364, i32 1)
  %366 = load i8*, i8** %6, align 8
  store i8* %366, i8** %3, align 8
  br label %373

367:                                              ; preds = %357
  %368 = load i8*, i8** %3, align 8
  %369 = load i8*, i8** %7, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 -1
  %371 = call i32 @putKcp(i8* %368, i8* %370, i32 1)
  %372 = load i8*, i8** %7, align 8
  store i8* %372, i8** %3, align 8
  br label %373

373:                                              ; preds = %367, %361
  store i32 0, i32* @incomm, align 4
  %374 = call i32 @ps(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %462

375:                                              ; preds = %354, %350
  %376 = load i8*, i8** %3, align 8
  %377 = load i8*, i8** %3, align 8
  %378 = load i8*, i8** %3, align 8
  %379 = call i32 @strlen(i8* %378)
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %377, i64 %380
  %382 = getelementptr inbounds i8, i8* %381, i64 -1
  %383 = call i32 @putKcp(i8* %376, i8* %382, i32 1)
  %384 = load i8*, i8** %3, align 8
  %385 = load i8*, i8** %3, align 8
  %386 = call i32 @strlen(i8* %385)
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %384, i64 %387
  store i8* %388, i8** %3, align 8
  br label %462

389:                                              ; preds = %334
  %390 = load i32, i32* @instr, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %417

392:                                              ; preds = %389
  %393 = load i8*, i8** %3, align 8
  %394 = load i32, i32* @l_strend, align 4
  %395 = call i8* @expmatch(i8* %393, i32 %394, i8* %17)
  store i8* %395, i8** %8, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %403

397:                                              ; preds = %392
  %398 = load i8*, i8** %3, align 8
  %399 = load i8*, i8** %8, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 -1
  %401 = call i32 @putKcp(i8* %398, i8* %400, i32 1)
  %402 = load i8*, i8** %8, align 8
  store i8* %402, i8** %3, align 8
  store i32 0, i32* @instr, align 4
  br label %462

403:                                              ; preds = %392
  %404 = load i8*, i8** %3, align 8
  %405 = load i8*, i8** %3, align 8
  %406 = load i8*, i8** %3, align 8
  %407 = call i32 @strlen(i8* %406)
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %405, i64 %408
  %410 = getelementptr inbounds i8, i8* %409, i64 -1
  %411 = call i32 @putKcp(i8* %404, i8* %410, i32 1)
  %412 = load i8*, i8** %3, align 8
  %413 = load i8*, i8** %3, align 8
  %414 = call i32 @strlen(i8* %413)
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %412, i64 %415
  store i8* %416, i8** %3, align 8
  br label %462

417:                                              ; preds = %389
  %418 = load i32, i32* @inchr, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %445

420:                                              ; preds = %417
  %421 = load i8*, i8** %3, align 8
  %422 = load i32, i32* @l_chrend, align 4
  %423 = call i8* @expmatch(i8* %421, i32 %422, i8* %17)
  store i8* %423, i8** %9, align 8
  %424 = icmp ne i8* %423, null
  br i1 %424, label %425, label %431

425:                                              ; preds = %420
  %426 = load i8*, i8** %3, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 -1
  %429 = call i32 @putKcp(i8* %426, i8* %428, i32 1)
  %430 = load i8*, i8** %9, align 8
  store i8* %430, i8** %3, align 8
  store i32 0, i32* @inchr, align 4
  br label %462

431:                                              ; preds = %420
  %432 = load i8*, i8** %3, align 8
  %433 = load i8*, i8** %3, align 8
  %434 = load i8*, i8** %3, align 8
  %435 = call i32 @strlen(i8* %434)
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, i8* %433, i64 %436
  %438 = getelementptr inbounds i8, i8* %437, i64 -1
  %439 = call i32 @putKcp(i8* %432, i8* %438, i32 1)
  %440 = load i8*, i8** %3, align 8
  %441 = load i8*, i8** %3, align 8
  %442 = call i32 @strlen(i8* %441)
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %440, i64 %443
  store i8* %444, i8** %3, align 8
  br label %462

445:                                              ; preds = %417
  br label %446

446:                                              ; preds = %445
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447, %333
  %449 = load i8*, i8** %3, align 8
  %450 = load i8*, i8** %3, align 8
  %451 = load i8*, i8** %3, align 8
  %452 = call i32 @strlen(i8* %451)
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %450, i64 %453
  %455 = getelementptr inbounds i8, i8* %454, i64 -1
  %456 = call i32 @putKcp(i8* %449, i8* %455, i32 0)
  %457 = load i8*, i8** %3, align 8
  %458 = load i8*, i8** %3, align 8
  %459 = call i32 @strlen(i8* %458)
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8, i8* %457, i64 %460
  store i8* %461, i8** %3, align 8
  br label %462

462:                                              ; preds = %448, %431, %425, %403, %397, %375, %373, %325, %320, %264, %240, %213, %167, %110
  %463 = load i8*, i8** %3, align 8
  %464 = load i8, i8* %463, align 1
  %465 = icmp ne i8 %464, 0
  br i1 %465, label %63, label %466

466:                                              ; preds = %462
  %467 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %467)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isproc(i8*) #2

declare dso_local i32 @ps(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i8* @expmatch(i8*, i32, i8*) #2

declare dso_local i32 @putKcp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
