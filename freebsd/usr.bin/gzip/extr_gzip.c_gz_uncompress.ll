; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_gz_uncompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_gzip.c_gz_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i64, i32*, i32* }

@BUFLEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to read stdin\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: unexpected end of file\00", align 1
@GZIP_MAGIC0 = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: trailing garbage ignored\00", align 1
@exit_value = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"input not gziped (MAGIC0)\00", align 1
@Z_NULL = common dso_local global i32* null, align 8
@GZIP_MAGIC1 = common dso_local global i8 0, align 1
@GZIP_OMAGIC1 = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"input not gziped (MAGIC1)\00", align 1
@Z_DEFLATED = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@EXTRA_FIELD = common dso_local global i32 0, align 4
@ORIG_NAME = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@HEAD_CRC = common dso_local global i32 0, align 4
@MAX_WBITS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to inflateInit\00", align 1
@Z_FINISH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Z_NEED_DICT error\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"data stream error\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"internal stream error\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"memory allocation error\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"unknown error from inflate(): %d\00", align 1
@tflag = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"error writing to output\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"truncated input\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"invalid compressed data--crc error\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"invalid compressed data--length error\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"decompression error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i32*, i8*)* @gz_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gz_uncompress(i32 %0, i32 %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 128, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %30 = load i8*, i8** @BUFLEN, align 8
  %31 = call i8* @malloc(i8* %30)
  store i8* %31, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = call i32 @maybe_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %522

35:                                               ; preds = %6
  %36 = load i8*, i8** @BUFLEN, align 8
  %37 = call i8* @malloc(i8* %36)
  store i8* %37, i8** %15, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @maybe_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %519

41:                                               ; preds = %35
  %42 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 56)
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** @BUFLEN, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  store i32* null, i32** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  store i32* null, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %508, %482, %444, %377, %41
  %57 = call i32 (...) @check_siginfo()
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %26, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %23, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %113

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i8*, i8** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @memmove(i8* %72, i8* %74, i64 %76)
  br label %78

78:                                               ; preds = %71, %67
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8*, i8** @BUFLEN, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 0, %89
  %91 = getelementptr i8, i8* %87, i64 %90
  %92 = call i32 @read(i32 %81, i8* %86, i8* %91)
  store i32 %92, i32* %27, align 4
  %93 = load i32, i32* %27, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %509

97:                                               ; preds = %78
  %98 = load i32, i32* %27, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1, i32* %23, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %27, align 4
  %104 = call i32 @infile_newdata(i32 %103)
  %105 = load i32, i32* %27, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %106
  store i64 %109, i64* %107, align 8
  store i32 0, i32* %26, align 4
  %110 = load i32, i32* %27, align 4
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %102, %64, %61
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i32, i32* %23, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %124)
  br label %509

126:                                              ; preds = %120, %117
  br label %510

127:                                              ; preds = %113
  %128 = load i32, i32* %19, align 4
  switch i32 %128, label %508 [
    i32 0, label %129
    i32 1, label %156
    i32 2, label %183
    i32 3, label %202
    i32 4, label %215
    i32 5, label %231
    i32 6, label %250
    i32 7, label %266
    i32 8, label %282
    i32 9, label %306
    i32 10, label %330
    i32 11, label %340
    i32 12, label %356
    i32 13, label %366
    i32 14, label %437
    i32 15, label %475
  ]

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, i8* @GZIP_MAGIC0, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %129
  %138 = load i32, i32* %17, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i8*, i8** %12, align 8
  %142 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  store i32 2, i32* @exit_value, align 4
  br label %510

143:                                              ; preds = %137
  %144 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %509

145:                                              ; preds = %129
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %146, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %149, align 8
  %152 = load i32, i32* %19, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %154 = load i32*, i32** @Z_NULL, align 8
  %155 = call i32 @crc32(i32 0, i32* %154, i32 0)
  store i32 %155, i32* %24, align 4
  br label %508

156:                                              ; preds = %127
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8, i8* @GZIP_MAGIC1, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp ne i32 %160, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = load i8, i8* @GZIP_OMAGIC1, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp ne i32 %168, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %509

174:                                              ; preds = %164, %156
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %175, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, -1
  store i64 %180, i64* %178, align 8
  %181 = load i32, i32* %19, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %19, align 4
  br label %508

183:                                              ; preds = %127
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8, i8* @Z_DEFLATED, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %509

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %194, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, -1
  store i64 %199, i64* %197, align 8
  %200 = load i32, i32* %19, align 4
  %201 = add i32 %200, 1
  store i32 %201, i32* %19, align 4
  br label %508

202:                                              ; preds = %127
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  store i32 %206, i32* %20, align 4
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %207, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, -1
  store i64 %212, i64* %210, align 8
  store i32 6, i32* %21, align 4
  %213 = load i32, i32* %19, align 4
  %214 = add i32 %213, 1
  store i32 %214, i32* %19, align 4
  br label %508

215:                                              ; preds = %127
  %216 = load i32, i32* %21, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load i32, i32* %21, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %21, align 4
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %221, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, -1
  store i64 %226, i64* %224, align 8
  br label %230

227:                                              ; preds = %215
  %228 = load i32, i32* %19, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %19, align 4
  br label %230

230:                                              ; preds = %227, %218
  br label %508

231:                                              ; preds = %127
  %232 = load i32, i32* %20, align 4
  %233 = load i32, i32* @EXTRA_FIELD, align 4
  %234 = and i32 %232, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  store i32 8, i32* %19, align 4
  br label %508

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  store i32 %241, i32* %21, align 4
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %242, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = add i64 %246, -1
  store i64 %247, i64* %245, align 8
  %248 = load i32, i32* %19, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %19, align 4
  br label %508

250:                                              ; preds = %127
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = shl i32 %254, 8
  %256 = load i32, i32* %21, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %21, align 4
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %258, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %262, -1
  store i64 %263, i64* %261, align 8
  %264 = load i32, i32* %19, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %19, align 4
  br label %508

266:                                              ; preds = %127
  %267 = load i32, i32* %21, align 4
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load i32, i32* %21, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %21, align 4
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %272, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add i64 %276, -1
  store i64 %277, i64* %275, align 8
  br label %281

278:                                              ; preds = %266
  %279 = load i32, i32* %19, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %19, align 4
  br label %281

281:                                              ; preds = %278, %269
  br label %508

282:                                              ; preds = %127
  %283 = load i32, i32* %20, align 4
  %284 = load i32, i32* @ORIG_NAME, align 4
  %285 = and i32 %283, %284
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32, i32* %19, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %19, align 4
  br label %508

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %290
  %297 = load i32, i32* %19, align 4
  %298 = add i32 %297, 1
  store i32 %298, i32* %19, align 4
  br label %299

299:                                              ; preds = %296, %290
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %300, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = add i64 %304, -1
  store i64 %305, i64* %303, align 8
  br label %508

306:                                              ; preds = %127
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* @COMMENT, align 4
  %309 = and i32 %307, %308
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load i32, i32* %19, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %19, align 4
  br label %508

314:                                              ; preds = %306
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %314
  %321 = load i32, i32* %19, align 4
  %322 = add i32 %321, 1
  store i32 %322, i32* %19, align 4
  br label %323

323:                                              ; preds = %320, %314
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %324, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = add i64 %328, -1
  store i64 %329, i64* %327, align 8
  br label %508

330:                                              ; preds = %127
  %331 = load i32, i32* %20, align 4
  %332 = load i32, i32* @HEAD_CRC, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  store i32 2, i32* %21, align 4
  br label %337

336:                                              ; preds = %330
  store i32 0, i32* %21, align 4
  br label %337

337:                                              ; preds = %336, %335
  %338 = load i32, i32* %19, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %19, align 4
  br label %508

340:                                              ; preds = %127
  %341 = load i32, i32* %21, align 4
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %340
  %344 = load i32, i32* %21, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %21, align 4
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %347 = load i8*, i8** %346, align 8
  %348 = getelementptr inbounds i8, i8* %347, i32 1
  store i8* %348, i8** %346, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = add i64 %350, -1
  store i64 %351, i64* %349, align 8
  br label %355

352:                                              ; preds = %340
  %353 = load i32, i32* %19, align 4
  %354 = add i32 %353, 1
  store i32 %354, i32* %19, align 4
  br label %355

355:                                              ; preds = %352, %343
  br label %508

356:                                              ; preds = %127
  %357 = load i32, i32* @MAX_WBITS, align 4
  %358 = sub nsw i32 0, %357
  %359 = call i32 @inflateInit2(%struct.TYPE_6__* %13, i32 %358)
  %360 = icmp ne i32 %359, 130
  br i1 %360, label %361, label %363

361:                                              ; preds = %356
  %362 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %509

363:                                              ; preds = %356
  %364 = load i32, i32* %19, align 4
  %365 = add i32 %364, 1
  store i32 %365, i32* %19, align 4
  br label %508

366:                                              ; preds = %127
  %367 = load i32, i32* @Z_FINISH, align 4
  %368 = call i32 @inflate(%struct.TYPE_6__* %13, i32 %367)
  store i32 %368, i32* %22, align 4
  %369 = load i32, i32* %22, align 4
  switch i32 %369, label %388 [
    i32 134, label %370
    i32 129, label %379
    i32 130, label %379
    i32 131, label %380
    i32 133, label %382
    i32 128, label %384
    i32 132, label %386
  ]

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %372 = load i8*, i8** %371, align 8
  %373 = icmp ugt i8* %372, null
  br i1 %373, label %374, label %378

374:                                              ; preds = %370
  %375 = load i32, i32* %23, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %374
  br label %56

378:                                              ; preds = %374, %370
  br label %379

379:                                              ; preds = %366, %366, %378
  br label %391

380:                                              ; preds = %366
  %381 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %509

382:                                              ; preds = %366
  %383 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %509

384:                                              ; preds = %366
  %385 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  br label %509

386:                                              ; preds = %366
  %387 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %509

388:                                              ; preds = %366
  %389 = load i32, i32* %22, align 4
  %390 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %389)
  br label %391

391:                                              ; preds = %388, %379
  %392 = load i8*, i8** @BUFLEN, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %394 = load i8*, i8** %393, align 8
  %395 = ptrtoint i8* %392 to i64
  %396 = ptrtoint i8* %394 to i64
  %397 = sub i64 %395, %396
  %398 = trunc i64 %397 to i32
  store i32 %398, i32* %25, align 4
  %399 = load i32, i32* %25, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %425

401:                                              ; preds = %391
  %402 = load i32, i32* %24, align 4
  %403 = load i8*, i8** %14, align 8
  %404 = bitcast i8* %403 to i32*
  %405 = load i32, i32* %25, align 4
  %406 = call i32 @crc32(i32 %402, i32* %404, i32 %405)
  store i32 %406, i32* %24, align 4
  %407 = load i32, i32* @tflag, align 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %401
  %410 = load i32, i32* %8, align 4
  %411 = load i8*, i8** %14, align 8
  %412 = load i32, i32* %25, align 4
  %413 = call i32 @write_retry(i32 %410, i8* %411, i32 %412)
  %414 = load i32, i32* %25, align 4
  %415 = icmp ne i32 %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %409
  %417 = call i32 (i8*, ...) @maybe_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %509

418:                                              ; preds = %409, %401
  %419 = load i32, i32* %25, align 4
  %420 = load i32, i32* %16, align 4
  %421 = add nsw i32 %420, %419
  store i32 %421, i32* %16, align 4
  %422 = load i32, i32* %25, align 4
  %423 = load i32, i32* %18, align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* %18, align 4
  br label %425

425:                                              ; preds = %418, %391
  %426 = load i32, i32* %22, align 4
  %427 = icmp eq i32 %426, 129
  br i1 %427, label %428, label %432

428:                                              ; preds = %425
  %429 = call i32 @inflateEnd(%struct.TYPE_6__* %13)
  %430 = load i32, i32* %19, align 4
  %431 = add i32 %430, 1
  store i32 %431, i32* %19, align 4
  br label %432

432:                                              ; preds = %428, %425
  %433 = load i8*, i8** %14, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i8* %433, i8** %434, align 8
  %435 = load i8*, i8** @BUFLEN, align 8
  %436 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i8* %435, i8** %436, align 8
  br label %508

437:                                              ; preds = %127
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = icmp ult i64 %439, 4
  br i1 %440, label %441, label %447

441:                                              ; preds = %437
  %442 = load i32, i32* %23, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %445, label %444

444:                                              ; preds = %441
  store i32 1, i32* %26, align 4
  br label %56

445:                                              ; preds = %441
  %446 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %509

447:                                              ; preds = %437
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %449 = load i8*, i8** %448, align 8
  %450 = getelementptr inbounds i8, i8* %449, i64 0
  %451 = bitcast i8* %450 to i32*
  %452 = call i32 @le32dec(i32* %451)
  store i32 %452, i32* %28, align 4
  %453 = load i32, i32* %28, align 4
  %454 = load i32, i32* %24, align 4
  %455 = icmp ne i32 %453, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %447
  %457 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  br label %509

458:                                              ; preds = %447
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = sub i64 %460, 4
  store i64 %461, i64* %459, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %463 = load i8*, i8** %462, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 4
  store i8* %464, i8** %462, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %472, label %468

468:                                              ; preds = %458
  %469 = load i32, i32* %23, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %468
  br label %510

472:                                              ; preds = %468, %458
  %473 = load i32, i32* %19, align 4
  %474 = add i32 %473, 1
  store i32 %474, i32* %19, align 4
  br label %508

475:                                              ; preds = %127
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = icmp ult i64 %477, 4
  br i1 %478, label %479, label %485

479:                                              ; preds = %475
  %480 = load i32, i32* %23, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %483, label %482

482:                                              ; preds = %479
  store i32 1, i32* %26, align 4
  br label %56

483:                                              ; preds = %479
  %484 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %509

485:                                              ; preds = %475
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %487 = load i8*, i8** %486, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 0
  %489 = bitcast i8* %488 to i32*
  %490 = call i32 @le32dec(i32* %489)
  store i32 %490, i32* %29, align 4
  %491 = load i32, i32* %29, align 4
  %492 = load i32, i32* %18, align 4
  %493 = icmp ne i32 %491, %492
  br i1 %493, label %494, label %496

494:                                              ; preds = %485
  %495 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  br label %509

496:                                              ; preds = %485
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %498 = load i64, i64* %497, align 8
  %499 = sub i64 %498, 4
  store i64 %499, i64* %497, align 8
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %501 = load i8*, i8** %500, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 4
  store i8* %502, i8** %500, align 8
  %503 = load i32, i32* %22, align 4
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %496
  %506 = call i32 (i8*, ...) @maybe_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %509

507:                                              ; preds = %496
  store i32 0, i32* %19, align 4
  br label %508

508:                                              ; preds = %127, %507, %472, %432, %363, %355, %337, %323, %311, %299, %287, %281, %250, %237, %236, %230, %202, %193, %174, %145
  br label %56

509:                                              ; preds = %505, %494, %483, %456, %445, %416, %386, %384, %382, %380, %361, %191, %172, %143, %123, %95
  store i32 -1, i32* %16, align 4
  br label %510

510:                                              ; preds = %509, %471, %140, %126
  br label %511

511:                                              ; preds = %510
  %512 = load i32, i32* %19, align 4
  %513 = icmp ugt i32 %512, 12
  br i1 %513, label %514, label %516

514:                                              ; preds = %511
  %515 = call i32 @inflateEnd(%struct.TYPE_6__* %13)
  br label %516

516:                                              ; preds = %514, %511
  %517 = load i8*, i8** %15, align 8
  %518 = call i32 @free(i8* %517)
  br label %519

519:                                              ; preds = %516, %39
  %520 = load i8*, i8** %14, align 8
  %521 = call i32 @free(i8* %520)
  br label %522

522:                                              ; preds = %519, %33
  %523 = load i32*, i32** %11, align 8
  %524 = icmp ne i32* %523, null
  br i1 %524, label %525, label %528

525:                                              ; preds = %522
  %526 = load i32, i32* %17, align 4
  %527 = load i32*, i32** %11, align 8
  store i32 %526, i32* %527, align 4
  br label %528

528:                                              ; preds = %525, %522
  %529 = load i32, i32* %16, align 4
  ret i32 %529
}

declare dso_local i8* @malloc(i8*) #1

declare dso_local i32 @maybe_err(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @check_siginfo(...) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @read(i32, i8*, i8*) #1

declare dso_local i32 @maybe_warn(i8*, ...) #1

declare dso_local i32 @infile_newdata(i32) #1

declare dso_local i32 @maybe_warnx(i8*, ...) #1

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i32 @inflateInit2(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @write_retry(i32, i8*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_6__*) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
