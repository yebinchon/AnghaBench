; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_calendar.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_calendar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.tm = type { i64 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"-A:aB:D:dF:f:l:t:U:W:?\00", align 1
@EPERM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@doall = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"number of days must be positive\00", align 1
@DEBUG = common dso_local global i32* null, align 8
@debug = common dso_local global i32 0, align 4
@calendarFile = common dso_local global i8* null, align 8
@EastLongitude = common dso_local global i32 0, align 4
@f_time = common dso_local global i64 0, align 8
@UTCOffset = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@UTCOFFSET_NOTSET = common dso_local global i32 0, align 4
@LONGITUDE_NOTSET = common dso_local global i32 0, align 4
@SECSPERHOUR = common dso_local global i64 0, align 8
@SECSPERMINUTE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"setenv: %s\00", align 1
@pw = common dso_local global %struct.TYPE_5__* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@LOGIN_SETALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"setusercontext\00", align 1
@CODESET = common dso_local global i32 0, align 4
@outputEncoding = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm, align 8
  %11 = alloca %struct.tm, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tm, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 5, i32* %8, align 4
  %21 = load i32, i32* @LC_ALL, align 4
  %22 = call i32 @setlocale(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %75, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %73 [
    i32 45, label %30
    i32 97, label %30
    i32 87, label %37
    i32 65, label %38
    i32 66, label %46
    i32 68, label %54
    i32 100, label %57
    i32 70, label %58
    i32 102, label %61
    i32 108, label %63
    i32 116, label %66
    i32 85, label %69
    i32 63, label %72
  ]

30:                                               ; preds = %28, %28
  %31 = call i32 (...) @getuid()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* @errno, align 4
  %35 = call i32 @err(i32 1, i8* null)
  br label %36

36:                                               ; preds = %33, %30
  store i32 1, i32* @doall, align 4
  br label %75

37:                                               ; preds = %28
  store i32 -1, i32* %8, align 4
  br label %38

38:                                               ; preds = %28, %37
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i32 @atoi(i8* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  br label %75

46:                                               ; preds = %28
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  br label %75

54:                                               ; preds = %28
  %55 = load i8*, i8** @optarg, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** @DEBUG, align 8
  br label %75

57:                                               ; preds = %28
  store i32 1, i32* @debug, align 4
  br label %75

58:                                               ; preds = %28
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %8, align 4
  br label %75

61:                                               ; preds = %28
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** @calendarFile, align 8
  br label %75

63:                                               ; preds = %28
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i32 @strtol(i8* %64, i32* null, i32 10)
  store i32 %65, i32* @EastLongitude, align 4
  br label %75

66:                                               ; preds = %28
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i64 @Mktime(i8* %67)
  store i64 %68, i64* @f_time, align 8
  br label %75

69:                                               ; preds = %28
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 @strtod(i8* %70, i32* null)
  store i32 %71, i32* @UTCOffset, align 4
  br label %75

72:                                               ; preds = %28
  br label %73

73:                                               ; preds = %28, %72
  %74 = call i32 (...) @usage()
  br label %75

75:                                               ; preds = %73, %69, %66, %63, %61, %58, %57, %54, %53, %45, %36
  br label %23

76:                                               ; preds = %23
  %77 = load i64, i64* @optind, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  %82 = load i64, i64* @optind, align 8
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 %82
  store i8** %84, i8*** %5, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %76
  %90 = load i64, i64* @f_time, align 8
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @time(i64* @f_time)
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* @UTCOffset, align 4
  %96 = load i32, i32* @UTCOFFSET_NOTSET, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %94
  %99 = load i32, i32* @EastLongitude, align 4
  %100 = load i32, i32* @LONGITUDE_NOTSET, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %138

102:                                              ; preds = %98
  %103 = call i32 @time(i64* %12)
  %104 = call i32 @localtime_r(i64* %12, %struct.tm* %13)
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @SECSPERHOUR, align 8
  %109 = sdiv i64 %107, %108
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* @SECSPERHOUR, align 8
  %111 = load i64, i64* %14, align 8
  %112 = srem i64 %111, %110
  store i64 %112, i64* %14, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* @SECSPERMINUTE, align 8
  %115 = sdiv i64 %113, %114
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* @SECSPERMINUTE, align 8
  %117 = load i64, i64* %14, align 8
  %118 = srem i64 %117, %116
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  store i64 %119, i64* %17, align 8
  %120 = load i64, i64* %16, align 8
  %121 = sitofp i64 %120 to double
  %122 = load i64, i64* %17, align 8
  %123 = sitofp i64 %122 to double
  %124 = fdiv double %123, 6.000000e+01
  %125 = fmul double 1.000000e+02, %124
  %126 = fadd double %121, %125
  store double %126, double* %18, align 8
  %127 = load double, double* %18, align 8
  %128 = fdiv double %127, 6.000000e-01
  store double %128, double* %18, align 8
  %129 = load i64, i64* %15, align 8
  %130 = sitofp i64 %129 to double
  %131 = load double, double* %18, align 8
  %132 = fdiv double %131, 1.000000e+02
  %133 = fadd double %130, %132
  store double %133, double* %18, align 8
  %134 = load double, double* %18, align 8
  %135 = fptosi double %134 to i32
  store i32 %135, i32* @UTCOffset, align 4
  %136 = load i32, i32* @UTCOffset, align 4
  %137 = mul nsw i32 %136, 15
  store i32 %137, i32* @EastLongitude, align 4
  br label %154

138:                                              ; preds = %98, %94
  %139 = load i32, i32* @UTCOffset, align 4
  %140 = load i32, i32* @UTCOFFSET_NOTSET, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* @EastLongitude, align 4
  %144 = sdiv i32 %143, 15
  store i32 %144, i32* @UTCOffset, align 4
  br label %153

145:                                              ; preds = %138
  %146 = load i32, i32* @EastLongitude, align 4
  %147 = load i32, i32* @LONGITUDE_NOTSET, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* @UTCOffset, align 4
  %151 = mul nsw i32 %150, 15
  store i32 %151, i32* @EastLongitude, align 4
  br label %152

152:                                              ; preds = %149, %145
  br label %153

153:                                              ; preds = %152, %142
  br label %154

154:                                              ; preds = %153, %102
  %155 = load i64, i64* @f_time, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @settimes(i64 %155, i32 %156, i32 %157, i32 %158, %struct.tm* %10, %struct.tm* %11)
  %160 = call i32 @generatedates(%struct.tm* %10, %struct.tm* %11)
  %161 = call i64 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 @strerror(i32 %164)
  %166 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %163, %154
  %168 = call i32 (...) @tzset()
  %169 = load i32, i32* @debug, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = call i32 (...) @dumpdates()
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i32*, i32** @DEBUG, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i32*, i32** @DEBUG, align 8
  %178 = call i32 @dodebug(i32* %177)
  %179 = call i32 @exit(i32 0) #3
  unreachable

180:                                              ; preds = %173
  %181 = load i32, i32* @doall, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %221

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %219, %193, %183
  %185 = call %struct.TYPE_5__* (...) @getpwent()
  store %struct.TYPE_5__* %185, %struct.TYPE_5__** @pw, align 8
  %186 = icmp ne %struct.TYPE_5__* %185, null
  br i1 %186, label %187, label %220

187:                                              ; preds = %184
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pw, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @chdir(i32 %190)
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %184

194:                                              ; preds = %187
  %195 = call i64 (...) @fork()
  store i64 %195, i64* %19, align 8
  %196 = load i64, i64* %19, align 8
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %194
  %201 = load i64, i64* %19, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %200
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pw, align 8
  %205 = call i32* @login_getpwclass(%struct.TYPE_5__* %204)
  store i32* %205, i32** %20, align 8
  %206 = load i32*, i32** %20, align 8
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pw, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pw, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @LOGIN_SETALL, align 4
  %212 = call i64 @setusercontext(i32* %206, %struct.TYPE_5__* %207, i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %203
  %215 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %203
  %217 = call i32 (...) @cal()
  %218 = call i32 @exit(i32 0) #3
  unreachable

219:                                              ; preds = %200
  br label %184

220:                                              ; preds = %184
  br label %223

221:                                              ; preds = %180
  %222 = call i32 (...) @cal()
  br label %223

223:                                              ; preds = %221, %220
  %224 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @Mktime(i8*) #1

declare dso_local i32 @strtod(i8*, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @settimes(i64, i32, i32, i32, %struct.tm*, %struct.tm*) #1

declare dso_local i32 @generatedates(%struct.tm*, %struct.tm*) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @dumpdates(...) #1

declare dso_local i32 @dodebug(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_5__* @getpwent(...) #1

declare dso_local i32 @chdir(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32* @login_getpwclass(%struct.TYPE_5__*) #1

declare dso_local i64 @setusercontext(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @cal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
