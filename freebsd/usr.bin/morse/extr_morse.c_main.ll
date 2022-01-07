; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/morse/extr_morse.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GETOPTOPTS = common dso_local global i32 0, align 4
@optarg = common dso_local global i64 0, align 8
@cpm = common dso_local global i32 0, align 4
@device = common dso_local global i64 0, align 8
@eflag = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@freq = common dso_local global i64 0, align 8
@lflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@wpm = common dso_local global i32 0, align 4
@USAGE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"morse: only one of -l, -s, and -r allowed\0A\00", align 1
@pflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"morse: only one of -p, -d and -l, -s allowed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"morse: insane speed\0A\00", align 1
@FREQUENCY = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"open tty line\00", align 1
@otty = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"tcgetattr() failed\00", align 1
@ntty = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CLOCAL = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@TIOCMGET = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@olflags = common dso_local global i32 0, align 4
@TIOCMSET = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@dot_clock = common dso_local global i32 0, align 4
@cdot_clock = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CODESET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"KOI8-R\00", align 1
@koi8rtab = common dso_local global i32 0, align 4
@hightab = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"ISO8859-1\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ISO8859-15\00", align 1
@iso8859_1tab = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"ISO8859-7\00", align 1
@iso8859_7tab = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@DELIMITERS = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@SPEAKER = common dso_local global i8* null, align 8
@spkr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %10

10:                                               ; preds = %45, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @GETOPTOPTS, align 4
  %14 = call i32 @getopt(i32 %11, i8** %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = trunc i32 %17 to i8
  %19 = sext i8 %18 to i32
  switch i32 %19, label %42 [
    i32 99, label %20
    i32 100, label %24
    i32 101, label %26
    i32 102, label %30
    i32 108, label %34
    i32 114, label %35
    i32 115, label %36
    i32 119, label %37
    i32 63, label %41
  ]

20:                                               ; preds = %16
  %21 = load i64, i64* @optarg, align 8
  %22 = call i8* @atoi(i64 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* @cpm, align 4
  br label %45

24:                                               ; preds = %16
  %25 = load i64, i64* @optarg, align 8
  store i64 %25, i64* @device, align 8
  br label %45

26:                                               ; preds = %16
  store i32 1, i32* @eflag, align 4
  %27 = load i32, i32* @stdout, align 4
  %28 = load i32, i32* @_IONBF, align 4
  %29 = call i32 @setvbuf(i32 %27, i32 0, i32 %28, i32 0)
  br label %45

30:                                               ; preds = %16
  %31 = load i64, i64* @optarg, align 8
  %32 = call i8* @atoi(i64 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* @freq, align 8
  br label %45

34:                                               ; preds = %16
  store i32 1, i32* @lflag, align 4
  br label %45

35:                                               ; preds = %16
  store i32 1, i32* @rflag, align 4
  br label %45

36:                                               ; preds = %16
  store i32 1, i32* @sflag, align 4
  br label %45

37:                                               ; preds = %16
  %38 = load i64, i64* @optarg, align 8
  %39 = call i8* @atoi(i64 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* @wpm, align 4
  br label %45

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %16, %41
  %43 = load i8*, i8** @USAGE, align 8
  %44 = call i32 @errx(i32 1, i8* %43)
  br label %45

45:                                               ; preds = %42, %37, %36, %35, %34, %30, %26, %24, %20
  br label %10

46:                                               ; preds = %10
  %47 = load i32, i32* @sflag, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @lflag, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @sflag, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @rflag, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @lflag, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* @rflag, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %55, %49
  %65 = call i32 @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61, %58
  %67 = load i32, i32* @pflag, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* @device, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69, %66
  %73 = load i32, i32* @sflag, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @lflag, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75, %72
  %79 = call i32 @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75, %69
  %81 = load i32, i32* @cpm, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @wpm, align 4
  store i32 %84, i32* @cpm, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* @pflag, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* @device, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @wpm, align 4
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @wpm, align 4
  %96 = icmp sgt i32 %95, 60
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @cpm, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @cpm, align 4
  %102 = icmp sgt i32 %101, 60
  br i1 %102, label %103, label %105

103:                                              ; preds = %100, %97, %94, %91
  %104 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100, %88
  %106 = load i32, i32* @pflag, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @device, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108, %105
  %112 = load i64, i64* @freq, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i64, i64* @FREQUENCY, align 8
  store i64 %115, i64* @freq, align 8
  br label %116

116:                                              ; preds = %114, %111, %108
  %117 = load i64, i64* @device, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %116
  %120 = load i64, i64* @device, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load i32, i32* @O_WRONLY, align 4
  %123 = load i32, i32* @O_NONBLOCK, align 4
  %124 = or i32 %122, %123
  %125 = call i32 (i8*, i32, ...) @open(i8* %121, i32 %124)
  store i32 %125, i32* @line, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %119
  %130 = load i32, i32* @line, align 4
  %131 = call i32 @tcgetattr(i32 %130, %struct.TYPE_5__* @otty)
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_5__* @ntty to i8*), i8* align 4 bitcast (%struct.TYPE_5__* @otty to i8*), i64 4, i1 false)
  %136 = load i32, i32* @CLOCAL, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ntty, i32 0, i32 0), align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ntty, i32 0, i32 0), align 4
  %139 = load i32, i32* @line, align 4
  %140 = load i32, i32* @TCSANOW, align 4
  %141 = call i32 @tcsetattr(i32 %139, i32 %140, %struct.TYPE_5__* @ntty)
  %142 = load i32, i32* @line, align 4
  %143 = load i32, i32* @F_GETFL, align 4
  %144 = call i32 (i32, i32, ...) @fcntl(i32 %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @O_NONBLOCK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %7, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* @line, align 4
  %150 = load i32, i32* @F_SETFL, align 4
  %151 = call i32 (i32, i32, ...) @fcntl(i32 %149, i32 %150, i32* %7)
  %152 = load i32, i32* @line, align 4
  %153 = load i32, i32* @TIOCMGET, align 4
  %154 = call i32 @ioctl(i32 %152, i32 %153, i32* %7)
  %155 = load i32, i32* @TIOCM_RTS, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* @olflags, align 4
  %160 = load i32, i32* @line, align 4
  %161 = load i32, i32* @TIOCMSET, align 4
  %162 = call i32 @ioctl(i32 %160, i32 %161, i32* %7)
  %163 = load i32, i32* @SIGHUP, align 4
  %164 = load i32, i32* @sighandler, align 4
  %165 = call i32 @signal(i32 %163, i32 %164)
  %166 = load i32, i32* @SIGINT, align 4
  %167 = load i32, i32* @sighandler, align 4
  %168 = call i32 @signal(i32 %166, i32 %167)
  %169 = load i32, i32* @SIGQUIT, align 4
  %170 = load i32, i32* @sighandler, align 4
  %171 = call i32 @signal(i32 %169, i32 %170)
  %172 = load i32, i32* @SIGTERM, align 4
  %173 = load i32, i32* @sighandler, align 4
  %174 = call i32 @signal(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %135, %116
  %176 = load i32, i32* @pflag, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i64, i64* @device, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %202

181:                                              ; preds = %178, %175
  %182 = load i32, i32* @wpm, align 4
  %183 = sitofp i32 %182 to double
  %184 = fdiv double %183, 2.400000e+00
  %185 = fptosi double %184 to i32
  store i32 %185, i32* @dot_clock, align 4
  %186 = load i32, i32* @dot_clock, align 4
  %187 = sdiv i32 1, %186
  store i32 %187, i32* @dot_clock, align 4
  %188 = load i32, i32* @dot_clock, align 4
  %189 = sdiv i32 %188, 2
  store i32 %189, i32* @dot_clock, align 4
  %190 = load i32, i32* @dot_clock, align 4
  %191 = mul nsw i32 %190, 100
  store i32 %191, i32* @dot_clock, align 4
  %192 = load i32, i32* @cpm, align 4
  %193 = sitofp i32 %192 to double
  %194 = fdiv double %193, 2.400000e+00
  %195 = fptosi double %194 to i32
  store i32 %195, i32* @cdot_clock, align 4
  %196 = load i32, i32* @cdot_clock, align 4
  %197 = sdiv i32 1, %196
  store i32 %197, i32* @cdot_clock, align 4
  %198 = load i32, i32* @cdot_clock, align 4
  %199 = sdiv i32 %198, 2
  store i32 %199, i32* @cdot_clock, align 4
  %200 = load i32, i32* @cdot_clock, align 4
  %201 = mul nsw i32 %200, 100
  store i32 %201, i32* @cdot_clock, align 4
  br label %202

202:                                              ; preds = %181, %178
  %203 = load i64, i64* @optind, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = sub nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %4, align 4
  %208 = load i64, i64* @optind, align 8
  %209 = load i8**, i8*** %5, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 %208
  store i8** %210, i8*** %5, align 8
  %211 = load i32, i32* @LC_CTYPE, align 4
  %212 = call i32* @setlocale(i32 %211, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %245

214:                                              ; preds = %202
  %215 = load i32, i32* @CODESET, align 4
  %216 = call i8* @nl_langinfo(i32 %215)
  store i8* %216, i8** %9, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %214
  %221 = load i8*, i8** %9, align 8
  %222 = call i64 @strcmp(i8* %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load i32, i32* @koi8rtab, align 4
  store i32 %225, i32* @hightab, align 4
  br label %244

226:                                              ; preds = %220
  %227 = load i8*, i8** %9, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %226
  %231 = load i8*, i8** %9, align 8
  %232 = call i64 @strcmp(i8* %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230, %226
  %235 = load i32, i32* @iso8859_1tab, align 4
  store i32 %235, i32* @hightab, align 4
  br label %243

236:                                              ; preds = %230
  %237 = load i8*, i8** %9, align 8
  %238 = call i64 @strcmp(i8* %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i32, i32* @iso8859_7tab, align 4
  store i32 %241, i32* @hightab, align 4
  br label %242

242:                                              ; preds = %240, %236
  br label %243

243:                                              ; preds = %242, %234
  br label %244

244:                                              ; preds = %243, %224
  br label %245

245:                                              ; preds = %244, %214, %202
  %246 = load i32, i32* @lflag, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %245
  %251 = load i32, i32* @rflag, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %291

253:                                              ; preds = %250
  %254 = load i8**, i8*** %5, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %287

257:                                              ; preds = %253
  br label %258

258:                                              ; preds = %280, %257
  %259 = load i8**, i8*** %5, align 8
  %260 = load i8*, i8** %259, align 8
  %261 = load i32, i32* @DELIMITERS, align 4
  %262 = call i8* @strtok(i8* %260, i32 %261)
  store i8* %262, i8** %8, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = icmp eq i8* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load i8**, i8*** %5, align 8
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @decode(i8* %267)
  br label %279

269:                                              ; preds = %258
  br label %270

270:                                              ; preds = %273, %269
  %271 = load i8*, i8** %8, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i8*, i8** %8, align 8
  %275 = call i32 @decode(i8* %274)
  %276 = load i32, i32* @DELIMITERS, align 4
  %277 = call i8* @strtok(i8* null, i32 %276)
  store i8* %277, i8** %8, align 8
  br label %270

278:                                              ; preds = %270
  br label %279

279:                                              ; preds = %278, %265
  br label %280

280:                                              ; preds = %279
  %281 = load i8**, i8*** %5, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i32 1
  store i8** %282, i8*** %5, align 8
  %283 = load i8*, i8** %282, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %258, label %285

285:                                              ; preds = %280
  %286 = call i32 @putchar(i32 10)
  br label %290

287:                                              ; preds = %253
  %288 = load i32, i32* @stdin, align 4
  %289 = call i32 @fdecode(i32 %288)
  br label %290

290:                                              ; preds = %287, %285
  br label %348

291:                                              ; preds = %250
  %292 = load i8**, i8*** %5, align 8
  %293 = load i8*, i8** %292, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %332

295:                                              ; preds = %291
  br label %296

296:                                              ; preds = %326, %295
  %297 = load i8**, i8*** %5, align 8
  %298 = load i8*, i8** %297, align 8
  store i8* %298, i8** %8, align 8
  br label %299

299:                                              ; preds = %316, %296
  %300 = load i8*, i8** %8, align 8
  %301 = load i8, i8* %300, align 1
  %302 = icmp ne i8 %301, 0
  br i1 %302, label %303, label %319

303:                                              ; preds = %299
  %304 = load i32, i32* @eflag, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load i8*, i8** %8, align 8
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = call i32 @putchar(i32 %309)
  br label %311

311:                                              ; preds = %306, %303
  %312 = load i8*, i8** %8, align 8
  %313 = load i8, i8* %312, align 1
  %314 = sext i8 %313 to i32
  %315 = call i32 @morse(i32 %314)
  br label %316

316:                                              ; preds = %311
  %317 = load i8*, i8** %8, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %8, align 8
  br label %299

319:                                              ; preds = %299
  %320 = load i32, i32* @eflag, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = call i32 @putchar(i32 32)
  br label %324

324:                                              ; preds = %322, %319
  %325 = call i32 @morse(i32 32)
  br label %326

326:                                              ; preds = %324
  %327 = load i8**, i8*** %5, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i32 1
  store i8** %328, i8*** %5, align 8
  %329 = load i8*, i8** %328, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %296, label %331

331:                                              ; preds = %326
  br label %347

332:                                              ; preds = %291
  br label %333

333:                                              ; preds = %343, %332
  %334 = call i32 (...) @getchar()
  store i32 %334, i32* %6, align 4
  %335 = load i32, i32* @EOF, align 4
  %336 = icmp ne i32 %334, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %333
  %338 = load i32, i32* @eflag, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* %6, align 4
  %342 = call i32 @putchar(i32 %341)
  br label %343

343:                                              ; preds = %340, %337
  %344 = load i32, i32* %6, align 4
  %345 = call i32 @morse(i32 %344)
  br label %333

346:                                              ; preds = %333
  br label %347

347:                                              ; preds = %346, %331
  br label %348

348:                                              ; preds = %347, %290
  %349 = load i64, i64* @device, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = load i32, i32* @line, align 4
  %353 = load i32, i32* @TCSANOW, align 4
  %354 = call i32 @tcsetattr(i32 %352, i32 %353, %struct.TYPE_5__* @otty)
  br label %355

355:                                              ; preds = %351, %348
  %356 = call i32 @exit(i32 0) #4
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i32) #1

declare dso_local i8* @atoi(i64) #1

declare dso_local i32 @setvbuf(i32, i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @tcgetattr(i32, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i32 @decode(i8*) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @fdecode(i32) #1

declare dso_local i32 @morse(i32) #1

declare dso_local i32 @getchar(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
