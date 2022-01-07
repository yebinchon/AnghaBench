; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_parse_bdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_parse_bdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"FONT \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"FONTBOUNDINGBOX \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid FONTBOUNDINGBOX at line %u\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"broken font header\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"font spacing \22C\22 (character cell) required\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"DWIDTH \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"invalid DWIDTH at line %u\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"bitmap with unsupported DWIDTH %d %d at line %u\00", align 1
@wbytes = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"ENCODING \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"BBX \00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"invalid BBX at line %u\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"broken bitmap with BBX %d %d %d %d at line %u\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"BITMAP\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"broken char header at line %u!\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ENDCHAR\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"broken bitmap at line %u\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%2x\00", align 1
@width = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @parse_bdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bdf(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  store i8 0, i8* %27, align 1
  br label %29

29:                                               ; preds = %80, %2
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @fgetln(i32* %30, i64* %8)
  store i8* %31, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = load i32, i32* %14, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %14, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strncmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %33
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  store i8* %45, i8** %7, align 8
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %60, %43
  %47 = load i8*, i8** %7, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 45)
  store i8* %48, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 11
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %27, align 1
  br label %61

60:                                               ; preds = %50
  br label %46

61:                                               ; preds = %57, %46
  br label %80

62:                                               ; preds = %33
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @strncmp(i8* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 16
  %69 = call i64 (i8*, i8*, ...) @sscanf(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %20, i32* %21, i32* %22, i32* %23)
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %14, align 4
  %73 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @set_width(i32 %75)
  %77 = load i32, i32* %21, align 4
  %78 = call i32 @set_height(i32 %77)
  br label %81

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %61
  br label %29

81:                                               ; preds = %74, %29
  %82 = load i32, i32* %20, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i8, i8* %27, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 99
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i8, i8* %27, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 67
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %90, %86
  br label %97

97:                                               ; preds = %144, %96
  %98 = load i32*, i32** %3, align 8
  %99 = call i8* @fgetln(i32* %98, i64* %8)
  store i8* %99, i8** %6, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %145

101:                                              ; preds = %97
  %102 = load i32, i32* %14, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %14, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = load i64, i64* %8, align 8
  %106 = sub i64 %105, 1
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = call i64 @strncmp(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %101
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  %114 = call i64 (i8*, i8*, ...) @sscanf(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %24, i32* %25)
  %115 = icmp ne i64 %114, 2
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* %25, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %20, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i32, i32* %24, align 4
  %128 = mul nsw i32 %127, 2
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %126, %119
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %126, %122
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %24, align 4
  %142 = call i32 @set_width(i32 %141)
  br label %143

143:                                              ; preds = %140, %136
  br label %144

144:                                              ; preds = %143, %101
  br label %97

145:                                              ; preds = %97
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %24, align 4
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @rewind(i32* %146)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* @wbytes, align 4
  %149 = load i32, i32* @height, align 4
  %150 = mul nsw i32 %148, %149
  %151 = call i8* @xmalloc(i32 %150)
  store i8* %151, i8** %9, align 8
  %152 = load i32, i32* @wbytes, align 4
  %153 = load i32, i32* @height, align 4
  %154 = mul nsw i32 %152, %153
  %155 = call i8* @xmalloc(i32 %154)
  store i8* %155, i8** %10, align 8
  %156 = load i32, i32* @wbytes, align 4
  %157 = mul nsw i32 %156, 2
  %158 = call i8* @xmalloc(i32 %157)
  store i8* %158, i8** %5, align 8
  br label %159

159:                                              ; preds = %398, %145
  %160 = load i32*, i32** %3, align 8
  %161 = call i8* @fgetln(i32* %160, i64* %8)
  store i8* %161, i8** %6, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %399

163:                                              ; preds = %159
  %164 = load i32, i32* %14, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %14, align 4
  %166 = load i8*, i8** %6, align 8
  %167 = load i64, i64* %8, align 8
  %168 = sub i64 %167, 1
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8 0, i8* %169, align 1
  %170 = load i8*, i8** %6, align 8
  %171 = call i64 @strncmp(i8* %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %163
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 9
  %176 = call i8* @atoi(i8* %175)
  %177 = ptrtoint i8* %176 to i32
  store i32 %177, i32* %11, align 4
  br label %398

178:                                              ; preds = %163
  %179 = load i8*, i8** %6, align 8
  %180 = call i64 @strncmp(i8* %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i8*, i8** %6, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 7
  %185 = call i8* @atoi(i8* %184)
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %24, align 4
  br label %397

187:                                              ; preds = %178
  %188 = load i8*, i8** %6, align 8
  %189 = call i64 @strncmp(i8* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %239

191:                                              ; preds = %187
  %192 = load i8*, i8** %6, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 4
  %194 = call i64 (i8*, i8*, ...) @sscanf(i8* %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %16, i32* %17, i32* %18, i32* %19)
  %195 = icmp ne i64 %194, 4
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32, i32* %14, align 4
  %198 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %196, %191
  %200 = load i32, i32* %16, align 4
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %229, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %17, align 4
  %204 = icmp slt i32 %203, 1
  br i1 %204, label %229, label %205

205:                                              ; preds = %202
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %20, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %229, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %21, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %229, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %22, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %229, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %23, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %19, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %23, align 4
  %227 = add nsw i32 %225, %226
  %228 = icmp sgt i32 %224, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %221, %217, %213, %209, %205, %202, %199
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* %17, align 4
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %14, align 4
  %235 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i32 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %229, %221
  %237 = load i32, i32* %16, align 4
  %238 = call i32 @howmany(i32 %237, i32 8)
  store i32 %238, i32* %15, align 4
  br label %396

239:                                              ; preds = %187
  %240 = load i8*, i8** %6, align 8
  %241 = call i64 @strncmp(i8* %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 6)
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %395

243:                                              ; preds = %239
  %244 = load i8*, i8** %6, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 6
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 32
  br i1 %248, label %255, label %249

249:                                              ; preds = %243
  %250 = load i8*, i8** %6, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 6
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %395

255:                                              ; preds = %249, %243
  %256 = load i32, i32* %24, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %16, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %17, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261, %258, %255
  %265 = load i32, i32* %14, align 4
  %266 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %264, %261
  %268 = load i8*, i8** %9, align 8
  %269 = load i32, i32* @wbytes, align 4
  %270 = load i32, i32* @height, align 4
  %271 = mul nsw i32 %269, %270
  %272 = call i32 @memset(i8* %268, i32 0, i32 %271)
  %273 = load i8*, i8** %10, align 8
  %274 = load i32, i32* @wbytes, align 4
  %275 = load i32, i32* @height, align 4
  %276 = mul nsw i32 %274, %275
  %277 = call i32 @memset(i8* %273, i32 0, i32 %276)
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %23, align 4
  %280 = add nsw i32 %278, %279
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %19, align 4
  %283 = add nsw i32 %281, %282
  %284 = sub nsw i32 %280, %283
  store i32 %284, i32* %12, align 4
  br label %285

285:                                              ; preds = %374, %267
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %23, align 4
  %289 = add nsw i32 %287, %288
  %290 = load i32, i32* %19, align 4
  %291 = sub nsw i32 %289, %290
  %292 = icmp ult i32 %286, %291
  br i1 %292, label %293, label %377

293:                                              ; preds = %285
  %294 = load i32*, i32** %3, align 8
  %295 = call i8* @fgetln(i32* %294, i64* %8)
  store i8* %295, i8** %6, align 8
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %293
  %300 = load i32, i32* %14, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %14, align 4
  %302 = load i8*, i8** %6, align 8
  %303 = load i64, i64* %8, align 8
  %304 = sub i64 %303, 1
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  store i8 0, i8* %305, align 1
  %306 = load i8*, i8** %6, align 8
  %307 = call i64 @strcmp(i8* %306, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %299
  br label %377

310:                                              ; preds = %299
  %311 = load i8*, i8** %6, align 8
  %312 = call i32 @strlen(i8* %311)
  %313 = load i32, i32* %15, align 4
  %314 = mul i32 %313, 2
  %315 = icmp ult i32 %312, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %310
  %317 = load i32, i32* %14, align 4
  %318 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %316, %310
  %320 = load i8*, i8** %5, align 8
  %321 = load i32, i32* @wbytes, align 4
  %322 = mul nsw i32 %321, 2
  %323 = call i32 @memset(i8* %320, i32 0, i32 %322)
  store i32 0, i32* %13, align 4
  br label %324

324:                                              ; preds = %344, %319
  %325 = load i32, i32* %13, align 4
  %326 = load i32, i32* %15, align 4
  %327 = icmp ult i32 %325, %326
  br i1 %327, label %328, label %347

328:                                              ; preds = %324
  %329 = load i8*, i8** %6, align 8
  %330 = load i32, i32* %13, align 4
  %331 = mul i32 %330, 2
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  %334 = call i64 (i8*, i8*, ...) @sscanf(i8* %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32* %28)
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %328
  br label %347

337:                                              ; preds = %328
  %338 = load i32, i32* %28, align 4
  %339 = trunc i32 %338 to i8
  %340 = load i8*, i8** %5, align 8
  %341 = load i32, i32* %13, align 4
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  store i8 %339, i8* %343, align 1
  br label %344

344:                                              ; preds = %337
  %345 = load i32, i32* %13, align 4
  %346 = add i32 %345, 1
  store i32 %346, i32* %13, align 4
  br label %324

347:                                              ; preds = %336, %324
  %348 = load i8*, i8** %5, align 8
  %349 = load i32, i32* @wbytes, align 4
  %350 = mul nsw i32 %349, 2
  %351 = load i32, i32* %18, align 4
  %352 = load i32, i32* %22, align 4
  %353 = sub nsw i32 %351, %352
  %354 = call i32 @rshift_row(i8* %348, i32 %350, i32 %353)
  %355 = load i8*, i8** %9, align 8
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* @wbytes, align 4
  %358 = mul i32 %356, %357
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %355, i64 %359
  %361 = load i8*, i8** %10, align 8
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* @wbytes, align 4
  %364 = mul i32 %362, %363
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %361, i64 %365
  %367 = load i8*, i8** %5, align 8
  %368 = load i32, i32* %24, align 4
  %369 = call i32 @split_row(i8* %360, i8* %366, i8* %367, i32 %368)
  store i32 %369, i32* %26, align 4
  %370 = load i32, i32* %26, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %347
  br label %400

373:                                              ; preds = %347
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* %12, align 4
  %376 = add i32 %375, 1
  store i32 %376, i32* %12, align 4
  br label %285

377:                                              ; preds = %309, %285
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %4, align 4
  %380 = load i8*, i8** %9, align 8
  %381 = load i32, i32* %24, align 4
  %382 = load i64, i64* @width, align 8
  %383 = trunc i64 %382 to i32
  %384 = icmp sgt i32 %381, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %377
  %386 = load i8*, i8** %10, align 8
  br label %388

387:                                              ; preds = %377
  br label %388

388:                                              ; preds = %387, %385
  %389 = phi i8* [ %386, %385 ], [ null, %387 ]
  %390 = call i32 @add_char(i32 %378, i32 %379, i8* %380, i8* %389)
  store i32 %390, i32* %26, align 4
  %391 = load i32, i32* %26, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %388
  br label %400

394:                                              ; preds = %388
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %24, align 4
  br label %395

395:                                              ; preds = %394, %249, %239
  br label %396

396:                                              ; preds = %395, %236
  br label %397

397:                                              ; preds = %396, %182
  br label %398

398:                                              ; preds = %397, %173
  br label %159

399:                                              ; preds = %159
  br label %400

400:                                              ; preds = %399, %393, %372
  %401 = load i8*, i8** %9, align 8
  %402 = call i32 @free(i8* %401)
  %403 = load i8*, i8** %10, align 8
  %404 = call i32 @free(i8* %403)
  %405 = load i8*, i8** %5, align 8
  %406 = call i32 @free(i8* %405)
  %407 = load i32, i32* %26, align 4
  ret i32 %407
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @set_width(i32) #1

declare dso_local i32 @set_height(i32) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @rshift_row(i8*, i32, i32) #1

declare dso_local i32 @split_row(i8*, i8*, i8*, i32) #1

declare dso_local i32 @add_char(i32, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
