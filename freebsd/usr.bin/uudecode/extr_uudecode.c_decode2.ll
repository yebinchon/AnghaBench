; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_decode2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_decode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }
%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@base64 = common dso_local global i32 0, align 4
@infp = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"begin-base64 \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"begin \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: unable to parse file mode\00", align 1
@infile = common dso_local global i32 0, align 4
@sflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: bad output filename\00", align 1
@oflag = common dso_local global i64 0, align 8
@outfile = common dso_local global i8* null, align 8
@pflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"/dev/stdout\00", align 1
@stdout = common dso_local global i32* null, align 8
@outfp = common dso_local global i32* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@iflag = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"%s: unlink %s\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @decode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.passwd*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  store i32 0, i32* @base64, align 4
  br label %20

20:                                               ; preds = %86, %48, %41, %0
  %21 = trunc i64 %17 to i32
  %22 = load i32, i32* @infp, align 4
  %23 = call i32* @fgets(i8* %19, i32 %21, i32 %22)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EOF, align 4
  store i32 %26, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

27:                                               ; preds = %20
  store i8* %19, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  store i32 1, i32* @base64, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 13
  store i8* %33, i8** %7, align 8
  br label %43

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 6
  store i8* %40, i8** %7, align 8
  br label %42

41:                                               ; preds = %34
  br label %20

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i8*, i8** %7, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 32)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %20

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 0, i8* %50, align 1
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strlen(i8* %52)
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %77, %49
  %55 = load i64, i64* %5, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %5, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 13
  br label %73

73:                                               ; preds = %65, %57
  %74 = phi i1 [ true, %57 ], [ %72, %65 ]
  br label %75

75:                                               ; preds = %73, %54
  %76 = phi i1 [ false, %54 ], [ %74, %73 ]
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %5, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %5, align 8
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  br label %54

82:                                               ; preds = %75
  %83 = load i64, i64* %5, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %87

86:                                               ; preds = %82
  br label %20

87:                                               ; preds = %85
  %88 = load i8*, i8** %7, align 8
  %89 = call i8* @setmode(i8* %88)
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @infile, align 4
  %94 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

95:                                               ; preds = %87
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @getmode(i8* %96, i32 0)
  %98 = and i32 %97, 438
  store i32 %98, i32* %4, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i64, i64* @sflag, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %159

103:                                              ; preds = %95
  store i8* null, i8** %7, align 8
  store %struct.passwd* null, %struct.passwd** %10, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 126
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 47)
  store i8* %110, i8** %7, align 8
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i8*, i8** %7, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i8*, i8** %7, align 8
  store i8 0, i8* %115, align 1
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = call %struct.passwd* @getpwnam(i8* %117)
  store %struct.passwd* %118, %struct.passwd** %10, align 8
  %119 = load i8*, i8** %7, align 8
  store i8 47, i8* %119, align 1
  br label %120

120:                                              ; preds = %114, %111
  %121 = load %struct.passwd*, %struct.passwd** %10, align 8
  %122 = icmp ne %struct.passwd* %121, null
  br i1 %122, label %123, label %158

123:                                              ; preds = %120
  %124 = load %struct.passwd*, %struct.passwd** %10, align 8
  %125 = getelementptr inbounds %struct.passwd, %struct.passwd* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @strlen(i8* %126)
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds i8, i8* %19, i64 %128
  %130 = load i8*, i8** %7, align 8
  %131 = icmp ugt i8* %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %123
  %133 = load i8*, i8** %7, align 8
  %134 = call i64 @strlen(i8* %133)
  store i64 %134, i64* %6, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %135, %136
  %138 = icmp ult i64 %17, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* @infile, align 4
  %141 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

142:                                              ; preds = %132
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds i8, i8* %19, i64 %143
  %145 = load i8*, i8** %7, align 8
  %146 = load i64, i64* %6, align 8
  %147 = call i8* @memmove(i8* %144, i8* %145, i64 %146)
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %142, %123
  %149 = load i8*, i8** %7, align 8
  %150 = load i64, i64* %5, align 8
  %151 = sub i64 0, %150
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load %struct.passwd*, %struct.passwd** %10, align 8
  %154 = getelementptr inbounds %struct.passwd, %struct.passwd* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i8* @memcpy(i8* %152, i8* %155, i64 %156)
  store i8* %157, i8** %8, align 8
  br label %158

158:                                              ; preds = %148, %120
  br label %168

159:                                              ; preds = %95
  %160 = load i8*, i8** %8, align 8
  %161 = call i8* @strrchr(i8* %160, i8 signext 47)
  store i8* %161, i8** %7, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  store i8* %166, i8** %8, align 8
  br label %167

167:                                              ; preds = %164, %159
  br label %168

168:                                              ; preds = %167, %158
  %169 = load i64, i64* @oflag, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = load i8*, i8** %8, align 8
  store i8* %172, i8** @outfile, align 8
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i64, i64* @pflag, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %173
  %177 = load i8*, i8** @outfile, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %176, %173
  %181 = load i32*, i32** @stdout, align 8
  store i32* %181, i32** @outfp, align 8
  br label %260

182:                                              ; preds = %176
  %183 = load i32, i32* @O_WRONLY, align 4
  %184 = load i32, i32* @O_CREAT, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @O_EXCL, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %2, align 4
  %188 = load i8*, i8** @outfile, align 8
  %189 = call i64 @lstat(i8* %188, %struct.stat* %11)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %236

191:                                              ; preds = %182
  %192 = load i64, i64* @iflag, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, i32* @EEXIST, align 4
  %196 = load i32, i32* @infile, align 4
  %197 = load i8*, i8** @outfile, align 8
  %198 = call i32 @warnc(i32 %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %196, i8* %197)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @S_IFMT, align 4
  %203 = and i32 %201, %202
  switch i32 %203, label %222 [
    i32 128, label %204
    i32 129, label %204
    i32 130, label %217
  ]

204:                                              ; preds = %199, %199
  %205 = load i8*, i8** @outfile, align 8
  %206 = call i32 @unlink(i8* %205)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i64, i64* @errno, align 8
  %210 = load i64, i64* @ENOENT, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %204
  br label %235

213:                                              ; preds = %208
  %214 = load i32, i32* @infile, align 4
  %215 = load i8*, i8** @outfile, align 8
  %216 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %214, i8* %215)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

217:                                              ; preds = %199
  %218 = load i32, i32* @EISDIR, align 4
  %219 = load i32, i32* @infile, align 4
  %220 = load i8*, i8** @outfile, align 8
  %221 = call i32 @warnc(i32 %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %219, i8* %220)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

222:                                              ; preds = %199
  %223 = load i64, i64* @oflag, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load i32, i32* @O_EXCL, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* %2, align 4
  %229 = and i32 %228, %227
  store i32 %229, i32* %2, align 4
  br label %235

230:                                              ; preds = %222
  %231 = load i32, i32* @EEXIST, align 4
  %232 = load i32, i32* @infile, align 4
  %233 = load i8*, i8** @outfile, align 8
  %234 = call i32 @warnc(i32 %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %232, i8* %233)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

235:                                              ; preds = %225, %212
  br label %245

236:                                              ; preds = %182
  %237 = load i64, i64* @errno, align 8
  %238 = load i64, i64* @ENOENT, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i32, i32* @infile, align 4
  %242 = load i8*, i8** @outfile, align 8
  %243 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %241, i8* %242)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

244:                                              ; preds = %236
  br label %245

245:                                              ; preds = %244, %235
  %246 = load i8*, i8** @outfile, align 8
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @open(i8* %246, i32 %247, i32 %248)
  store i32 %249, i32* %3, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %245
  %252 = load i32, i32* %3, align 4
  %253 = call i32* @fdopen(i32 %252, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %253, i32** @outfp, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %251, %245
  %256 = load i32, i32* @infile, align 4
  %257 = load i8*, i8** @outfile, align 8
  %258 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %256, i8* %257)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

259:                                              ; preds = %251
  br label %260

260:                                              ; preds = %259, %180
  %261 = load i32, i32* @base64, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = call i32 (...) @base64_decode()
  store i32 %264, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

265:                                              ; preds = %260
  %266 = call i32 (...) @uu_decode()
  store i32 %266, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %267

267:                                              ; preds = %265, %263, %255, %240, %230, %217, %213, %194, %139, %92, %25
  %268 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i32, i32* %1, align 4
  ret i32 %269
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fgets(i8*, i32, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @setmode(i8*) #2

declare dso_local i32 @warnx(i8*, i32) #2

declare dso_local i32 @getmode(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i8* @memmove(i8*, i8*, i64) #2

declare dso_local i8* @memcpy(i8*, i8*, i64) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @warnc(i32, i8*, i32, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @warn(i8*, i32, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @base64_decode(...) #2

declare dso_local i32 @uu_decode(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
