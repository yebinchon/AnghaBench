; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/du/extr_du.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i8*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@main.dot = internal global [2 x i8] c".\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@Aflag = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@cblocksize = common dso_local global i32 0, align 4
@blocksize = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ignores = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"+AB:HI:LPasd:cghklmnrt:x\00", align 1
@long_options = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid argument to option B: %s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"invalid argument to option d: %s\00", align 1
@hflag = common dso_local global i64 0, align 8
@UNITS_2 = common dso_local global i64 0, align 8
@nodumpflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid threshold: %s\00", align 1
@FTS_XDEV = common dso_local global i32 0, align 4
@UNITS_SI = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@FTS_LOGICAL = common dso_local global i32 0, align 4
@SIGINFO = common dso_local global i32 0, align 4
@siginfo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"fts_open\00", align 1
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%jd\09%s\0A\00", align 1
@info = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\09total\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%jd\09total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %24 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* @LC_ALL, align 4
  %26 = call i32 @setlocale(i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @Aflag, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %27 = load i8**, i8*** %5, align 8
  store i8** %27, i8*** %24, align 8
  %28 = load i32, i32* @FTS_PHYSICAL, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %29 = load i32, i32* @DEV_BSIZE, align 4
  store i32 %29, i32* @cblocksize, align 4
  store i32 0, i32* @blocksize, align 4
  %30 = load i32, i32* @INT_MAX, align 4
  store i32 %30, i32* %13, align 4
  %31 = call i32 @SLIST_INIT(i32* @ignores)
  br label %32

32:                                               ; preds = %120, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* @long_options, align 4
  %36 = call i32 @getopt_long(i32 %33, i8** %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32* null)
  store i32 %36, i32* %21, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %121

38:                                               ; preds = %32
  %39 = load i32, i32* %21, align 4
  switch i32 %39, label %118 [
    i32 65, label %40
    i32 66, label %41
    i32 72, label %58
    i32 73, label %59
    i32 76, label %62
    i32 80, label %63
    i32 97, label %64
    i32 115, label %65
    i32 100, label %66
    i32 99, label %83
    i32 103, label %84
    i32 104, label %85
    i32 107, label %87
    i32 108, label %88
    i32 109, label %89
    i32 110, label %90
    i32 114, label %91
    i32 116, label %92
    i32 120, label %111
    i32 128, label %115
    i32 63, label %117
  ]

40:                                               ; preds = %38
  store i32 1, i32* @Aflag, align 4
  br label %120

41:                                               ; preds = %38
  store i64 0, i64* @errno, align 8
  %42 = load i32, i32* @optarg, align 4
  %43 = call i8* @atoi(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* @cblocksize, align 4
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @ERANGE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @cblocksize, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @optarg, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %51, %48
  br label %120

58:                                               ; preds = %38
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %120

59:                                               ; preds = %38
  %60 = load i32, i32* @optarg, align 4
  %61 = call i32 @ignoreadd(i32 %60)
  br label %120

62:                                               ; preds = %38
  store i32 1, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %120

63:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %120

64:                                               ; preds = %38
  store i32 1, i32* %16, align 4
  br label %120

65:                                               ; preds = %38
  store i32 1, i32* %17, align 4
  br label %120

66:                                               ; preds = %38
  store i32 1, i32* %18, align 4
  store i64 0, i64* @errno, align 8
  %67 = load i32, i32* @optarg, align 4
  %68 = call i8* @atoi(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %13, align 4
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @ERANGE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73, %66
  %77 = load i32, i32* @optarg, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = call i32 (...) @usage()
  br label %82

82:                                               ; preds = %76, %73
  br label %120

83:                                               ; preds = %38
  store i32 1, i32* %19, align 4
  br label %120

84:                                               ; preds = %38
  store i64 0, i64* @hflag, align 8
  store i32 1073741824, i32* @blocksize, align 4
  br label %120

85:                                               ; preds = %38
  %86 = load i64, i64* @UNITS_2, align 8
  store i64 %86, i64* @hflag, align 8
  br label %120

87:                                               ; preds = %38
  store i64 0, i64* @hflag, align 8
  store i32 1024, i32* @blocksize, align 4
  br label %120

88:                                               ; preds = %38
  store i32 1, i32* %20, align 4
  br label %120

89:                                               ; preds = %38
  store i64 0, i64* @hflag, align 8
  store i32 1048576, i32* @blocksize, align 4
  br label %120

90:                                               ; preds = %38
  store i32 1, i32* @nodumpflag, align 4
  br label %120

91:                                               ; preds = %38
  br label %120

92:                                               ; preds = %38
  %93 = load i32, i32* @optarg, align 4
  %94 = call i32 @expand_number(i32 %93, i32* %10)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96, %92
  %100 = load i32, i32* @optarg, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = call i32 (...) @usage()
  br label %110

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 -1, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109, %99
  br label %120

111:                                              ; preds = %38
  %112 = load i32, i32* @FTS_XDEV, align 4
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %120

115:                                              ; preds = %38
  %116 = load i64, i64* @UNITS_SI, align 8
  store i64 %116, i64* @hflag, align 8
  br label %120

117:                                              ; preds = %38
  br label %118

118:                                              ; preds = %38, %117
  %119 = call i32 (...) @usage()
  br label %120

120:                                              ; preds = %118, %115, %111, %110, %91, %90, %89, %88, %87, %85, %84, %83, %82, %65, %64, %63, %62, %59, %58, %57, %40
  br label %32

121:                                              ; preds = %32
  %122 = load i64, i64* @optind, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %4, align 4
  %127 = load i64, i64* @optind, align 8
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 %127
  store i8** %129, i8*** %5, align 8
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = load i32, i32* @FTS_COMFOLLOW, align 4
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %132, %121
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i32, i32* @FTS_PHYSICAL, align 4
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* @FTS_LOGICAL, align 4
  %145 = load i32, i32* %12, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %139, %136
  %148 = load i32, i32* @Aflag, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* @cblocksize, align 4
  %152 = load i32, i32* @DEV_BSIZE, align 4
  %153 = srem i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @cblocksize, align 4
  %157 = load i32, i32* @DEV_BSIZE, align 4
  %158 = call i32 @howmany(i32 %156, i32 %157)
  %159 = load i32, i32* @DEV_BSIZE, align 4
  %160 = mul nsw i32 %158, %159
  store i32 %160, i32* @cblocksize, align 4
  br label %161

161:                                              ; preds = %155, %150, %147
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %164, %165
  %167 = icmp sgt i32 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = call i32 (...) @usage()
  br label %170

170:                                              ; preds = %168, %161
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %173, %170
  %175 = load i8**, i8*** %5, align 8
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = load i8**, i8*** %24, align 8
  store i8** %179, i8*** %5, align 8
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dot, i64 0, i64 0), i8** %181, align 8
  %182 = load i8**, i8*** %5, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  store i8* null, i8** %183, align 8
  br label %184

184:                                              ; preds = %178, %174
  %185 = load i32, i32* @blocksize, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 @getbsize(i32* %22, i32* @blocksize)
  br label %189

189:                                              ; preds = %187, %184
  %190 = load i32, i32* @Aflag, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* @DEV_BSIZE, align 4
  %194 = load i32, i32* @cblocksize, align 4
  %195 = sdiv i32 %194, %193
  store i32 %195, i32* @cblocksize, align 4
  %196 = load i32, i32* @DEV_BSIZE, align 4
  %197 = load i32, i32* @blocksize, align 4
  %198 = sdiv i32 %197, %196
  store i32 %198, i32* @blocksize, align 4
  br label %199

199:                                              ; preds = %192, %189
  %200 = load i32, i32* %10, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @DEV_BSIZE, align 4
  %205 = sdiv i32 %203, %204
  %206 = load i32, i32* @cblocksize, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* @blocksize, align 4
  %209 = call i32 @howmany(i32 %207, i32 %208)
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %202, %199
  store i32 0, i32* %23, align 4
  %211 = load i32, i32* @SIGINFO, align 4
  %212 = load i32, i32* @siginfo, align 4
  %213 = call i32 @signal(i32 %211, i32 %212)
  %214 = load i8**, i8*** %5, align 8
  %215 = load i32, i32* %12, align 4
  %216 = call i32* @fts_open(i8** %214, i32 %215, i32* null)
  store i32* %216, i32** %6, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %210
  br label %221

221:                                              ; preds = %418, %220
  %222 = load i32*, i32** %6, align 8
  %223 = call %struct.TYPE_10__* @fts_read(i32* %222)
  store %struct.TYPE_10__* %223, %struct.TYPE_10__** %7, align 8
  %224 = icmp ne %struct.TYPE_10__* %223, null
  br i1 %224, label %225, label %424

225:                                              ; preds = %221
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %339 [
    i32 134, label %229
    i32 131, label %239
    i32 133, label %329
    i32 132, label %330
    i32 130, label %330
    i32 129, label %330
  ]

229:                                              ; preds = %225
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %231 = call i32 @ignorep(%struct.TYPE_10__* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load i32*, i32** %6, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %236 = load i32, i32* @FTS_SKIP, align 4
  %237 = call i32 @fts_set(i32* %234, %struct.TYPE_10__* %235, i32 %236)
  br label %238

238:                                              ; preds = %233, %229
  br label %418

239:                                              ; preds = %225
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %241 = call i32 @ignorep(%struct.TYPE_10__* %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  br label %418

244:                                              ; preds = %239
  %245 = load i32, i32* @Aflag, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %244
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @cblocksize, align 4
  %254 = call i32 @howmany(i32 %252, i32 %253)
  br label %263

255:                                              ; preds = %244
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 5
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @cblocksize, align 4
  %262 = call i32 @howmany(i32 %260, i32 %261)
  br label %263

263:                                              ; preds = %255, %247
  %264 = phi i32 [ %254, %247 ], [ %262, %255 ]
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, %265
  store i32 %269, i32* %267, align 4
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, %269
  store i32 %275, i32* %273, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = icmp sle i32 %278, %279
  br i1 %280, label %281, label %320

281:                                              ; preds = %263
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %11, align 4
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @cblocksize, align 4
  %288 = mul nsw i32 %286, %287
  %289 = load i32, i32* @blocksize, align 4
  %290 = call i32 @howmany(i32 %288, i32 %289)
  %291 = mul nsw i32 %283, %290
  %292 = icmp sle i32 %282, %291
  br i1 %292, label %293, label %320

293:                                              ; preds = %281
  %294 = load i64, i64* @hflag, align 8
  %295 = icmp sgt i64 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %293
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @prthumanval(i32 %299)
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 3
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %303)
  br label %319

305:                                              ; preds = %293
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @cblocksize, align 4
  %310 = mul nsw i32 %308, %309
  %311 = load i32, i32* @blocksize, align 4
  %312 = call i32 @howmany(i32 %310, i32 %311)
  %313 = sext i32 %312 to i64
  %314 = inttoptr i64 %313 to i8*
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 3
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %314, i8* %317)
  br label %319

319:                                              ; preds = %305, %296
  br label %320

320:                                              ; preds = %319, %281, %263
  %321 = load i32, i32* @info, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  store i32 0, i32* @info, align 4
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 3
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %326)
  br label %328

328:                                              ; preds = %323, %320
  br label %418

329:                                              ; preds = %225
  br label %418

330:                                              ; preds = %225, %225, %225
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 3
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @strerror(i32 %336)
  %338 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %333, i32 %337)
  store i32 1, i32* %23, align 4
  br label %418

339:                                              ; preds = %225
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %341 = call i32 @ignorep(%struct.TYPE_10__* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  br label %418

344:                                              ; preds = %339
  %345 = load i32, i32* %20, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %359

347:                                              ; preds = %344
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 5
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = icmp sgt i32 %352, 1
  br i1 %353, label %354, label %359

354:                                              ; preds = %347
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %356 = call i32 @linkchk(%struct.TYPE_10__* %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  br label %418

359:                                              ; preds = %354, %347, %344
  %360 = load i32, i32* @Aflag, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %359
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 5
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @cblocksize, align 4
  %369 = call i32 @howmany(i32 %367, i32 %368)
  br label %378

370:                                              ; preds = %359
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 5
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @cblocksize, align 4
  %377 = call i32 @howmany(i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %370, %362
  %379 = phi i32 [ %369, %362 ], [ %377, %370 ]
  store i32 %379, i32* %9, align 4
  %380 = load i32, i32* %16, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %378
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %410

387:                                              ; preds = %382, %378
  %388 = load i64, i64* @hflag, align 8
  %389 = icmp sgt i64 %388, 0
  br i1 %389, label %390, label %397

390:                                              ; preds = %387
  %391 = load i32, i32* %9, align 4
  %392 = call i32 @prthumanval(i32 %391)
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 3
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %395)
  br label %409

397:                                              ; preds = %387
  %398 = load i32, i32* %9, align 4
  %399 = load i32, i32* @cblocksize, align 4
  %400 = mul nsw i32 %398, %399
  %401 = load i32, i32* @blocksize, align 4
  %402 = call i32 @howmany(i32 %400, i32 %401)
  %403 = sext i32 %402 to i64
  %404 = inttoptr i64 %403 to i8*
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 3
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %404, i8* %407)
  br label %409

409:                                              ; preds = %397, %390
  br label %410

410:                                              ; preds = %409, %382
  %411 = load i32, i32* %9, align 4
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 4
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %416, %411
  store i32 %417, i32* %415, align 4
  br label %418

418:                                              ; preds = %410, %358, %343, %330, %329, %328, %243, %238
  %419 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %419, i32 0, i32 4
  %421 = load %struct.TYPE_9__*, %struct.TYPE_9__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %8, align 4
  br label %221

424:                                              ; preds = %221
  %425 = load i64, i64* @errno, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %424
  %428 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %429

429:                                              ; preds = %427, %424
  %430 = load i32, i32* %19, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %449

432:                                              ; preds = %429
  %433 = load i64, i64* @hflag, align 8
  %434 = icmp sgt i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %432
  %436 = load i32, i32* %8, align 4
  %437 = call i32 @prthumanval(i32 %436)
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %448

439:                                              ; preds = %432
  %440 = load i32, i32* %8, align 4
  %441 = load i32, i32* @cblocksize, align 4
  %442 = mul nsw i32 %440, %441
  %443 = load i32, i32* @blocksize, align 4
  %444 = call i32 @howmany(i32 %442, i32 %443)
  %445 = sext i32 %444 to i64
  %446 = inttoptr i64 %445 to i8*
  %447 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %446)
  br label %448

448:                                              ; preds = %439, %435
  br label %449

449:                                              ; preds = %448, %429
  %450 = call i32 (...) @ignoreclean()
  %451 = load i32, i32* %23, align 4
  %452 = call i32 @exit(i32 %451) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ignoreadd(i32) #1

declare dso_local i32 @expand_number(i32, i32*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @getbsize(i32*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.TYPE_10__* @fts_read(i32*) #1

declare dso_local i32 @ignorep(%struct.TYPE_10__*) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @prthumanval(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @linkchk(%struct.TYPE_10__*) #1

declare dso_local i32 @ignoreclean(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
