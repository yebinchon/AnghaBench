; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_markall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_markall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.coltab = type { i8, i32, i32, i32 }

@NMLSIZE = common dso_local global i32 0, align 4
@dot = common dso_local global %struct.message* null, align 8
@message = common dso_local global %struct.message* null, align 8
@msgCount = common dso_local global i32 0, align 4
@TEOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No numbers mixed with *\0A\00", align 1
@lexnumber = common dso_local global i32 0, align 4
@MDELETED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Non-numeric second argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Referencing beyond EOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Referencing before 1\0A\00", align 1
@lexstring = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Unknown colon modifier \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Can't mix \22*\22 with anything\0A\00", align 1
@lastcolmod = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"No applicable messages.\0A\00", align 1
@MMARK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"No applicable messages from {%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@coltab = common dso_local global %struct.coltab* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"No messages satisfy\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" :%c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @markall(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.message*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.coltab*, align 8
  %22 = alloca %struct.coltab*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load i32, i32* @NMLSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i8*, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load %struct.message*, %struct.message** @dot, align 8
  %28 = load %struct.message*, %struct.message** @message, align 8
  %29 = getelementptr inbounds %struct.message, %struct.message* %28, i64 0
  %30 = ptrtoint %struct.message* %27 to i64
  %31 = ptrtoint %struct.message* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = add nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %43, %2
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @msgCount, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @unmark(i32 %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %36

46:                                               ; preds = %36
  %47 = load i8*, i8** %4, align 8
  store i8* %47, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %48 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8** %48, i8*** %6, align 8
  %49 = call i32 (...) @scaninit()
  %50 = call i32 @scan(i8** %11)
  store i32 %50, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %236, %46
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @TEOL, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %238

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  switch i32 %56, label %236 [
    i32 132, label %57
    i32 131, label %122
    i32 136, label %153
    i32 129, label %182
    i32 135, label %217
    i32 128, label %217
    i32 134, label %217
    i32 130, label %227
    i32 133, label %235
  ]

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %226, %57
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

63:                                               ; preds = %58
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %63
  %71 = load i32, i32* @lexnumber, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @check(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %101, %76
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @lexnumber, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MDELETED, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = load %struct.message*, %struct.message** @message, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.message, %struct.message* %87, i64 %90
  %92 = getelementptr inbounds %struct.message, %struct.message* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MDELETED, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86, %82
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @mark(i32 %98)
  br label %100

100:                                              ; preds = %97, %86
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %78

104:                                              ; preds = %78
  store i32 0, i32* %13, align 4
  br label %236

105:                                              ; preds = %63
  %106 = load i32, i32* @lexnumber, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @check(i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

112:                                              ; preds = %105
  %113 = call i32 @scan(i8** %11)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @regret(i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 136
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @mark(i32 %119)
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %112
  br label %236

122:                                              ; preds = %55
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

127:                                              ; preds = %122
  %128 = load i32, i32* %17, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %138, %127
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @msgCount, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.message*, %struct.message** @message, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.message, %struct.message* %139, i64 %142
  %144 = getelementptr inbounds %struct.message, %struct.message* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @MDELETED, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* %5, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %129, label %150

150:                                              ; preds = %138
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @mark(i32 %151)
  br label %236

153:                                              ; preds = %55
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %181

156:                                              ; preds = %153
  %157 = load i32, i32* %17, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %166, %156
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp sle i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.message*, %struct.message** @message, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.message, %struct.message* %167, i64 %170
  %172 = getelementptr inbounds %struct.message, %struct.message* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @MDELETED, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %158, label %178

178:                                              ; preds = %166
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @mark(i32 %179)
  br label %181

181:                                              ; preds = %178, %153
  br label %236

182:                                              ; preds = %55
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

187:                                              ; preds = %182
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %16, align 4
  %190 = load i8*, i8** @lexstring, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 58
  br i1 %194, label %195, label %209

195:                                              ; preds = %187
  %196 = load i8*, i8** @lexstring, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = call i32 @evalcol(i8 signext %198)
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %19, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load i8*, i8** @lexstring, align 8
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %203)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

205:                                              ; preds = %195
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %18, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %18, align 4
  br label %216

209:                                              ; preds = %187
  %210 = load i8*, i8** @lexstring, align 8
  %211 = call i32 @savestr(i8* %210)
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = load i8**, i8*** %6, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i32 1
  store i8** %215, i8*** %6, align 8
  store i8* %213, i8** %214, align 8
  br label %216

216:                                              ; preds = %209, %205
  br label %236

217:                                              ; preds = %55, %55, %55
  %218 = load i8*, i8** @lexstring, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @metamess(i8 signext %220, i32 %221)
  store i32 %222, i32* @lexnumber, align 4
  %223 = load i32, i32* @lexnumber, align 4
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

226:                                              ; preds = %217
  br label %58

227:                                              ; preds = %55
  %228 = load i32, i32* %16, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

232:                                              ; preds = %227
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  br label %236

235:                                              ; preds = %55
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

236:                                              ; preds = %55, %232, %216, %181, %150, %121, %104
  %237 = call i32 @scan(i8** %11)
  store i32 %237, i32* %12, align 4
  br label %51

238:                                              ; preds = %51
  %239 = load i32, i32* %18, align 4
  store i32 %239, i32* @lastcolmod, align 4
  %240 = load i8**, i8*** %6, align 8
  store i8* null, i8** %240, align 8
  store i32 0, i32* %14, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %238
  store i32 0, i32* %7, align 4
  br label %244

244:                                              ; preds = %266, %243
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @msgCount, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %269

248:                                              ; preds = %244
  %249 = load %struct.message*, %struct.message** @message, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.message, %struct.message* %249, i64 %251
  %253 = getelementptr inbounds %struct.message, %struct.message* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MDELETED, align 4
  %256 = and i32 %254, %255
  %257 = load i32, i32* %5, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %248
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, 1
  %262 = call i32 @mark(i32 %261)
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %14, align 4
  br label %265

265:                                              ; preds = %259, %248
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %244

269:                                              ; preds = %244
  %270 = load i32, i32* %14, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

274:                                              ; preds = %269
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

275:                                              ; preds = %238
  %276 = load i8**, i8*** %6, align 8
  %277 = icmp ugt i8** %276, %26
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %18, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %309

281:                                              ; preds = %278, %275
  %282 = load i32, i32* %14, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %309

284:                                              ; preds = %281
  store i32 1, i32* %7, align 4
  br label %285

285:                                              ; preds = %305, %284
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @msgCount, align 4
  %288 = icmp sle i32 %286, %287
  br i1 %288, label %289, label %308

289:                                              ; preds = %285
  %290 = load %struct.message*, %struct.message** @message, align 8
  %291 = load i32, i32* %7, align 4
  %292 = sub nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.message, %struct.message* %290, i64 %293
  %295 = getelementptr inbounds %struct.message, %struct.message* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @MDELETED, align 4
  %298 = and i32 %296, %297
  %299 = load i32, i32* %5, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %304

301:                                              ; preds = %289
  %302 = load i32, i32* %7, align 4
  %303 = call i32 @mark(i32 %302)
  br label %304

304:                                              ; preds = %301, %289
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %7, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %7, align 4
  br label %285

308:                                              ; preds = %285
  br label %309

309:                                              ; preds = %308, %281, %278
  %310 = load i8**, i8*** %6, align 8
  %311 = icmp ugt i8** %310, %26
  br i1 %311, label %312, label %408

312:                                              ; preds = %309
  store i32 1, i32* %7, align 4
  br label %313

313:                                              ; preds = %360, %312
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* @msgCount, align 4
  %316 = icmp sle i32 %314, %315
  br i1 %316, label %317, label %363

317:                                              ; preds = %313
  store i32 0, i32* %14, align 4
  %318 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8** %318, i8*** %6, align 8
  br label %319

319:                                              ; preds = %350, %317
  %320 = load i8**, i8*** %6, align 8
  %321 = load i8*, i8** %320, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %353

323:                                              ; preds = %319
  %324 = load i8**, i8*** %6, align 8
  %325 = load i8*, i8** %324, align 8
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 47
  br i1 %328, label %329, label %339

329:                                              ; preds = %323
  %330 = load i8**, i8*** %6, align 8
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %7, align 4
  %333 = call i64 @matchfield(i8* %331, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load i32, i32* %14, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %14, align 4
  br label %353

338:                                              ; preds = %329
  br label %349

339:                                              ; preds = %323
  %340 = load i8**, i8*** %6, align 8
  %341 = load i8*, i8** %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = call i64 @matchsender(i8* %341, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %339
  %346 = load i32, i32* %14, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %14, align 4
  br label %353

348:                                              ; preds = %339
  br label %349

349:                                              ; preds = %348, %338
  br label %350

350:                                              ; preds = %349
  %351 = load i8**, i8*** %6, align 8
  %352 = getelementptr inbounds i8*, i8** %351, i32 1
  store i8** %352, i8*** %6, align 8
  br label %319

353:                                              ; preds = %345, %335, %319
  %354 = load i32, i32* %14, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load i32, i32* %7, align 4
  %358 = call i32 @unmark(i32 %357)
  br label %359

359:                                              ; preds = %356, %353
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %7, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %7, align 4
  br label %313

363:                                              ; preds = %313
  store i32 0, i32* %14, align 4
  store i32 1, i32* %7, align 4
  br label %364

364:                                              ; preds = %383, %363
  %365 = load i32, i32* %7, align 4
  %366 = load i32, i32* @msgCount, align 4
  %367 = icmp sle i32 %365, %366
  br i1 %367, label %368, label %386

368:                                              ; preds = %364
  %369 = load %struct.message*, %struct.message** @message, align 8
  %370 = load i32, i32* %7, align 4
  %371 = sub nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.message, %struct.message* %369, i64 %372
  %374 = getelementptr inbounds %struct.message, %struct.message* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @MMARK, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %368
  %380 = load i32, i32* %14, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %14, align 4
  br label %386

382:                                              ; preds = %368
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %7, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %7, align 4
  br label %364

386:                                              ; preds = %379, %364
  %387 = load i32, i32* %14, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %407

389:                                              ; preds = %386
  %390 = getelementptr inbounds i8*, i8** %26, i64 0
  %391 = load i8*, i8** %390, align 16
  %392 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %391)
  %393 = getelementptr inbounds i8*, i8** %26, i64 1
  store i8** %393, i8*** %6, align 8
  br label %394

394:                                              ; preds = %402, %389
  %395 = load i8**, i8*** %6, align 8
  %396 = load i8*, i8** %395, align 8
  %397 = icmp ne i8* %396, null
  br i1 %397, label %398, label %405

398:                                              ; preds = %394
  %399 = load i8**, i8*** %6, align 8
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %400)
  br label %402

402:                                              ; preds = %398
  %403 = load i8**, i8*** %6, align 8
  %404 = getelementptr inbounds i8*, i8** %403, i32 1
  store i8** %404, i8*** %6, align 8
  br label %394

405:                                              ; preds = %394
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

407:                                              ; preds = %386
  br label %408

408:                                              ; preds = %407, %309
  %409 = load i32, i32* %18, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %520

411:                                              ; preds = %408
  store i32 1, i32* %7, align 4
  br label %412

412:                                              ; preds = %458, %411
  %413 = load i32, i32* %7, align 4
  %414 = load i32, i32* @msgCount, align 4
  %415 = icmp sle i32 %413, %414
  br i1 %415, label %416, label %461

416:                                              ; preds = %412
  %417 = load %struct.message*, %struct.message** @message, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.message, %struct.message* %417, i64 %420
  store %struct.message* %421, %struct.message** %8, align 8
  %422 = load %struct.coltab*, %struct.coltab** @coltab, align 8
  %423 = getelementptr inbounds %struct.coltab, %struct.coltab* %422, i64 0
  store %struct.coltab* %423, %struct.coltab** %21, align 8
  br label %424

424:                                              ; preds = %454, %416
  %425 = load %struct.coltab*, %struct.coltab** %21, align 8
  %426 = getelementptr inbounds %struct.coltab, %struct.coltab* %425, i32 0, i32 0
  %427 = load i8, i8* %426, align 4
  %428 = sext i8 %427 to i32
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %457

430:                                              ; preds = %424
  %431 = load %struct.coltab*, %struct.coltab** %21, align 8
  %432 = getelementptr inbounds %struct.coltab, %struct.coltab* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %18, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %453

437:                                              ; preds = %430
  %438 = load %struct.message*, %struct.message** %8, align 8
  %439 = getelementptr inbounds %struct.message, %struct.message* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.coltab*, %struct.coltab** %21, align 8
  %442 = getelementptr inbounds %struct.coltab, %struct.coltab* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 4
  %444 = and i32 %440, %443
  %445 = load %struct.coltab*, %struct.coltab** %21, align 8
  %446 = getelementptr inbounds %struct.coltab, %struct.coltab* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %444, %447
  br i1 %448, label %449, label %452

449:                                              ; preds = %437
  %450 = load i32, i32* %7, align 4
  %451 = call i32 @unmark(i32 %450)
  br label %452

452:                                              ; preds = %449, %437
  br label %453

453:                                              ; preds = %452, %430
  br label %454

454:                                              ; preds = %453
  %455 = load %struct.coltab*, %struct.coltab** %21, align 8
  %456 = getelementptr inbounds %struct.coltab, %struct.coltab* %455, i32 1
  store %struct.coltab* %456, %struct.coltab** %21, align 8
  br label %424

457:                                              ; preds = %424
  br label %458

458:                                              ; preds = %457
  %459 = load i32, i32* %7, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %7, align 4
  br label %412

461:                                              ; preds = %412
  %462 = load %struct.message*, %struct.message** @message, align 8
  %463 = getelementptr inbounds %struct.message, %struct.message* %462, i64 0
  store %struct.message* %463, %struct.message** %8, align 8
  br label %464

464:                                              ; preds = %480, %461
  %465 = load %struct.message*, %struct.message** %8, align 8
  %466 = load %struct.message*, %struct.message** @message, align 8
  %467 = load i32, i32* @msgCount, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.message, %struct.message* %466, i64 %468
  %470 = icmp ult %struct.message* %465, %469
  br i1 %470, label %471, label %483

471:                                              ; preds = %464
  %472 = load %struct.message*, %struct.message** %8, align 8
  %473 = getelementptr inbounds %struct.message, %struct.message* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* @MMARK, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %471
  br label %483

479:                                              ; preds = %471
  br label %480

480:                                              ; preds = %479
  %481 = load %struct.message*, %struct.message** %8, align 8
  %482 = getelementptr inbounds %struct.message, %struct.message* %481, i32 1
  store %struct.message* %482, %struct.message** %8, align 8
  br label %464

483:                                              ; preds = %478, %464
  %484 = load %struct.message*, %struct.message** %8, align 8
  %485 = load %struct.message*, %struct.message** @message, align 8
  %486 = load i32, i32* @msgCount, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.message, %struct.message* %485, i64 %487
  %489 = icmp uge %struct.message* %484, %488
  br i1 %489, label %490, label %519

490:                                              ; preds = %483
  %491 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %492 = load %struct.coltab*, %struct.coltab** @coltab, align 8
  %493 = getelementptr inbounds %struct.coltab, %struct.coltab* %492, i64 0
  store %struct.coltab* %493, %struct.coltab** %22, align 8
  br label %494

494:                                              ; preds = %514, %490
  %495 = load %struct.coltab*, %struct.coltab** %22, align 8
  %496 = getelementptr inbounds %struct.coltab, %struct.coltab* %495, i32 0, i32 0
  %497 = load i8, i8* %496, align 4
  %498 = sext i8 %497 to i32
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %517

500:                                              ; preds = %494
  %501 = load %struct.coltab*, %struct.coltab** %22, align 8
  %502 = getelementptr inbounds %struct.coltab, %struct.coltab* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* %18, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %513

507:                                              ; preds = %500
  %508 = load %struct.coltab*, %struct.coltab** %22, align 8
  %509 = getelementptr inbounds %struct.coltab, %struct.coltab* %508, i32 0, i32 0
  %510 = load i8, i8* %509, align 4
  %511 = sext i8 %510 to i32
  %512 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %511)
  br label %513

513:                                              ; preds = %507, %500
  br label %514

514:                                              ; preds = %513
  %515 = load %struct.coltab*, %struct.coltab** %22, align 8
  %516 = getelementptr inbounds %struct.coltab, %struct.coltab* %515, i32 1
  store %struct.coltab* %516, %struct.coltab** %22, align 8
  br label %494

517:                                              ; preds = %494
  %518 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

519:                                              ; preds = %483
  br label %520

520:                                              ; preds = %519, %408
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %521

521:                                              ; preds = %520, %517, %405, %274, %272, %235, %230, %225, %202, %185, %163, %135, %125, %111, %75, %61
  %522 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %522)
  %523 = load i32, i32* %3, align 4
  ret i32 %523
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @unmark(i32) #2

declare dso_local i32 @scaninit(...) #2

declare dso_local i32 @scan(i8**) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @check(i32, i32) #2

declare dso_local i32 @mark(i32) #2

declare dso_local i32 @regret(i32) #2

declare dso_local i32 @evalcol(i8 signext) #2

declare dso_local i32 @savestr(i8*) #2

declare dso_local i32 @metamess(i8 signext, i32) #2

declare dso_local i64 @matchfield(i8*, i32) #2

declare dso_local i64 @matchsender(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
