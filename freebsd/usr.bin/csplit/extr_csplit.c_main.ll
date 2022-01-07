; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/csplit/extr_csplit.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i64 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sflag = common dso_local global i32 0, align 4
@kflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@prefix = common dso_local global i8* null, align 8
@sufflen = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"ksf:n:\00", align 1
@optarg = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: bad suffix length\00", align 1
@PATH_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"name too long\00", align 1
@optind = common dso_local global i64 0, align 8
@infn = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@infile = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@doclean = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@handlesig = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@lineno = common dso_local global i64 0, align 8
@nfiles = common dso_local global i32 0, align 4
@truncofs = common dso_local global i64 0, align 8
@overfile = common dso_local global i32* null, align 8
@maxfiles = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"%ld: suffix too long (limit %ld)\00", align 1
@reps = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"%s: bad repetition count\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%s: unrecognised pattern\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"%jd\0A\00", align 1
@currfile = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @LC_ALL, align 4
  %14 = call i32 @setlocale(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @sflag, align 4
  store i32 0, i32* @kflag, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** @prefix, align 8
  store i64 2, i64* @sufflen, align 8
  br label %15

15:                                               ; preds = %46, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %44 [
    i32 102, label %22
    i32 107, label %24
    i32 110, label %25
    i32 115, label %43
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @optarg, align 8
  store i8* %23, i8** @prefix, align 8
  br label %46

24:                                               ; preds = %20
  store i32 1, i32* @kflag, align 4
  br label %46

25:                                               ; preds = %20
  store i64 0, i64* @errno, align 8
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @strtol(i8* %26, i8** %10, i32 10)
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* @sufflen, align 8
  %29 = load i64, i64* @sufflen, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @errno, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %31, %25
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %46

43:                                               ; preds = %20
  store i32 1, i32* @sflag, align 4
  br label %46

44:                                               ; preds = %20
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %43, %42, %24, %22
  br label %15

47:                                               ; preds = %15
  %48 = load i64, i64* @sufflen, align 8
  %49 = load i8*, i8** @prefix, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = add nsw i64 %48, %50
  %52 = load i64, i64* @PATH_MAX, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i64, i64* @optind, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i64, i64* @optind, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 %62
  store i8** %64, i8*** %5, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i32 1
  store i8** %66, i8*** %5, align 8
  %67 = load i8*, i8** %65, align 8
  store i8* %67, i8** @infn, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %69, %56
  %72 = load i8*, i8** @infn, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32*, i32** @stdin, align 8
  store i32* %76, i32** @infile, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** @infn, align 8
  br label %85

77:                                               ; preds = %71
  %78 = load i8*, i8** @infn, align 8
  %79 = call i32* @fopen(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %79, i32** @infile, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** @infn, align 8
  %83 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %75
  %86 = load i32, i32* @kflag, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %111, label %88

88:                                               ; preds = %85
  store i32 1, i32* @doclean, align 4
  %89 = load i32, i32* @cleanup, align 4
  %90 = call i32 @atexit(i32 %89)
  %91 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @handlesig, align 4
  %93 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %95 = call i32 @sigemptyset(i32* %94)
  %96 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %97 = load i32, i32* @SIGHUP, align 4
  %98 = call i32 @sigaddset(i32* %96, i32 %97)
  %99 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %100 = load i32, i32* @SIGINT, align 4
  %101 = call i32 @sigaddset(i32* %99, i32 %100)
  %102 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  %103 = load i32, i32* @SIGTERM, align 4
  %104 = call i32 @sigaddset(i32* %102, i32 %103)
  %105 = load i32, i32* @SIGHUP, align 4
  %106 = call i32 @sigaction(i32 %105, %struct.sigaction* %6, i32* null)
  %107 = load i32, i32* @SIGINT, align 4
  %108 = call i32 @sigaction(i32 %107, %struct.sigaction* %6, i32* null)
  %109 = load i32, i32* @SIGTERM, align 4
  %110 = call i32 @sigaction(i32 %109, %struct.sigaction* %6, i32* null)
  br label %111

111:                                              ; preds = %88, %85
  store i64 0, i64* @lineno, align 8
  store i32 0, i32* @nfiles, align 4
  store i64 0, i64* @truncofs, align 8
  store i32* null, i32** @overfile, align 8
  store i32 1, i32* @maxfiles, align 4
  store i64 0, i64* %7, align 8
  br label %112

112:                                              ; preds = %128, %111
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @sufflen, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load i32, i32* @maxfiles, align 4
  %118 = load i32, i32* @LONG_MAX, align 4
  %119 = sdiv i32 %118, 10
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i64, i64* @sufflen, align 8
  %123 = load i64, i64* %7, align 8
  %124 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %116
  %126 = load i32, i32* @maxfiles, align 4
  %127 = mul nsw i32 %126, 10
  store i32 %127, i32* @maxfiles, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %7, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %7, align 8
  br label %112

131:                                              ; preds = %112
  br label %132

132:                                              ; preds = %217, %131
  %133 = load i32, i32* @nfiles, align 4
  %134 = load i32, i32* @maxfiles, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %5, align 8
  %140 = load i8*, i8** %138, align 8
  store i8* %140, i8** %9, align 8
  %141 = icmp ne i8* %140, null
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i1 [ false, %132 ], [ %141, %137 ]
  br i1 %143, label %144, label %218

144:                                              ; preds = %142
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %178

148:                                              ; preds = %144
  %149 = load i8**, i8*** %5, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 123
  br i1 %153, label %154, label %178

154:                                              ; preds = %148
  store i64 0, i64* @errno, align 8
  %155 = load i8**, i8*** %5, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = call i8* @strtol(i8* %157, i8** %10, i32 10)
  %159 = ptrtoint i8* %158 to i64
  store i64 %159, i64* @reps, align 8
  %160 = load i64, i64* @reps, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %154
  %163 = load i8*, i8** %10, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 125
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = load i64, i64* @errno, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167, %162, %154
  %171 = load i8**, i8*** %5, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %170, %167
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i32 1
  store i8** %177, i8*** %5, align 8
  br label %179

178:                                              ; preds = %148, %144
  store i64 0, i64* @reps, align 8
  br label %179

179:                                              ; preds = %178, %175
  %180 = load i8*, i8** %9, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 47
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = load i8*, i8** %9, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 37
  br i1 %188, label %189, label %205

189:                                              ; preds = %184, %179
  br label %190

190:                                              ; preds = %202, %189
  %191 = load i8*, i8** %9, align 8
  %192 = call i32 @do_rexp(i8* %191)
  br label %193

193:                                              ; preds = %190
  %194 = load i64, i64* @reps, align 8
  %195 = add nsw i64 %194, -1
  store i64 %195, i64* @reps, align 8
  %196 = icmp ne i64 %194, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i32, i32* @nfiles, align 4
  %199 = load i32, i32* @maxfiles, align 4
  %200 = sub nsw i32 %199, 1
  %201 = icmp slt i32 %198, %200
  br label %202

202:                                              ; preds = %197, %193
  %203 = phi i1 [ false, %193 ], [ %201, %197 ]
  br i1 %203, label %190, label %204

204:                                              ; preds = %202
  br label %217

205:                                              ; preds = %184
  %206 = load i8*, i8** %9, align 8
  %207 = load i8, i8* %206, align 1
  %208 = call i64 @isdigit(i8 zeroext %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 @do_lineno(i8* %211)
  br label %216

213:                                              ; preds = %205
  %214 = load i8*, i8** %9, align 8
  %215 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %213, %210
  br label %217

217:                                              ; preds = %216, %204
  br label %132

218:                                              ; preds = %142
  %219 = load i32*, i32** @infile, align 8
  %220 = call i32 @feof(i32* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %252, label %222

222:                                              ; preds = %218
  %223 = call i32* (...) @newfile()
  store i32* %223, i32** %12, align 8
  br label %224

224:                                              ; preds = %235, %222
  %225 = call i8* (...) @get_line()
  store i8* %225, i8** %11, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load i8*, i8** %11, align 8
  %229 = load i32*, i32** %12, align 8
  %230 = call i64 @fputs(i8* %228, i32* %229)
  %231 = load i64, i64* @EOF, align 8
  %232 = icmp ne i64 %230, %231
  br label %233

233:                                              ; preds = %227, %224
  %234 = phi i1 [ false, %224 ], [ %232, %227 ]
  br i1 %234, label %235, label %236

235:                                              ; preds = %233
  br label %224

236:                                              ; preds = %233
  %237 = load i32, i32* @sflag, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %236
  %240 = load i32*, i32** %12, align 8
  %241 = call i64 @ftello(i32* %240)
  %242 = trunc i64 %241 to i32
  %243 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %239, %236
  %245 = load i32*, i32** %12, align 8
  %246 = call i64 @fclose(i32* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %244
  %249 = load i8*, i8** @currfile, align 8
  %250 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %248, %244
  br label %252

252:                                              ; preds = %251, %218
  %253 = call i32 @toomuch(i32* null, i32 0)
  store i32 0, i32* @doclean, align 4
  ret i32 0
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @do_rexp(i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @do_lineno(i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @newfile(...) #1

declare dso_local i8* @get_line(...) #1

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i64 @ftello(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @toomuch(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
