; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_ar.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ar/extr_ar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdar = type { i8*, i32, i8*, i8, i32, i8**, i32* }

@.str = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ranlib\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tDUV\00", align 1
@longopts = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@AR_D = common dso_local global i32 0, align 4
@AR_S = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"abCcdDfijlMmopqrSsTtUuVvxz\00", align 1
@AR_A = common dso_local global i32 0, align 4
@AR_B = common dso_local global i32 0, align 4
@AR_CC = common dso_local global i32 0, align 4
@AR_C = common dso_local global i32 0, align 4
@AR_TR = common dso_local global i32 0, align 4
@AR_O = common dso_local global i32 0, align 4
@AR_SS = common dso_local global i32 0, align 4
@AR_U = common dso_local global i32 0, align 4
@AR_V = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"only one of -a and -[bi] options allowed\00", align 1
@AR_J = common dso_local global i32 0, align 4
@AR_Z = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"only one of -j and -z options allowed\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"only one of -s and -S options allowed\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"no position operand specified\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"basename failed\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"mqr\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"qr\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-U\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"qrx\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ptx\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"%s: not found in archive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bsdar*, align 8
  %7 = alloca %struct.bsdar, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.bsdar* %7, %struct.bsdar** %6, align 8
  %14 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %15 = call i32 @memset(%struct.bsdar* %14, i32 0, i32 48)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = call i8* (...) @getprogname()
  %17 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %18 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = icmp eq i8* %16, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %22 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %25 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = icmp uge i64 %29, %31
  br i1 %32, label %33, label %106

33:                                               ; preds = %23
  %34 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %35 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %106

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* @longopts, align 4
  %50 = call i32 @getopt_long(i32 %47, i8** %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32* null)
  store i32 %50, i32* %11, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %61 [
    i32 116, label %54
    i32 68, label %55
    i32 85, label %56
    i32 86, label %57
    i32 128, label %59
  ]

54:                                               ; preds = %52
  br label %63

55:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %63

56:                                               ; preds = %52
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %63

57:                                               ; preds = %52
  %58 = call i32 (...) @ranlib_version()
  br label %63

59:                                               ; preds = %52
  %60 = call i32 (...) @ranlib_usage()
  br label %61

61:                                               ; preds = %52, %59
  %62 = call i32 (...) @ranlib_usage()
  br label %63

63:                                               ; preds = %61, %57, %56, %55, %54
  br label %46

64:                                               ; preds = %46
  %65 = load i64, i64* @optind, align 8
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 %65
  store i8** %67, i8*** %5, align 8
  %68 = load i64, i64* @optind, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = call i32 (...) @ranlib_usage()
  br label %78

78:                                               ; preds = %76, %64
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @AR_D, align 4
  %83 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %84 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* @AR_S, align 4
  %89 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %90 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %100, %87
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %5, align 8
  %96 = load i8*, i8** %94, align 8
  %97 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %98 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = icmp ne i8* %96, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %102 = call i32 @ar_mode_s(%struct.bsdar* %101)
  br label %93

103:                                              ; preds = %93
  %104 = load i32, i32* @EX_OK, align 4
  %105 = call i32 @exit(i32 %104) #3
  unreachable

106:                                              ; preds = %33, %23
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (...) @bsdar_usage()
  br label %111

111:                                              ; preds = %109, %106
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  %114 = load i8*, i8** %113, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 45
  br i1 %117, label %118, label %146

118:                                              ; preds = %111
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = add nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i8* @malloc(i64 %125)
  store i8* %126, i8** %8, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %130 = load i32, i32* @EX_SOFTWARE, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i32 @bsdar_errc(%struct.bsdar* %129, i32 %130, i32 %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %118
  %134 = load i8*, i8** %8, align 8
  store i8 45, i8* %134, align 1
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = sub i64 %140, 1
  %142 = call i32 @strlcpy(i8* %136, i8* %139, i64 %141)
  %143 = load i8*, i8** %8, align 8
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 1
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %133, %111
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %259, %147
  %149 = load i32, i32* %4, align 4
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* @longopts, align 4
  %152 = call i32 @getopt_long(i32 %149, i8** %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %151, i32* null)
  store i32 %152, i32* %11, align 4
  %153 = icmp ne i32 %152, -1
  br i1 %153, label %154, label %260

154:                                              ; preds = %148
  %155 = load i32, i32* %11, align 4
  switch i32 %155, label %257 [
    i32 97, label %156
    i32 98, label %162
    i32 105, label %162
    i32 67, label %168
    i32 99, label %174
    i32 100, label %180
    i32 68, label %184
    i32 102, label %185
    i32 84, label %185
    i32 106, label %191
    i32 108, label %192
    i32 77, label %193
    i32 109, label %197
    i32 111, label %201
    i32 112, label %207
    i32 113, label %211
    i32 114, label %215
    i32 83, label %219
    i32 115, label %225
    i32 116, label %231
    i32 85, label %235
    i32 117, label %236
    i32 86, label %242
    i32 118, label %244
    i32 120, label %250
    i32 122, label %254
    i32 128, label %255
  ]

156:                                              ; preds = %154
  %157 = load i32, i32* @AR_A, align 4
  %158 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %159 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %259

162:                                              ; preds = %154, %154
  %163 = load i32, i32* @AR_B, align 4
  %164 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %165 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %259

168:                                              ; preds = %154
  %169 = load i32, i32* @AR_CC, align 4
  %170 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %171 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %259

174:                                              ; preds = %154
  %175 = load i32, i32* @AR_C, align 4
  %176 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %177 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %259

180:                                              ; preds = %154
  %181 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @set_mode(%struct.bsdar* %181, i32 %182)
  br label %259

184:                                              ; preds = %154
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %259

185:                                              ; preds = %154, %154
  %186 = load i32, i32* @AR_TR, align 4
  %187 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %188 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %259

191:                                              ; preds = %154
  br label %259

192:                                              ; preds = %154
  br label %259

193:                                              ; preds = %154
  %194 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @set_mode(%struct.bsdar* %194, i32 %195)
  br label %259

197:                                              ; preds = %154
  %198 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i32 @set_mode(%struct.bsdar* %198, i32 %199)
  br label %259

201:                                              ; preds = %154
  %202 = load i32, i32* @AR_O, align 4
  %203 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %204 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %259

207:                                              ; preds = %154
  %208 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @set_mode(%struct.bsdar* %208, i32 %209)
  br label %259

211:                                              ; preds = %154
  %212 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @set_mode(%struct.bsdar* %212, i32 %213)
  br label %259

215:                                              ; preds = %154
  %216 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @set_mode(%struct.bsdar* %216, i32 %217)
  br label %259

219:                                              ; preds = %154
  %220 = load i32, i32* @AR_SS, align 4
  %221 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %222 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %259

225:                                              ; preds = %154
  %226 = load i32, i32* @AR_S, align 4
  %227 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %228 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %259

231:                                              ; preds = %154
  %232 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @set_mode(%struct.bsdar* %232, i32 %233)
  br label %259

235:                                              ; preds = %154
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %259

236:                                              ; preds = %154
  %237 = load i32, i32* @AR_U, align 4
  %238 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %239 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %259

242:                                              ; preds = %154
  %243 = call i32 (...) @bsdar_version()
  br label %259

244:                                              ; preds = %154
  %245 = load i32, i32* @AR_V, align 4
  %246 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %247 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %259

250:                                              ; preds = %154
  %251 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @set_mode(%struct.bsdar* %251, i32 %252)
  br label %259

254:                                              ; preds = %154
  br label %259

255:                                              ; preds = %154
  %256 = call i32 (...) @bsdar_usage()
  br label %257

257:                                              ; preds = %154, %255
  %258 = call i32 (...) @bsdar_usage()
  br label %259

259:                                              ; preds = %257, %254, %250, %244, %242, %236, %235, %231, %225, %219, %215, %211, %207, %201, %197, %193, %192, %191, %185, %184, %180, %174, %168, %162, %156
  br label %148

260:                                              ; preds = %148
  %261 = load i64, i64* @optind, align 8
  %262 = load i8**, i8*** %5, align 8
  %263 = getelementptr inbounds i8*, i8** %262, i64 %261
  store i8** %263, i8*** %5, align 8
  %264 = load i64, i64* @optind, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = sub nsw i64 %266, %264
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %4, align 4
  %269 = load i8**, i8*** %5, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %272, label %280

272:                                              ; preds = %260
  %273 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %274 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %273, i32 0, i32 3
  %275 = load i8, i8* %274, align 8
  %276 = sext i8 %275 to i32
  %277 = icmp ne i32 %276, 77
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = call i32 (...) @bsdar_usage()
  br label %280

280:                                              ; preds = %278, %272, %260
  %281 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %282 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @AR_A, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %280
  %288 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %289 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @AR_B, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %287
  %295 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %296 = load i32, i32* @EX_USAGE, align 4
  %297 = call i32 @bsdar_errc(%struct.bsdar* %295, i32 %296, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %298

298:                                              ; preds = %294, %287, %280
  %299 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %300 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @AR_J, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %316

305:                                              ; preds = %298
  %306 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %307 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @AR_Z, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %305
  %313 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %314 = load i32, i32* @EX_USAGE, align 4
  %315 = call i32 @bsdar_errc(%struct.bsdar* %313, i32 %314, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %316

316:                                              ; preds = %312, %305, %298
  %317 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %318 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @AR_S, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %334

323:                                              ; preds = %316
  %324 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %325 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @AR_SS, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %323
  %331 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %332 = load i32, i32* @EX_USAGE, align 4
  %333 = call i32 @bsdar_errc(%struct.bsdar* %331, i32 %332, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %334

334:                                              ; preds = %330, %323, %316
  %335 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %336 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @AR_A, align 4
  %339 = load i32, i32* @AR_B, align 4
  %340 = or i32 %338, %339
  %341 = and i32 %337, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %368

343:                                              ; preds = %334
  %344 = load i8**, i8*** %5, align 8
  %345 = load i8*, i8** %344, align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %349 = load i32, i32* @EX_USAGE, align 4
  %350 = call i32 @bsdar_errc(%struct.bsdar* %348, i32 %349, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %351

351:                                              ; preds = %347, %343
  %352 = load i8**, i8*** %5, align 8
  %353 = load i8*, i8** %352, align 8
  %354 = call i32* @basename(i8* %353)
  %355 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %356 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %355, i32 0, i32 6
  store i32* %354, i32** %356, align 8
  %357 = icmp eq i32* %354, null
  br i1 %357, label %358, label %363

358:                                              ; preds = %351
  %359 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %360 = load i32, i32* @EX_SOFTWARE, align 4
  %361 = load i32, i32* @errno, align 4
  %362 = call i32 @bsdar_errc(%struct.bsdar* %359, i32 %360, i32 %361, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %363

363:                                              ; preds = %358, %351
  %364 = load i32, i32* %4, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %4, align 4
  %366 = load i8**, i8*** %5, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i32 1
  store i8** %367, i8*** %5, align 8
  br label %368

368:                                              ; preds = %363, %334
  %369 = load i32, i32* %12, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %399, label %371

371:                                              ; preds = %368
  %372 = load i32, i32* %13, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %405

374:                                              ; preds = %371
  %375 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %376 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %375, i32 0, i32 3
  %377 = load i8, i8* %376, align 8
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 113
  br i1 %379, label %399, label %380

380:                                              ; preds = %374
  %381 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %382 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %381, i32 0, i32 3
  %383 = load i8, i8* %382, align 8
  %384 = sext i8 %383 to i32
  %385 = icmp eq i32 %384, 114
  br i1 %385, label %399, label %386

386:                                              ; preds = %380
  %387 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %388 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %387, i32 0, i32 3
  %389 = load i8, i8* %388, align 8
  %390 = sext i8 %389 to i32
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %405

392:                                              ; preds = %386
  %393 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %394 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @AR_S, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %392, %380, %374, %368
  %400 = load i32, i32* @AR_D, align 4
  %401 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %402 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 8
  br label %405

405:                                              ; preds = %399, %392, %386, %371
  %406 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %407 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @AR_A, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %405
  %413 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %414 = call i32 @only_mode(%struct.bsdar* %413, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %415

415:                                              ; preds = %412, %405
  %416 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %417 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @AR_B, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %415
  %423 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %424 = call i32 @only_mode(%struct.bsdar* %423, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %425

425:                                              ; preds = %422, %415
  %426 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %427 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @AR_C, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %425
  %433 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %434 = call i32 @only_mode(%struct.bsdar* %433, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %435

435:                                              ; preds = %432, %425
  %436 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %437 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* @AR_CC, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %435
  %443 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %444 = call i32 @only_mode(%struct.bsdar* %443, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %445

445:                                              ; preds = %442, %435
  %446 = load i32, i32* %12, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %450 = call i32 @only_mode(%struct.bsdar* %449, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %451

451:                                              ; preds = %448, %445
  %452 = load i32, i32* %13, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %451
  %455 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %456 = call i32 @only_mode(%struct.bsdar* %455, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %457

457:                                              ; preds = %454, %451
  %458 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %459 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @AR_O, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %457
  %465 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %466 = call i32 @only_mode(%struct.bsdar* %465, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %467

467:                                              ; preds = %464, %457
  %468 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %469 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @AR_SS, align 4
  %472 = and i32 %470, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %467
  %475 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %476 = call i32 @only_mode(%struct.bsdar* %475, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %477

477:                                              ; preds = %474, %467
  %478 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %479 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @AR_U, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %477
  %485 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %486 = call i32 @only_mode(%struct.bsdar* %485, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %487

487:                                              ; preds = %484, %477
  %488 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %489 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %488, i32 0, i32 3
  %490 = load i8, i8* %489, align 8
  %491 = sext i8 %490 to i32
  %492 = icmp eq i32 %491, 77
  br i1 %492, label %493, label %498

493:                                              ; preds = %487
  %494 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %495 = call i32 @ar_mode_script(%struct.bsdar* %494)
  %496 = load i32, i32* @EX_OK, align 4
  %497 = call i32 @exit(i32 %496) #3
  unreachable

498:                                              ; preds = %487
  %499 = load i8**, i8*** %5, align 8
  %500 = load i8*, i8** %499, align 8
  %501 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %502 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %501, i32 0, i32 2
  store i8* %500, i8** %502, align 8
  %503 = icmp eq i8* %500, null
  br i1 %503, label %504, label %506

504:                                              ; preds = %498
  %505 = call i32 (...) @bsdar_usage()
  br label %506

506:                                              ; preds = %504, %498
  %507 = load i32, i32* %4, align 4
  %508 = add nsw i32 %507, -1
  store i32 %508, i32* %4, align 4
  %509 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %510 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %509, i32 0, i32 4
  store i32 %508, i32* %510, align 4
  %511 = load i8**, i8*** %5, align 8
  %512 = getelementptr inbounds i8*, i8** %511, i32 1
  store i8** %512, i8*** %5, align 8
  %513 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %514 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %513, i32 0, i32 5
  store i8** %512, i8*** %514, align 8
  %515 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %516 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %515, i32 0, i32 3
  %517 = load i8, i8* %516, align 8
  %518 = icmp ne i8 %517, 0
  br i1 %518, label %519, label %525

519:                                              ; preds = %506
  %520 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %521 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %520, i32 0, i32 3
  %522 = load i8, i8* %521, align 8
  %523 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8 signext %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %543

525:                                              ; preds = %519, %506
  %526 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %527 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* @AR_S, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %543

532:                                              ; preds = %525
  %533 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %534 = call i32 @ar_mode_s(%struct.bsdar* %533)
  %535 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %536 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %535, i32 0, i32 3
  %537 = load i8, i8* %536, align 8
  %538 = icmp ne i8 %537, 0
  br i1 %538, label %542, label %539

539:                                              ; preds = %532
  %540 = load i32, i32* @EX_OK, align 4
  %541 = call i32 @exit(i32 %540) #3
  unreachable

542:                                              ; preds = %532
  br label %543

543:                                              ; preds = %542, %525, %519
  %544 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %545 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %544, i32 0, i32 3
  %546 = load i8, i8* %545, align 8
  %547 = sext i8 %546 to i32
  switch i32 %547, label %569 [
    i32 100, label %548
    i32 109, label %551
    i32 112, label %554
    i32 113, label %557
    i32 114, label %560
    i32 116, label %563
    i32 120, label %566
  ]

548:                                              ; preds = %543
  %549 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %550 = call i32 @ar_mode_d(%struct.bsdar* %549)
  br label %571

551:                                              ; preds = %543
  %552 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %553 = call i32 @ar_mode_m(%struct.bsdar* %552)
  br label %571

554:                                              ; preds = %543
  %555 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %556 = call i32 @ar_mode_p(%struct.bsdar* %555)
  br label %571

557:                                              ; preds = %543
  %558 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %559 = call i32 @ar_mode_q(%struct.bsdar* %558)
  br label %571

560:                                              ; preds = %543
  %561 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %562 = call i32 @ar_mode_r(%struct.bsdar* %561)
  br label %571

563:                                              ; preds = %543
  %564 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %565 = call i32 @ar_mode_t(%struct.bsdar* %564)
  br label %571

566:                                              ; preds = %543
  %567 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %568 = call i32 @ar_mode_x(%struct.bsdar* %567)
  br label %571

569:                                              ; preds = %543
  %570 = call i32 (...) @bsdar_usage()
  br label %571

571:                                              ; preds = %569, %566, %563, %560, %557, %554, %551, %548
  store i32 0, i32* %10, align 4
  br label %572

572:                                              ; preds = %598, %571
  %573 = load i32, i32* %10, align 4
  %574 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %575 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %574, i32 0, i32 4
  %576 = load i32, i32* %575, align 4
  %577 = icmp slt i32 %573, %576
  br i1 %577, label %578, label %601

578:                                              ; preds = %572
  %579 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %580 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %579, i32 0, i32 5
  %581 = load i8**, i8*** %580, align 8
  %582 = load i32, i32* %10, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i8*, i8** %581, i64 %583
  %585 = load i8*, i8** %584, align 8
  %586 = icmp ne i8* %585, null
  br i1 %586, label %587, label %597

587:                                              ; preds = %578
  %588 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %589 = load %struct.bsdar*, %struct.bsdar** %6, align 8
  %590 = getelementptr inbounds %struct.bsdar, %struct.bsdar* %589, i32 0, i32 5
  %591 = load i8**, i8*** %590, align 8
  %592 = load i32, i32* %10, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i8*, i8** %591, i64 %593
  %595 = load i8*, i8** %594, align 8
  %596 = call i32 @bsdar_warnc(%struct.bsdar* %588, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %595)
  br label %597

597:                                              ; preds = %587, %578
  br label %598

598:                                              ; preds = %597
  %599 = load i32, i32* %10, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %10, align 4
  br label %572

601:                                              ; preds = %572
  %602 = load i32, i32* @EX_OK, align 4
  %603 = call i32 @exit(i32 %602) #3
  unreachable
}

declare dso_local i32 @memset(%struct.bsdar*, i32, i32) #1

declare dso_local i8* @getprogname(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @ranlib_version(...) #1

declare dso_local i32 @ranlib_usage(...) #1

declare dso_local i32 @ar_mode_s(%struct.bsdar*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @bsdar_usage(...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @bsdar_errc(%struct.bsdar*, i32, i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @set_mode(%struct.bsdar*, i32) #1

declare dso_local i32 @bsdar_version(...) #1

declare dso_local i32* @basename(i8*) #1

declare dso_local i32 @only_mode(%struct.bsdar*, i8*, i8*) #1

declare dso_local i32 @ar_mode_script(%struct.bsdar*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @ar_mode_d(%struct.bsdar*) #1

declare dso_local i32 @ar_mode_m(%struct.bsdar*) #1

declare dso_local i32 @ar_mode_p(%struct.bsdar*) #1

declare dso_local i32 @ar_mode_q(%struct.bsdar*) #1

declare dso_local i32 @ar_mode_r(%struct.bsdar*) #1

declare dso_local i32 @ar_mode_t(%struct.bsdar*) #1

declare dso_local i32 @ar_mode_x(%struct.bsdar*) #1

declare dso_local i32 @bsdar_warnc(%struct.bsdar*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
