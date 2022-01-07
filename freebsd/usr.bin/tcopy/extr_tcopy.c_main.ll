; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tcopy/extr_tcopy.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tcopy/extr_tcopy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@msg = common dso_local global i32 0, align 4
@guesslen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cs:vx\00", align 1
@optarg = common dso_local global i32 0, align 4
@maxblk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"illegal block size\00", align 1
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@_PATH_DEFTAPE = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@NOCOUNT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"read error, file %d, record %ju\00", align 1
@filen = common dso_local global i32 0, align 4
@record = common dso_local global i64 0, align 8
@lastrec = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"%ju records\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"records %ju to %ju\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"record %ju\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"file %d: block size %d: \00", align 1
@MTWEOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"write error, file %d, record %ju\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"write (%d) != read (%d)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"copy aborted\00", align 1
@size = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"eot\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"file %d: eof after %ju records: %ju bytes\0A\00", align 1
@tsize = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"total length: %ju bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @stdout, align 4
  store i32 %17, i32* @msg, align 4
  store i32 1, i32* @guesslen, align 4
  store i32 -1, i32* %10, align 4
  br label %18

18:                                               ; preds = %43, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %13, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  %25 = trunc i32 %24 to i8
  %26 = sext i8 %25 to i32
  switch i32 %26, label %41 [
    i32 99, label %27
    i32 115, label %28
    i32 118, label %37
    i32 120, label %38
    i32 63, label %40
  ]

27:                                               ; preds = %23
  store i32 3, i32* %11, align 4
  br label %43

28:                                               ; preds = %23
  %29 = load i32, i32* @optarg, align 4
  %30 = call i32 @atoi(i32 %29)
  store i32 %30, i32* @maxblk, align 4
  %31 = load i32, i32* @maxblk, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 (...) @usage()
  br label %36

36:                                               ; preds = %33, %28
  store i32 0, i32* @guesslen, align 4
  br label %43

37:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %43

38:                                               ; preds = %23
  %39 = load i32, i32* @stderr, align 4
  store i32 %39, i32* @msg, align 4
  br label %43

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %23, %40
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %38, %37, %36, %27
  br label %18

44:                                               ; preds = %18
  %45 = load i64, i64* @optind, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @optind, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  store i8** %52, i8*** %5, align 8
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %105 [
    i32 0, label %54
    i32 1, label %61
    i32 2, label %70
  ]

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** @_PATH_DEFTAPE, align 8
  store i8* %60, i8** %16, align 8
  br label %107

61:                                               ; preds = %44
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %16, align 8
  br label %107

70:                                               ; preds = %44
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 2, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %16, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @O_RDONLY, align 4
  br label %94

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @O_WRONLY, align 4
  br label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @O_RDWR, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %83
  %95 = phi i32 [ %84, %83 ], [ %93, %92 ]
  %96 = load i32, i32* @DEFFILEMODE, align 4
  %97 = call i32 @open(i8* %80, i32 %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i32, i8*, ...) @err(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %94
  br label %107

105:                                              ; preds = %44
  %106 = call i32 (...) @usage()
  br label %107

107:                                              ; preds = %105, %104, %66, %59
  %108 = load i8*, i8** %16, align 8
  %109 = load i32, i32* @O_RDONLY, align 4
  %110 = call i32 @open(i8* %108, i32 %109, i32 0)
  store i32 %110, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* @maxblk, align 4
  %117 = call i8* @getspace(i32 %116)
  store i8* %117, i8** %15, align 8
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i8*, i8** %15, align 8
  %124 = call i32 @verify(i32 %121, i32 %122, i8* %123)
  %125 = call i32 @exit(i32 0) #3
  unreachable

126:                                              ; preds = %115
  %127 = load i32, i32* @SIGINT, align 4
  %128 = load i32, i32* @SIG_IGN, align 4
  %129 = call i32 @signal(i32 %127, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* @SIG_IGN, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @SIGINT, align 4
  %134 = load i32, i32* @intr, align 4
  %135 = call i32 @signal(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %126
  store i32 0, i32* %14, align 4
  %137 = load i32, i32* @NOCOUNT, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %297, %136
  %139 = load i32, i32* %9, align 4
  %140 = load i8*, i8** %15, align 8
  %141 = load i32, i32* @maxblk, align 4
  %142 = call i32 @read(i32 %139, i8* %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %169

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %163, %144
  %146 = load i64, i64* @errno, align 8
  %147 = load i64, i64* @EINVAL, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i32, i32* @maxblk, align 4
  %151 = sub nsw i32 %150, 1024
  store i32 %151, i32* @maxblk, align 4
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi i1 [ false, %145 ], [ %152, %149 ]
  br i1 %154, label %155, label %164

155:                                              ; preds = %153
  %156 = load i32, i32* %9, align 4
  %157 = load i8*, i8** %15, align 8
  %158 = load i32, i32* @maxblk, align 4
  %159 = call i32 @read(i32 %156, i8* %157, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %224

163:                                              ; preds = %155
  br label %145

164:                                              ; preds = %153
  %165 = load i32, i32* @filen, align 4
  %166 = load i64, i64* @record, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 %167)
  br label %223

169:                                              ; preds = %138
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %222

173:                                              ; preds = %169
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %210

176:                                              ; preds = %173
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @NOCOUNT, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %176
  %181 = load i64, i64* @lastrec, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i32, i32* @msg, align 4
  %188 = load i64, i64* @record, align 8
  %189 = trunc i64 %188 to i32
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  br label %209

191:                                              ; preds = %183, %180
  %192 = load i64, i64* @record, align 8
  %193 = load i64, i64* @lastrec, align 8
  %194 = sub nsw i64 %192, %193
  %195 = icmp sgt i64 %194, 1
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load i32, i32* @msg, align 4
  %198 = load i64, i64* @lastrec, align 8
  %199 = trunc i64 %198 to i32
  %200 = load i64, i64* @record, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %199, i32 %201)
  br label %208

203:                                              ; preds = %191
  %204 = load i32, i32* @msg, align 4
  %205 = load i64, i64* @lastrec, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %203, %196
  br label %209

209:                                              ; preds = %208, %186
  br label %210

210:                                              ; preds = %209, %176, %173
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i32, i32* @msg, align 4
  %215 = load i32, i32* @filen, align 4
  %216 = load i32, i32* %7, align 4
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %213, %210
  %219 = load i32, i32* @stdout, align 4
  %220 = call i32 @fflush(i32 %219)
  %221 = load i64, i64* @record, align 8
  store i64 %221, i64* @lastrec, align 8
  br label %222

222:                                              ; preds = %218, %169
  br label %223

223:                                              ; preds = %222, %164
  br label %224

224:                                              ; preds = %223, %162
  store i32 0, i32* @guesslen, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %274

227:                                              ; preds = %224
  %228 = load i32, i32* %11, align 4
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %11, align 4
  %232 = icmp eq i32 %231, 3
  br i1 %232, label %233, label %267

233:                                              ; preds = %230, %227
  %234 = load i32, i32* %14, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @MTWEOF, align 4
  %239 = call i32 @writeop(i32 %237, i32 %238)
  store i32 0, i32* %14, align 4
  br label %240

240:                                              ; preds = %236, %233
  %241 = load i32, i32* %10, align 4
  %242 = load i8*, i8** %15, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @write(i32 %241, i8* %242, i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %266

248:                                              ; preds = %240
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* @filen, align 4
  %253 = load i64, i64* @record, align 8
  %254 = trunc i64 %253 to i32
  %255 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %252, i32 %254)
  br label %264

256:                                              ; preds = %248
  %257 = load i32, i32* @filen, align 4
  %258 = load i64, i64* @record, align 8
  %259 = trunc i64 %258 to i32
  %260 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %257, i32 %259)
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %7, align 4
  %263 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %256, %251
  %265 = call i32 @errx(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %240
  br label %267

267:                                              ; preds = %266, %230
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* @size, align 8
  %271 = add nsw i64 %270, %269
  store i64 %271, i64* @size, align 8
  %272 = load i64, i64* @record, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* @record, align 8
  br label %297

274:                                              ; preds = %224
  %275 = load i32, i32* %6, align 4
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %274
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @NOCOUNT, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i32, i32* @msg, align 4
  %283 = call i32 (i32, i8*, ...) @fprintf(i32 %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %299

284:                                              ; preds = %277, %274
  %285 = load i32, i32* @msg, align 4
  %286 = load i32, i32* @filen, align 4
  %287 = load i64, i64* @record, align 8
  %288 = trunc i64 %287 to i32
  %289 = load i64, i64* @size, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 (i32, i8*, ...) @fprintf(i32 %285, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i32 %286, i32 %288, i32 %290)
  store i32 1, i32* %14, align 4
  %292 = load i32, i32* @filen, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* @filen, align 4
  %294 = load i64, i64* @size, align 8
  %295 = load i64, i64* @tsize, align 8
  %296 = add nsw i64 %295, %294
  store i64 %296, i64* @tsize, align 8
  store i64 0, i64* @lastrec, align 8
  store i64 0, i64* @record, align 8
  store i64 0, i64* @size, align 8
  store i32 0, i32* %6, align 4
  br label %297

297:                                              ; preds = %284, %267
  %298 = load i32, i32* %7, align 4
  store i32 %298, i32* %6, align 4
  br label %138

299:                                              ; preds = %281
  %300 = load i32, i32* @msg, align 4
  %301 = load i64, i64* @tsize, align 8
  %302 = trunc i64 %301 to i32
  %303 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* @SIGINT, align 4
  %305 = load i32, i32* %12, align 4
  %306 = call i32 @signal(i32 %304, i32 %305)
  %307 = load i32, i32* %11, align 4
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %312, label %309

309:                                              ; preds = %299
  %310 = load i32, i32* %11, align 4
  %311 = icmp eq i32 %310, 3
  br i1 %311, label %312, label %331

312:                                              ; preds = %309, %299
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* @MTWEOF, align 4
  %315 = call i32 @writeop(i32 %313, i32 %314)
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* @MTWEOF, align 4
  %318 = call i32 @writeop(i32 %316, i32 %317)
  %319 = load i32, i32* %11, align 4
  %320 = icmp eq i32 %319, 3
  br i1 %320, label %321, label %330

321:                                              ; preds = %312
  %322 = load i32, i32* %10, align 4
  %323 = call i32 @rewind_tape(i32 %322)
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @rewind_tape(i32 %324)
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %10, align 4
  %328 = load i8*, i8** %15, align 8
  %329 = call i32 @verify(i32 %326, i32 %327, i8* %328)
  br label %330

330:                                              ; preds = %321, %312
  br label %331

331:                                              ; preds = %330, %309
  %332 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @getspace(i32) #1

declare dso_local i32 @verify(i32, i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @writeop(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @rewind_tape(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
