; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_offload_settings_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_offload_settings_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.offload_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"offload\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"coalesce\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"tstamp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"sack\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nagle\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ecn\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ddp\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"\22%s\22 is not a valid keyword, or it does not support negation.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [84 x i8] c"\22%s\22 is not a valid keyword, or it requires a parameter that has not been provided.\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"cong\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"reno\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tahoe\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"newreno\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"highspeed\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"unknown congestion algorithm \22%s\22.\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.19 = private unnamed_addr constant [86 x i8] c"invalid scheduling class \22%s\22.  \22class\22 needs an integer value where 0 <= value <= 15\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"txq\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"rxq\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"invalid queue specification \22%s\22.  \22%s\22 needs an integer value, or \22random\22.\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"mss\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"invalid MSS specification \22%s\22.  \22mss\22 needs a positive integer value\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"unknown settings keyword: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8*, i32*, %struct.offload_settings*)* @parse_offload_settings_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_offload_settings_word(i8* %0, i8** %1, i8* %2, i32* %3, %struct.offload_settings* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.offload_settings*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.offload_settings* %4, %struct.offload_settings** %11, align 8
  br label %15

15:                                               ; preds = %20, %5
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 33
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  br label %15

26:                                               ; preds = %15
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %6, align 4
  br label %332

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = and i32 %41, 1
  %43 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %44 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  br label %331

46:                                               ; preds = %34
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = and i32 %53, 1
  %55 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %56 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 0, i32* %57, align 4
  br label %330

58:                                               ; preds = %46
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62, %58
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  %70 = and i32 %69, 1
  %71 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %72 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %10, align 8
  store i32 0, i32* %73, align 4
  br label %329

74:                                               ; preds = %62
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  %82 = and i32 %81, 1
  %83 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %84 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 0, i32* %85, align 4
  br label %328

86:                                               ; preds = %74
  %87 = load i8*, i8** %7, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = and i32 %93, 1
  %95 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %96 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load i32*, i32** %10, align 8
  store i32 0, i32* %97, align 4
  br label %327

98:                                               ; preds = %86
  %99 = load i8*, i8** %7, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = and i32 %105, 1
  %107 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %108 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 0, i32* %109, align 4
  br label %326

110:                                              ; preds = %98
  %111 = load i8*, i8** %7, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  %118 = and i32 %117, 1
  %119 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %120 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load i32*, i32** %10, align 8
  store i32 0, i32* %121, align 4
  br label %325

122:                                              ; preds = %110
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = and i32 %129, 1
  %131 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %132 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %10, align 8
  store i32 0, i32* %133, align 4
  br label %324

134:                                              ; preds = %122
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* @EINVAL, align 4
  store i32 %141, i32* %6, align 4
  br label %332

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %154, %142
  %144 = load i8**, i8*** %8, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i8* @strsep(i8** %144, i8* %145)
  store i8* %146, i8** %12, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load i8*, i8** %12, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %155

154:                                              ; preds = %148
  br label %143

155:                                              ; preds = %153, %143
  %156 = load i8*, i8** %12, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0), i8* %159)
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %6, align 4
  br label %332

162:                                              ; preds = %155
  %163 = load i8*, i8** %7, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %202, label %166

166:                                              ; preds = %162
  %167 = load i8*, i8** %12, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %172 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %171, i32 0, i32 8
  store i32 0, i32* %172, align 8
  br label %201

173:                                              ; preds = %166
  %174 = load i8*, i8** %12, align 8
  %175 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %179 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %178, i32 0, i32 8
  store i32 1, i32* %179, align 8
  br label %200

180:                                              ; preds = %173
  %181 = load i8*, i8** %12, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %186 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %185, i32 0, i32 8
  store i32 2, i32* %186, align 8
  br label %199

187:                                              ; preds = %180
  %188 = load i8*, i8** %12, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %193 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %192, i32 0, i32 8
  store i32 3, i32* %193, align 8
  br label %198

194:                                              ; preds = %187
  %195 = load i8*, i8** %7, align 8
  %196 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* %195)
  %197 = load i32, i32* @EINVAL, align 4
  store i32 %197, i32* %6, align 4
  br label %332

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198, %184
  br label %200

200:                                              ; preds = %199, %177
  br label %201

201:                                              ; preds = %200, %170
  br label %323

202:                                              ; preds = %162
  %203 = load i8*, i8** %7, align 8
  %204 = call i64 @strcmp(i8* %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %227, label %206

206:                                              ; preds = %202
  store i64 -1, i64* %14, align 8
  %207 = load i8*, i8** %12, align 8
  %208 = call i8* @str_to_number(i8* %207, i64* %14, i32* null)
  store i8* %208, i8** %13, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %206
  %214 = load i64, i64* %14, align 8
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load i64, i64* %14, align 8
  %218 = icmp sgt i64 %217, 15
  br i1 %218, label %219, label %223

219:                                              ; preds = %216, %213, %206
  %220 = load i8*, i8** %12, align 8
  %221 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.19, i64 0, i64 0), i8* %220)
  %222 = load i32, i32* @EINVAL, align 4
  store i32 %222, i32* %6, align 4
  br label %332

223:                                              ; preds = %216
  %224 = load i64, i64* %14, align 8
  %225 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %226 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %225, i32 0, i32 9
  store i64 %224, i64* %226, align 8
  br label %322

227:                                              ; preds = %202
  %228 = load i8*, i8** %7, align 8
  %229 = call i64 @strcmp(i8* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load i8*, i8** %7, align 8
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = load i8*, i8** %7, align 8
  %237 = call i64 @strcmp(i8* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %294, label %239

239:                                              ; preds = %235, %231, %227
  store i64 -1, i64* %14, align 8
  %240 = load i8*, i8** %12, align 8
  %241 = call i64 @strcmp(i8* %240, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %262

243:                                              ; preds = %239
  %244 = load i8*, i8** %12, align 8
  %245 = call i8* @str_to_number(i8* %244, i64* %14, i32* null)
  store i8* %245, i8** %13, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %243
  %251 = load i64, i64* %14, align 8
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i64, i64* %14, align 8
  %255 = icmp sgt i64 %254, 65535
  br i1 %255, label %256, label %261

256:                                              ; preds = %253, %250, %243
  %257 = load i8*, i8** %12, align 8
  %258 = load i8*, i8** %7, align 8
  %259 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.24, i64 0, i64 0), i8* %257, i8* %258)
  %260 = load i32, i32* @EINVAL, align 4
  store i32 %260, i32* %6, align 4
  br label %332

261:                                              ; preds = %253
  br label %262

262:                                              ; preds = %261, %239
  %263 = load i8*, i8** %7, align 8
  %264 = call i64 @strcmp(i8* %263, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %262
  %267 = load i64, i64* %14, align 8
  %268 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %269 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %268, i32 0, i32 10
  store i64 %267, i64* %269, align 8
  %270 = load i64, i64* %14, align 8
  %271 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %272 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %271, i32 0, i32 11
  store i64 %270, i64* %272, align 8
  br label %293

273:                                              ; preds = %262
  %274 = load i8*, i8** %7, align 8
  %275 = call i64 @strcmp(i8* %274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = load i64, i64* %14, align 8
  %279 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %280 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %279, i32 0, i32 10
  store i64 %278, i64* %280, align 8
  br label %292

281:                                              ; preds = %273
  %282 = load i8*, i8** %7, align 8
  %283 = call i64 @strcmp(i8* %282, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %14, align 8
  %287 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %288 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %287, i32 0, i32 11
  store i64 %286, i64* %288, align 8
  br label %291

289:                                              ; preds = %281
  %290 = load i32, i32* @EDOOFUS, align 4
  store i32 %290, i32* %6, align 4
  br label %332

291:                                              ; preds = %285
  br label %292

292:                                              ; preds = %291, %277
  br label %293

293:                                              ; preds = %292, %266
  br label %321

294:                                              ; preds = %235
  %295 = load i8*, i8** %7, align 8
  %296 = call i64 @strcmp(i8* %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %316, label %298

298:                                              ; preds = %294
  store i64 -1, i64* %14, align 8
  %299 = load i8*, i8** %12, align 8
  %300 = call i8* @str_to_number(i8* %299, i64* %14, i32* null)
  store i8* %300, i8** %13, align 8
  %301 = load i8*, i8** %13, align 8
  %302 = load i8, i8* %301, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %298
  %306 = load i64, i64* %14, align 8
  %307 = icmp sle i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %305, %298
  %309 = load i8*, i8** %12, align 8
  %310 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0), i8* %309)
  %311 = load i32, i32* @EINVAL, align 4
  store i32 %311, i32* %6, align 4
  br label %332

312:                                              ; preds = %305
  %313 = load i64, i64* %14, align 8
  %314 = load %struct.offload_settings*, %struct.offload_settings** %11, align 8
  %315 = getelementptr inbounds %struct.offload_settings, %struct.offload_settings* %314, i32 0, i32 12
  store i64 %313, i64* %315, align 8
  br label %320

316:                                              ; preds = %294
  %317 = load i8*, i8** %7, align 8
  %318 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i8* %317)
  %319 = load i32, i32* @EINVAL, align 4
  store i32 %319, i32* %6, align 4
  br label %332

320:                                              ; preds = %312
  br label %321

321:                                              ; preds = %320, %293
  br label %322

322:                                              ; preds = %321, %223
  br label %323

323:                                              ; preds = %322, %201
  br label %324

324:                                              ; preds = %323, %126
  br label %325

325:                                              ; preds = %324, %114
  br label %326

326:                                              ; preds = %325, %102
  br label %327

327:                                              ; preds = %326, %90
  br label %328

328:                                              ; preds = %327, %78
  br label %329

329:                                              ; preds = %328, %66
  br label %330

330:                                              ; preds = %329, %50
  br label %331

331:                                              ; preds = %330, %38
  store i32 0, i32* %6, align 4
  br label %332

332:                                              ; preds = %331, %316, %308, %289, %256, %219, %194, %158, %138, %30
  %333 = load i32, i32* %6, align 4
  ret i32 %333
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @str_to_number(i8*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
