; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i64, i32, i64, i64, %struct.timespec, %struct.timespec }
%struct.timespec = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@DIRECTORY = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@dolink = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@safecopy = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@docompare = common dso_local global i64 0, align 8
@dostrip = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"install: %s -> %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"stripping %s\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@dobackup = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@suffix = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: backup filename too long\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"unlink: %s\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"link: %s to %s\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"rename: %s to %s\00", align 1
@dopreserve = common dso_local global i64 0, align 8
@dounpriv = common dso_local global i64 0, align 8
@gid = common dso_local global i64 0, align 8
@uid = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"%s: chown/chgrp\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"%s: chmod\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NOCHANGEBITS = common dso_local global i32 0, align 4
@SETFLAGS = common dso_local global i32 0, align 4
@UF_NODUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x %struct.timespec], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %21, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  %35 = load i32, i32* @MAXPATHLEN, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %25, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %20, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DIRECTORY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @_PATH_DEVNULL, align 4
  %45 = call i64 @strcmp(i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %99

47:                                               ; preds = %42, %4
  %48 = load i64, i64* @dolink, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @stat(i8* %51, %struct.stat* %9)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @EX_OSERR, align 4
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, i8*, ...) @err(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @S_ISREG(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EFTYPE, align 4
  store i32 %64, i32* @errno, align 4
  %65 = load i32, i32* @EX_OSERR, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 (i32, i8*, i8*, ...) @err(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @DIRECTORY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %69
  %75 = trunc i64 %33 to i32
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 47
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %87 = load i8*, i8** %5, align 8
  %88 = call i8* @strrchr(i8* %87, i8 signext 47)
  store i8* %88, i8** %23, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i8*, i8** %23, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %23, align 8
  br label %95

93:                                               ; preds = %74
  %94 = load i8*, i8** %5, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i8* [ %92, %90 ], [ %94, %93 ]
  %97 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %34, i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %86, i8* %96)
  store i8* %34, i8** %6, align 8
  br label %98

98:                                               ; preds = %95, %69
  store i32 0, i32* %13, align 4
  br label %100

99:                                               ; preds = %42
  store i32 1, i32* %13, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @lstat(i8* %101, %struct.stat* %11)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %17, align 4
  %105 = load i64, i64* @dolink, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %140

107:                                              ; preds = %100
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load i64, i64* @safecopy, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @S_IFDIR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @rmdir(i8* %120)
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* @EX_OSERR, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 (i32, i8*, i8*, ...) @err(i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %119, %113
  %128 = load i8*, i8** %6, align 8
  %129 = call i64 @unlink(i8* %128)
  br label %130

130:                                              ; preds = %127, %110, %107
  %131 = load i8*, i8** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %137

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %135
  %138 = phi %struct.stat* [ %11, %135 ], [ null, %136 ]
  %139 = call i32 @makelink(i8* %131, i8* %132, %struct.stat* %138)
  store i32 1, i32* %27, align 4
  br label %620

140:                                              ; preds = %100
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @S_ISREG(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @S_ISLNK(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @EFTYPE, align 4
  store i32 %154, i32* @errno, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %155)
  store i32 1, i32* %27, align 4
  br label %620

157:                                              ; preds = %148, %143, %140
  %158 = load i64, i64* @safecopy, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %160, %157
  %164 = phi i1 [ false, %157 ], [ %162, %160 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %163
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* @O_RDONLY, align 4
  %171 = call i32 @open(i8* %169, i32 %170, i32 0)
  store i32 %171, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168
  %174 = load i32, i32* @EX_OSERR, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 (i32, i8*, i8*, ...) @err(i32 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %173, %168, %163
  %178 = load i64, i64* @docompare, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %228

180:                                              ; preds = %177
  %181 = load i64, i64* @dostrip, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %228, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %228

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @S_ISREG(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %228

191:                                              ; preds = %186
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* @O_RDONLY, align 4
  %194 = call i32 @open(i8* %192, i32 %193, i32 0)
  store i32 %194, i32* %20, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i32, i32* @EX_OSERR, align 4
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 (i32, i8*, i8*, ...) @err(i32 %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %196, %191
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  %207 = zext i1 %206 to i32
  store i32 %207, i32* %14, align 4
  br label %221

208:                                              ; preds = %200
  %209 = load i32, i32* %15, align 4
  %210 = load i8*, i8** %5, align 8
  %211 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %20, align 4
  %214 = load i8*, i8** %6, align 8
  %215 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @compare(i32 %209, i8* %210, i64 %212, i32 %213, i8* %214, i64 %216, i8** %26)
  %218 = icmp ne i64 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %208, %203
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %20, align 4
  %226 = call i32 @close(i32 %225)
  br label %227

227:                                              ; preds = %224, %221
  br label %228

228:                                              ; preds = %227, %186, %183, %180, %177
  %229 = load i32, i32* %14, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %280, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %231
  %235 = load i8*, i8** %6, align 8
  %236 = trunc i64 %36 to i32
  %237 = call i32 @create_tempfile(i8* %235, i8* %37, i32 %236)
  store i32 %237, i32* %20, align 4
  %238 = load i32, i32* %20, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* @EX_OSERR, align 4
  %242 = call i32 (i32, i8*, i8*, ...) @err(i32 %241, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %243

243:                                              ; preds = %240, %234
  br label %261

244:                                              ; preds = %231
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %17, align 4
  %247 = call i32 @create_newfile(i8* %245, i32 %246, %struct.stat* %11)
  store i32 %247, i32* %20, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load i32, i32* @EX_OSERR, align 4
  %251 = load i8*, i8** %6, align 8
  %252 = call i32 (i32, i8*, i8*, ...) @err(i32 %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %249, %244
  %254 = load i64, i64* @verbose, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i8*, i8** %5, align 8
  %258 = load i8*, i8** %6, align 8
  %259 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %257, i8* %258)
  br label %260

260:                                              ; preds = %256, %253
  br label %261

261:                                              ; preds = %260, %243
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %278, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %15, align 4
  %266 = load i8*, i8** %5, align 8
  %267 = load i32, i32* %20, align 4
  %268 = load i32, i32* %18, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  br label %273

271:                                              ; preds = %264
  %272 = load i8*, i8** %6, align 8
  br label %273

273:                                              ; preds = %271, %270
  %274 = phi i8* [ %37, %270 ], [ %272, %271 ]
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = call i8* @copy(i32 %265, i8* %266, i32 %267, i8* %274, i64 %276)
  store i8* %277, i8** %26, align 8
  br label %279

278:                                              ; preds = %261
  store i8* null, i8** %26, align 8
  br label %279

279:                                              ; preds = %278, %273
  br label %280

280:                                              ; preds = %279, %228
  %281 = load i64, i64* @dostrip, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %310

283:                                              ; preds = %280
  %284 = load i32, i32* %18, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %289

287:                                              ; preds = %283
  %288 = load i8*, i8** %6, align 8
  br label %289

289:                                              ; preds = %287, %286
  %290 = phi i8* [ %37, %286 ], [ %288, %287 ]
  %291 = call i32 @strip(i8* %290)
  %292 = load i32, i32* %20, align 4
  %293 = call i32 @close(i32 %292)
  %294 = load i32, i32* %18, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %289
  br label %299

297:                                              ; preds = %289
  %298 = load i8*, i8** %6, align 8
  br label %299

299:                                              ; preds = %297, %296
  %300 = phi i8* [ %37, %296 ], [ %298, %297 ]
  %301 = load i32, i32* @O_RDONLY, align 4
  %302 = call i32 @open(i8* %300, i32 %301, i32 0)
  store i32 %302, i32* %20, align 4
  %303 = load i32, i32* %20, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %299
  %306 = load i32, i32* @EX_OSERR, align 4
  %307 = load i8*, i8** %6, align 8
  %308 = call i32 (i32, i8*, i8*, ...) @err(i32 %306, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %307)
  br label %309

309:                                              ; preds = %305, %299
  br label %310

310:                                              ; preds = %309, %280
  %311 = load i64, i64* @docompare, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %376

313:                                              ; preds = %310
  %314 = load i64, i64* @dostrip, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %376

316:                                              ; preds = %313
  %317 = load i32, i32* %17, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %376

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i64 @S_ISREG(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %376

324:                                              ; preds = %319
  %325 = load i32, i32* %20, align 4
  store i32 %325, i32* %19, align 4
  %326 = load i8*, i8** %6, align 8
  %327 = load i32, i32* @O_RDONLY, align 4
  %328 = call i32 @open(i8* %326, i32 %327, i32 0)
  store i32 %328, i32* %20, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %324
  %331 = load i32, i32* @EX_OSERR, align 4
  %332 = load i8*, i8** %6, align 8
  %333 = call i32 (i32, i8*, i8*, ...) @err(i32 %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %332)
  br label %334

334:                                              ; preds = %330, %324
  %335 = load i32, i32* %19, align 4
  %336 = call i32 @fstat(i32 %335, %struct.stat* %10)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %334
  %339 = load i32, i32* @errno, align 4
  store i32 %339, i32* %16, align 4
  %340 = call i64 @unlink(i8* %37)
  %341 = load i32, i32* %16, align 4
  store i32 %341, i32* @errno, align 4
  %342 = load i32, i32* @EX_OSERR, align 4
  %343 = call i32 (i32, i8*, i8*, ...) @err(i32 %342, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %344

344:                                              ; preds = %338, %334
  %345 = load i32, i32* %19, align 4
  %346 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* %20, align 4
  %349 = load i8*, i8** %6, align 8
  %350 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = call i64 @compare(i32 %345, i8* %37, i64 %347, i32 %348, i8* %349, i64 %351, i8** %26)
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %375

354:                                              ; preds = %344
  %355 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 1
  br i1 %357, label %358, label %370

358:                                              ; preds = %354
  %359 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %360 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 7
  %361 = bitcast %struct.timespec* %359 to i8*
  %362 = bitcast %struct.timespec* %360 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %361, i8* align 4 %362, i64 4, i1 false)
  %363 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 1
  %364 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 6
  %365 = bitcast %struct.timespec* %363 to i8*
  %366 = bitcast %struct.timespec* %364 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %365, i8* align 8 %366, i64 4, i1 false)
  %367 = load i32, i32* @AT_FDCWD, align 4
  %368 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %369 = call i32 @utimensat(i32 %367, i8* %37, %struct.timespec* %368, i32 0)
  br label %372

370:                                              ; preds = %354
  store i32 1, i32* %14, align 4
  %371 = call i64 @unlink(i8* %37)
  br label %372

372:                                              ; preds = %370, %358
  %373 = load i32, i32* %19, align 4
  %374 = call i32 @close(i32 %373)
  br label %375

375:                                              ; preds = %372, %344
  br label %382

376:                                              ; preds = %319, %316, %313, %310
  %377 = load i64, i64* @dostrip, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %376
  %380 = call i8* @digest_file(i8* %37)
  store i8* %380, i8** %26, align 8
  br label %381

381:                                              ; preds = %379, %376
  br label %382

382:                                              ; preds = %381, %375
  %383 = load i32, i32* %18, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %468

385:                                              ; preds = %382
  %386 = load i32, i32* %14, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %468, label %388

388:                                              ; preds = %385
  %389 = load i64, i64* @dobackup, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %438

391:                                              ; preds = %388
  %392 = load i32, i32* @MAXPATHLEN, align 4
  %393 = load i8*, i8** %6, align 8
  %394 = load i8*, i8** @suffix, align 8
  %395 = call i64 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %31, i32 %392, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %393, i8* %394)
  %396 = load i8*, i8** %6, align 8
  %397 = call i64 @strlen(i8* %396)
  %398 = load i8*, i8** @suffix, align 8
  %399 = call i64 @strlen(i8* %398)
  %400 = add i64 %397, %399
  %401 = icmp ne i64 %395, %400
  br i1 %401, label %402, label %407

402:                                              ; preds = %391
  %403 = call i64 @unlink(i8* %37)
  %404 = load i32, i32* @EX_OSERR, align 4
  %405 = load i8*, i8** %6, align 8
  %406 = call i32 @errx(i32 %404, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %405)
  br label %407

407:                                              ; preds = %402, %391
  %408 = load i64, i64* @verbose, align 8
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %407
  %411 = load i8*, i8** %6, align 8
  %412 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %411, i8* %31)
  br label %413

413:                                              ; preds = %410, %407
  %414 = call i64 @unlink(i8* %31)
  %415 = icmp slt i64 %414, 0
  br i1 %415, label %416, label %426

416:                                              ; preds = %413
  %417 = load i32, i32* @errno, align 4
  %418 = load i32, i32* @ENOENT, align 4
  %419 = icmp ne i32 %417, %418
  br i1 %419, label %420, label %426

420:                                              ; preds = %416
  %421 = load i32, i32* @errno, align 4
  store i32 %421, i32* %16, align 4
  %422 = call i64 @unlink(i8* %37)
  %423 = load i32, i32* %16, align 4
  store i32 %423, i32* @errno, align 4
  %424 = load i32, i32* @EX_OSERR, align 4
  %425 = call i32 (i32, i8*, i8*, ...) @err(i32 %424, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %31)
  br label %426

426:                                              ; preds = %420, %416, %413
  %427 = load i8*, i8** %6, align 8
  %428 = call i64 @link(i8* %427, i8* %31)
  %429 = icmp slt i64 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %426
  %431 = load i32, i32* @errno, align 4
  store i32 %431, i32* %16, align 4
  %432 = call i64 @unlink(i8* %37)
  %433 = load i32, i32* %16, align 4
  store i32 %433, i32* @errno, align 4
  %434 = load i32, i32* @EX_OSERR, align 4
  %435 = load i8*, i8** %6, align 8
  %436 = call i32 (i32, i8*, i8*, ...) @err(i32 %434, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %435, i8* %31)
  br label %437

437:                                              ; preds = %430, %426
  br label %438

438:                                              ; preds = %437, %388
  %439 = load i64, i64* @verbose, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %438
  %442 = load i8*, i8** %5, align 8
  %443 = load i8*, i8** %6, align 8
  %444 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %442, i8* %443)
  br label %445

445:                                              ; preds = %441, %438
  %446 = load i8*, i8** %6, align 8
  %447 = call i64 @rename(i8* %37, i8* %446)
  %448 = icmp slt i64 %447, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %445
  %450 = load i32, i32* @errno, align 4
  store i32 %450, i32* %16, align 4
  %451 = call i64 @unlink(i8* %37)
  %452 = load i32, i32* %16, align 4
  store i32 %452, i32* @errno, align 4
  %453 = load i32, i32* @EX_OSERR, align 4
  %454 = load i8*, i8** %6, align 8
  %455 = call i32 (i32, i8*, i8*, ...) @err(i32 %453, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %37, i8* %454)
  br label %456

456:                                              ; preds = %449, %445
  %457 = load i32, i32* %20, align 4
  %458 = call i32 @close(i32 %457)
  %459 = load i8*, i8** %6, align 8
  %460 = load i32, i32* @O_RDONLY, align 4
  %461 = call i32 @open(i8* %459, i32 %460, i32 0)
  store i32 %461, i32* %20, align 4
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %463, label %467

463:                                              ; preds = %456
  %464 = load i32, i32* @EX_OSERR, align 4
  %465 = load i8*, i8** %6, align 8
  %466 = call i32 (i32, i8*, i8*, ...) @err(i32 %464, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %465)
  br label %467

467:                                              ; preds = %463, %456
  br label %468

468:                                              ; preds = %467, %385, %382
  %469 = load i64, i64* @dopreserve, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %490

471:                                              ; preds = %468
  %472 = load i32, i32* %14, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %490, label %474

474:                                              ; preds = %471
  %475 = load i32, i32* %13, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %490, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %479 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 7
  %480 = bitcast %struct.timespec* %478 to i8*
  %481 = bitcast %struct.timespec* %479 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %480, i8* align 4 %481, i64 4, i1 false)
  %482 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 1
  %483 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 6
  %484 = bitcast %struct.timespec* %482 to i8*
  %485 = bitcast %struct.timespec* %483 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %484, i8* align 8 %485, i64 4, i1 false)
  %486 = load i32, i32* @AT_FDCWD, align 4
  %487 = load i8*, i8** %6, align 8
  %488 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %489 = call i32 @utimensat(i32 %486, i8* %487, %struct.timespec* %488, i32 0)
  br label %490

490:                                              ; preds = %477, %474, %471, %468
  %491 = load i32, i32* %20, align 4
  %492 = call i32 @fstat(i32 %491, %struct.stat* %11)
  %493 = icmp eq i32 %492, -1
  br i1 %493, label %494, label %502

494:                                              ; preds = %490
  %495 = load i32, i32* @errno, align 4
  store i32 %495, i32* %16, align 4
  %496 = load i8*, i8** %6, align 8
  %497 = call i64 @unlink(i8* %496)
  %498 = load i32, i32* %16, align 4
  store i32 %498, i32* @errno, align 4
  %499 = load i32, i32* @EX_OSERR, align 4
  %500 = load i8*, i8** %6, align 8
  %501 = call i32 (i32, i8*, i8*, ...) @err(i32 %499, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %500)
  br label %502

502:                                              ; preds = %494, %490
  %503 = load i64, i64* @dounpriv, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %529, label %505

505:                                              ; preds = %502
  %506 = load i64, i64* @gid, align 8
  %507 = icmp ne i64 %506, -1
  br i1 %507, label %508, label %513

508:                                              ; preds = %505
  %509 = load i64, i64* @gid, align 8
  %510 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 4
  %511 = load i64, i64* %510, align 8
  %512 = icmp ne i64 %509, %511
  br i1 %512, label %528, label %513

513:                                              ; preds = %508, %505
  %514 = load i64, i64* @uid, align 8
  %515 = icmp ne i64 %514, -1
  br i1 %515, label %516, label %521

516:                                              ; preds = %513
  %517 = load i64, i64* @uid, align 8
  %518 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 5
  %519 = load i64, i64* %518, align 8
  %520 = icmp ne i64 %517, %519
  br i1 %520, label %528, label %521

521:                                              ; preds = %516, %513
  %522 = load i32, i32* @mode, align 4
  %523 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @ALLPERMS, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %522, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %521, %516, %508
  br label %529

529:                                              ; preds = %528, %521, %502
  %530 = load i64, i64* @dounpriv, align 8
  %531 = icmp ne i64 %530, 0
  %532 = xor i1 %531, true
  %533 = zext i1 %532 to i32
  %534 = load i64, i64* @gid, align 8
  %535 = icmp ne i64 %534, -1
  br i1 %535, label %536, label %541

536:                                              ; preds = %529
  %537 = load i64, i64* @gid, align 8
  %538 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 4
  %539 = load i64, i64* %538, align 8
  %540 = icmp ne i64 %537, %539
  br label %541

541:                                              ; preds = %536, %529
  %542 = phi i1 [ false, %529 ], [ %540, %536 ]
  %543 = zext i1 %542 to i32
  %544 = and i32 %533, %543
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %554, label %546

546:                                              ; preds = %541
  %547 = load i64, i64* @uid, align 8
  %548 = icmp ne i64 %547, -1
  br i1 %548, label %549, label %569

549:                                              ; preds = %546
  %550 = load i64, i64* @uid, align 8
  %551 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 5
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %550, %552
  br i1 %553, label %554, label %569

554:                                              ; preds = %549, %541
  %555 = load i32, i32* %20, align 4
  %556 = load i64, i64* @uid, align 8
  %557 = load i64, i64* @gid, align 8
  %558 = call i32 @fchown(i32 %555, i64 %556, i64 %557)
  %559 = icmp eq i32 %558, -1
  br i1 %559, label %560, label %568

560:                                              ; preds = %554
  %561 = load i32, i32* @errno, align 4
  store i32 %561, i32* %16, align 4
  %562 = load i8*, i8** %6, align 8
  %563 = call i64 @unlink(i8* %562)
  %564 = load i32, i32* %16, align 4
  store i32 %564, i32* @errno, align 4
  %565 = load i32, i32* @EX_OSERR, align 4
  %566 = load i8*, i8** %6, align 8
  %567 = call i32 (i32, i8*, i8*, ...) @err(i32 %565, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* %566)
  br label %568

568:                                              ; preds = %560, %554
  br label %569

569:                                              ; preds = %568, %549, %546
  %570 = load i32, i32* @mode, align 4
  %571 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* @ALLPERMS, align 4
  %574 = and i32 %572, %573
  %575 = icmp ne i32 %570, %574
  br i1 %575, label %576, label %603

576:                                              ; preds = %569
  %577 = load i32, i32* %20, align 4
  %578 = load i64, i64* @dounpriv, align 8
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %588

580:                                              ; preds = %576
  %581 = load i32, i32* @mode, align 4
  %582 = load i32, i32* @S_IRWXU, align 4
  %583 = load i32, i32* @S_IRWXG, align 4
  %584 = or i32 %582, %583
  %585 = load i32, i32* @S_IRWXO, align 4
  %586 = or i32 %584, %585
  %587 = and i32 %581, %586
  br label %590

588:                                              ; preds = %576
  %589 = load i32, i32* @mode, align 4
  br label %590

590:                                              ; preds = %588, %580
  %591 = phi i32 [ %587, %580 ], [ %589, %588 ]
  %592 = call i64 @fchmod(i32 %577, i32 %591)
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %602

594:                                              ; preds = %590
  %595 = load i32, i32* @errno, align 4
  store i32 %595, i32* %16, align 4
  %596 = load i8*, i8** %6, align 8
  %597 = call i64 @unlink(i8* %596)
  %598 = load i32, i32* %16, align 4
  store i32 %598, i32* @errno, align 4
  %599 = load i32, i32* @EX_OSERR, align 4
  %600 = load i8*, i8** %6, align 8
  %601 = call i32 (i32, i8*, i8*, ...) @err(i32 %599, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %600)
  br label %602

602:                                              ; preds = %594, %590
  br label %603

603:                                              ; preds = %602, %569
  %604 = load i32, i32* %20, align 4
  %605 = call i32 @close(i32 %604)
  %606 = load i32, i32* %13, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %611, label %608

608:                                              ; preds = %603
  %609 = load i32, i32* %15, align 4
  %610 = call i32 @close(i32 %609)
  br label %611

611:                                              ; preds = %608, %603
  %612 = load i8*, i8** %6, align 8
  %613 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %614 = load i8*, i8** %26, align 8
  %615 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 2
  %616 = load i64, i64* %615, align 8
  %617 = call i32 @metadata_log(i8* %612, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.timespec* %613, i32* null, i8* %614, i64 %616)
  %618 = load i8*, i8** %26, align 8
  %619 = call i32 @free(i8* %618)
  store i32 0, i32* %27, align 4
  br label %620

620:                                              ; preds = %611, %153, %137
  %621 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %621)
  %622 = load i32, i32* %27, align 4
  switch i32 %622, label %624 [
    i32 0, label %623
    i32 1, label %623
  ]

623:                                              ; preds = %620, %620
  ret void

624:                                              ; preds = %620
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @err(i32, i8*, i8*, ...) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @rmdir(i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @makelink(i8*, i8*, %struct.stat*) #2

declare dso_local i32 @S_ISLNK(i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i64 @compare(i32, i8*, i64, i32, i8*, i64, i8**) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @create_tempfile(i8*, i8*, i32) #2

declare dso_local i32 @create_newfile(i8*, i32, %struct.stat*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i8* @copy(i32, i8*, i32, i8*, i64) #2

declare dso_local i32 @strip(i8*) #2

declare dso_local i32 @fstat(i32, %struct.stat*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @utimensat(i32, i8*, %struct.timespec*, i32) #2

declare dso_local i8* @digest_file(i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i64 @link(i8*, i8*) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @fchown(i32, i64, i64) #2

declare dso_local i64 @fchmod(i32, i32) #2

declare dso_local i32 @metadata_log(i8*, i8*, %struct.timespec*, i32*, i8*, i64) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
