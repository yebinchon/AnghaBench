; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_rewrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/hexdump/extr_parse.c_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i64, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i8*, i32, i32, i8*, i8*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }

@F_TEXT = common dso_local global i32 0, align 4
@spec = common dso_local global i64 0, align 8
@F_CHAR = common dso_local global i32 0, align 4
@F_INT = common dso_local global i32 0, align 4
@F_UINT = common dso_local global i32 0, align 4
@F_DBL = common dso_local global i32 0, align 4
@F_STR = common dso_local global i32 0, align 4
@endfu = common dso_local global %struct.TYPE_8__* null, align 8
@F_IGNORE = common dso_local global i32 0, align 4
@F_ADDRESS = common dso_local global i32 0, align 4
@F_C = common dso_local global i32 0, align 4
@F_P = common dso_local global i32 0, align 4
@F_U = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"byte count with multiple conversion characters\00", align 1
@blocksize = common dso_local global i64 0, align 8
@F_SETREP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewrite(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca [3 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %6, align 8
  br label %17

17:                                               ; preds = %411, %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %415

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  store %struct.TYPE_7__** %22, %struct.TYPE_7__*** %5, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  br label %26

26:                                               ; preds = %382, %20
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %385

30:                                               ; preds = %26
  %31 = call %struct.TYPE_7__* @calloc(i32 1, i32 40)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %4, align 8
  %32 = icmp eq %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @err(i32 1, i32* null)
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %37, align 8
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %7, align 8
  br label %39

39:                                               ; preds = %52, %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 37
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  br label %39

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @F_TEXT, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %385

66:                                               ; preds = %55
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %86, %71
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i64, i64* @spec, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i32* @strchr(i64 %79, i8 zeroext %81)
  %83 = icmp ne i32* %82, null
  br label %84

84:                                               ; preds = %78, %72
  %85 = phi i1 [ false, %72 ], [ %83, %78 ]
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  br label %72

87:                                               ; preds = %84
  %88 = load i8*, i8** %7, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (...) @badnoconv()
  br label %94

94:                                               ; preds = %92, %87
  br label %143

95:                                               ; preds = %66
  br label %96

96:                                               ; preds = %111, %95
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i64, i64* @spec, align 8
  %104 = add nsw i64 %103, 1
  %105 = load i8*, i8** %7, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32* @strchr(i64 %104, i8 zeroext %106)
  %108 = icmp ne i32* %107, null
  br label %109

109:                                              ; preds = %102, %96
  %110 = phi i1 [ false, %96 ], [ %108, %102 ]
  br i1 %110, label %111, label %112

111:                                              ; preds = %109
  br label %96

112:                                              ; preds = %109
  %113 = load i8*, i8** %7, align 8
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 (...) @badnoconv()
  br label %119

119:                                              ; preds = %117, %112
  %120 = load i8*, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 46
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @isdigit(i8 zeroext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  store i32 2, i32* %3, align 4
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @atoi(i8* %131)
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %139, %130
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  %136 = load i8, i8* %135, align 1
  %137 = call i64 @isdigit(i8 zeroext %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %133

140:                                              ; preds = %133
  br label %142

141:                                              ; preds = %124, %119
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %140
  br label %143

143:                                              ; preds = %142, %94
  %144 = load i8*, i8** %7, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  br label %153

151:                                              ; preds = %143
  %152 = load i8*, i8** %7, align 8
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi i8* [ %150, %148 ], [ %152, %151 ]
  store i8* %154, i8** %8, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = load i8, i8* %155, align 1
  %157 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 %156, i8* %157, align 1
  %158 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  store i8 0, i8* %158, align 1
  %159 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  switch i32 %161, label %331 [
    i32 99, label %162
    i32 100, label %178
    i32 105, label %178
    i32 111, label %182
    i32 117, label %182
    i32 120, label %182
    i32 88, label %182
    i32 101, label %210
    i32 69, label %210
    i32 102, label %210
    i32 103, label %210
    i32 71, label %210
    i32 115, label %244
    i32 95, label %262
  ]

162:                                              ; preds = %153
  %163 = load i32, i32* @F_CHAR, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %172 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %162, %162
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store i32 1, i32* %171, align 4
  br label %177

172:                                              ; preds = %162
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @badcnt(i8* %175)
  br label %177

177:                                              ; preds = %172, %169
  br label %336

178:                                              ; preds = %153, %153
  %179 = load i32, i32* @F_INT, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  br label %186

182:                                              ; preds = %153, %153, %153, %153
  %183 = load i32, i32* @F_UINT, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %178
  %187 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %187, align 1
  %188 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  store i8 %189, i8* %190, align 1
  %191 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 113, i8* %191, align 1
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  switch i32 %194, label %204 [
    i32 0, label %195
    i32 4, label %195
    i32 1, label %198
    i32 2, label %201
  ]

195:                                              ; preds = %186, %186
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 2
  store i32 4, i32* %197, align 4
  br label %209

198:                                              ; preds = %186
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 2
  store i32 1, i32* %200, align 4
  br label %209

201:                                              ; preds = %186
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  store i32 2, i32* %203, align 4
  br label %209

204:                                              ; preds = %186
  %205 = load i8*, i8** %7, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  store i8 0, i8* %206, align 1
  %207 = load i8*, i8** %7, align 8
  %208 = call i32 @badcnt(i8* %207)
  br label %209

209:                                              ; preds = %204, %201, %198, %195
  br label %336

210:                                              ; preds = %153, %153, %153, %153, %153
  %211 = load i32, i32* @F_DBL, align 4
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  switch i32 %216, label %223 [
    i32 0, label %217
    i32 8, label %217
    i32 4, label %220
  ]

217:                                              ; preds = %210, %210
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  store i32 8, i32* %219, align 4
  br label %243

220:                                              ; preds = %210
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  store i32 4, i32* %222, align 4
  br label %243

223:                                              ; preds = %210
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = icmp eq i64 %227, 16
  br i1 %228, label %229, label %237

229:                                              ; preds = %223
  %230 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %230, align 1
  %231 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %232 = load i8, i8* %231, align 1
  %233 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  store i8 %232, i8* %233, align 1
  %234 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 76, i8* %234, align 1
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 2
  store i32 16, i32* %236, align 4
  br label %242

237:                                              ; preds = %223
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 1
  store i8 0, i8* %239, align 1
  %240 = load i8*, i8** %7, align 8
  %241 = call i32 @badcnt(i8* %240)
  br label %242

242:                                              ; preds = %237, %229
  br label %243

243:                                              ; preds = %242, %220, %217
  br label %336

244:                                              ; preds = %153
  %245 = load i32, i32* @F_STR, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* %3, align 4
  switch i32 %248, label %261 [
    i32 0, label %249
    i32 1, label %251
    i32 2, label %257
  ]

249:                                              ; preds = %244
  %250 = call i32 (...) @badsfmt()
  br label %251

251:                                              ; preds = %244, %249
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 4
  br label %261

257:                                              ; preds = %244
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %244, %257, %251
  br label %336

262:                                              ; preds = %153
  %263 = load i8*, i8** %8, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %8, align 8
  %265 = load i8*, i8** %7, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  switch i32 %268, label %325 [
    i32 65, label %269
    i32 97, label %276
    i32 99, label %299
    i32 112, label %303
    i32 117, label %308
  ]

269:                                              ; preds = %262
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %270, %struct.TYPE_8__** @endfu, align 8
  %271 = load i32, i32* @F_IGNORE, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  br label %276

276:                                              ; preds = %262, %269
  %277 = load i32, i32* @F_ADDRESS, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 8
  %280 = load i8*, i8** %8, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %8, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 2
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  switch i32 %285, label %293 [
    i32 100, label %286
    i32 111, label %286
    i32 120, label %286
  ]

286:                                              ; preds = %276, %276, %276
  %287 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 113, i8* %287, align 1
  %288 = load i8*, i8** %7, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 2
  %290 = load i8, i8* %289, align 1
  %291 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 1
  store i8 %290, i8* %291, align 1
  %292 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 2
  store i8 0, i8* %292, align 1
  br label %298

293:                                              ; preds = %276
  %294 = load i8*, i8** %7, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 3
  store i8 0, i8* %295, align 1
  %296 = load i8*, i8** %7, align 8
  %297 = call i32 @badconv(i8* %296)
  br label %298

298:                                              ; preds = %293, %286
  br label %330

299:                                              ; preds = %262
  %300 = load i32, i32* @F_C, align 4
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 1
  store i32 %300, i32* %302, align 8
  br label %312

303:                                              ; preds = %262
  %304 = load i32, i32* @F_P, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 8
  %307 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  store i8 99, i8* %307, align 1
  br label %312

308:                                              ; preds = %262
  %309 = load i32, i32* @F_U, align 4
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 8
  br label %312

312:                                              ; preds = %308, %303, %299
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  switch i32 %315, label %319 [
    i32 0, label %316
    i32 1, label %316
  ]

316:                                              ; preds = %312, %312
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 2
  store i32 1, i32* %318, align 4
  br label %324

319:                                              ; preds = %312
  %320 = load i8*, i8** %7, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 2
  store i8 0, i8* %321, align 1
  %322 = load i8*, i8** %7, align 8
  %323 = call i32 @badcnt(i8* %322)
  br label %324

324:                                              ; preds = %319, %316
  br label %330

325:                                              ; preds = %262
  %326 = load i8*, i8** %7, align 8
  %327 = getelementptr inbounds i8, i8* %326, i64 2
  store i8 0, i8* %327, align 1
  %328 = load i8*, i8** %7, align 8
  %329 = call i32 @badconv(i8* %328)
  br label %330

330:                                              ; preds = %325, %324, %298
  br label %336

331:                                              ; preds = %153
  %332 = load i8*, i8** %7, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  store i8 0, i8* %333, align 1
  %334 = load i8*, i8** %7, align 8
  %335 = call i32 @badconv(i8* %334)
  br label %336

336:                                              ; preds = %331, %330, %261, %243, %209, %177
  %337 = load i8*, i8** %8, align 8
  %338 = load i8, i8* %337, align 1
  store i8 %338, i8* %10, align 1
  %339 = load i8*, i8** %7, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 0
  store i8 0, i8* %340, align 1
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 0
  %343 = load i8*, i8** %9, align 8
  %344 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %345 = call i32 @asprintf(i8** %342, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %343, i8* %344)
  %346 = icmp eq i32 %345, -1
  br i1 %346, label %347, label %349

347:                                              ; preds = %336
  %348 = call i32 @err(i32 1, i32* null)
  br label %349

349:                                              ; preds = %347, %336
  %350 = load i8, i8* %10, align 1
  %351 = load i8*, i8** %8, align 8
  store i8 %350, i8* %351, align 1
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i8*, i8** %353, align 8
  %355 = load i8*, i8** %7, align 8
  %356 = load i8*, i8** %9, align 8
  %357 = ptrtoint i8* %355 to i64
  %358 = ptrtoint i8* %356 to i64
  %359 = sub i64 %357, %358
  %360 = getelementptr inbounds i8, i8* %354, i64 %359
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 3
  store i8* %360, i8** %362, align 8
  %363 = load i8*, i8** %8, align 8
  store i8* %363, i8** %9, align 8
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @F_ADDRESS, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %381, label %370

370:                                              ; preds = %349
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %370
  %376 = load i32, i32* %12, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %12, align 4
  %378 = icmp ne i32 %376, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = call i32 @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %381

381:                                              ; preds = %379, %375, %370, %349
  br label %382

382:                                              ; preds = %381
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 5
  store %struct.TYPE_7__** %384, %struct.TYPE_7__*** %5, align 8
  br label %26

385:                                              ; preds = %59, %26
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %410, label %390

390:                                              ; preds = %385
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 4
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %392, align 8
  store %struct.TYPE_7__* %393, %struct.TYPE_7__** %4, align 8
  br label %394

394:                                              ; preds = %405, %390
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %396 = icmp ne %struct.TYPE_7__* %395, null
  br i1 %396, label %397, label %409

397:                                              ; preds = %394
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = add nsw i32 %403, %400
  store i32 %404, i32* %402, align 8
  br label %405

405:                                              ; preds = %397
  %406 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 5
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %407, align 8
  store %struct.TYPE_7__* %408, %struct.TYPE_7__** %4, align 8
  br label %394

409:                                              ; preds = %394
  br label %410

410:                                              ; preds = %409, %385
  br label %411

411:                                              ; preds = %410
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 5
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %413, align 8
  store %struct.TYPE_8__* %414, %struct.TYPE_8__** %6, align 8
  br label %17

415:                                              ; preds = %17
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 1
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %417, align 8
  store %struct.TYPE_8__* %418, %struct.TYPE_8__** %6, align 8
  br label %419

419:                                              ; preds = %510, %415
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %421 = icmp ne %struct.TYPE_8__* %420, null
  br i1 %421, label %422, label %514

422:                                              ; preds = %419
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 5
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %424, align 8
  %426 = icmp ne %struct.TYPE_8__* %425, null
  br i1 %426, label %460, label %427

427:                                              ; preds = %422
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @blocksize, align 8
  %432 = icmp slt i64 %430, %431
  br i1 %432, label %433, label %460

433:                                              ; preds = %427
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @F_SETREP, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %460, label %440

440:                                              ; preds = %433
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 8
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %460

445:                                              ; preds = %440
  %446 = load i64, i64* @blocksize, align 8
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = sub nsw i64 %446, %449
  %451 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = sext i32 %453 to i64
  %455 = sdiv i64 %450, %454
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 3
  %458 = load i64, i64* %457, align 8
  %459 = add nsw i64 %458, %455
  store i64 %459, i64* %457, align 8
  br label %460

460:                                              ; preds = %445, %440, %433, %427, %422
  %461 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = icmp sgt i64 %463, 1
  br i1 %464, label %465, label %509

465:                                              ; preds = %460
  %466 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 4
  %468 = load %struct.TYPE_7__*, %struct.TYPE_7__** %467, align 8
  store %struct.TYPE_7__* %468, %struct.TYPE_7__** %4, align 8
  br label %469

469:                                              ; preds = %476, %465
  %470 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %470, i32 0, i32 5
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %471, align 8
  %473 = icmp ne %struct.TYPE_7__* %472, null
  br i1 %473, label %475, label %474

474:                                              ; preds = %469
  br label %480

475:                                              ; preds = %469
  br label %476

476:                                              ; preds = %475
  %477 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 5
  %479 = load %struct.TYPE_7__*, %struct.TYPE_7__** %478, align 8
  store %struct.TYPE_7__* %479, %struct.TYPE_7__** %4, align 8
  br label %469

480:                                              ; preds = %474
  %481 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %481, i32 0, i32 0
  %483 = load i8*, i8** %482, align 8
  store i8* %483, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %484

484:                                              ; preds = %498, %480
  %485 = load i8*, i8** %7, align 8
  %486 = load i8, i8* %485, align 1
  %487 = icmp ne i8 %486, 0
  br i1 %487, label %488, label %501

488:                                              ; preds = %484
  %489 = load i8*, i8** %7, align 8
  %490 = load i8, i8* %489, align 1
  %491 = call i64 @isspace(i8 zeroext %490)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %488
  %494 = load i8*, i8** %7, align 8
  br label %496

495:                                              ; preds = %488
  br label %496

496:                                              ; preds = %495, %493
  %497 = phi i8* [ %494, %493 ], [ null, %495 ]
  store i8* %497, i8** %8, align 8
  br label %498

498:                                              ; preds = %496
  %499 = load i8*, i8** %7, align 8
  %500 = getelementptr inbounds i8, i8* %499, i32 1
  store i8* %500, i8** %7, align 8
  br label %484

501:                                              ; preds = %484
  %502 = load i8*, i8** %8, align 8
  %503 = icmp ne i8* %502, null
  br i1 %503, label %504, label %508

504:                                              ; preds = %501
  %505 = load i8*, i8** %8, align 8
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 4
  store i8* %505, i8** %507, align 8
  br label %508

508:                                              ; preds = %504, %501
  br label %509

509:                                              ; preds = %508, %460
  br label %510

510:                                              ; preds = %509
  %511 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 5
  %513 = load %struct.TYPE_8__*, %struct.TYPE_8__** %512, align 8
  store %struct.TYPE_8__* %513, %struct.TYPE_8__** %6, align 8
  br label %419

514:                                              ; preds = %419
  ret void
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32* @strchr(i64, i8 zeroext) #1

declare dso_local i32 @badnoconv(...) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @badcnt(i8*) #1

declare dso_local i32 @badsfmt(...) #1

declare dso_local i32 @badconv(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
