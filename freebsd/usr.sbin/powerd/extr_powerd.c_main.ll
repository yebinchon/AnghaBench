; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/powerd/extr_powerd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/powerd/extr_powerd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.pidfh = type { i32 }

@MODE_HIADAPTIVE = common dso_local global i32 0, align 4
@MODE_ADAPTIVE = common dso_local global i32 0, align 4
@DEFAULT_ACTIVE_PERCENT = common dso_local global i32 0, align 4
@cpu_running_mark = common dso_local global i32 0, align 4
@DEFAULT_IDLE_PERCENT = common dso_local global i32 0, align 4
@cpu_idle_mark = common dso_local global i32 0, align 4
@DEFAULT_POLL_INTERVAL = common dso_local global i32 0, align 4
@poll_ival = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"must be root to run\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"a:b:i:m:M:n:p:P:r:s:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"%d is not a valid percent\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%d is not a valid CPU frequency\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"poll interval is in units of ms\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"kern.cp_times\00", align 1
@cp_times_mib = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"lookup kern.cp_times\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"dev.cpu.0.freq\00", align 1
@freq_mib = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"no cpufreq(4) support -- aborting\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"dev.cpu.0.freq_levels\00", align 1
@levels_mib = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"lookup freq_levels\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"read_usage_times\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"error reading supported CPU frequencies\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"no CPU frequencies in user-specified range\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"powerd already running, pid: %d\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"cannot open pid file\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"cannot enter daemon mode, exiting\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@handle_sigs = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@acline_status = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [26 x i8] c"invalid AC line status %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"error reading current CPU frequency\00", align 1
@.str.19 = private unnamed_addr constant [75 x i8] c"CPU frequency is below user-defined minimum; changing frequency to %d MHz\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"error setting CPU freq %d\00", align 1
@.str.21 = private unnamed_addr constant [75 x i8] c"CPU frequency is above user-defined maximum; changing frequency to %d MHz\0A\00", align 1
@devd_pipe = common dso_local global i32 0, align 4
@exit_requested = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [28 x i8] c"total joules used: %u.%03u\0A\00", align 1
@MODE_MIN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [57 x i8] c"now operating on %s power; changing frequency to %d MHz\0A\00", align 1
@modes = common dso_local global i8** null, align 8
@MODE_MAX = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [26 x i8] c"read_usage_times() failed\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"load %3d%%, current freq %4d MHz (%2d), wanted freq %4d MHz\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"changing clock speed from %d MHz to %d MHz\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"error setting CPU frequency %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pidfh*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
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
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.pidfh* null, %struct.pidfh** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 -1, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %32 = load i32, i32* @MODE_HIADAPTIVE, align 4
  store i32 %32, i32* %26, align 4
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* @MODE_ADAPTIVE, align 4
  store i32 %33, i32* %25, align 4
  %34 = load i32, i32* @DEFAULT_ACTIVE_PERCENT, align 4
  store i32 %34, i32* @cpu_running_mark, align 4
  %35 = load i32, i32* @DEFAULT_IDLE_PERCENT, align 4
  store i32 %35, i32* @cpu_idle_mark, align 4
  %36 = load i32, i32* @DEFAULT_POLL_INTERVAL, align 4
  store i32 %36, i32* @poll_ival, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* @vflag, align 4
  %37 = call i64 (...) @geteuid()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %2
  br label %42

42:                                               ; preds = %125, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = call i32 @getopt(i32 %43, i8** %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %22, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %126

47:                                               ; preds = %42
  %48 = load i32, i32* %22, align 4
  switch i32 %48, label %123 [
    i32 97, label %49
    i32 98, label %53
    i32 115, label %57
    i32 105, label %61
    i32 109, label %74
    i32 77, label %84
    i32 110, label %94
    i32 112, label %98
    i32 80, label %107
    i32 114, label %109
    i32 118, label %122
  ]

49:                                               ; preds = %47
  %50 = load i8*, i8** @optarg, align 8
  %51 = load i32, i32* %22, align 4
  %52 = call i32 @parse_mode(i8* %50, i32* %24, i32 %51)
  br label %125

53:                                               ; preds = %47
  %54 = load i8*, i8** @optarg, align 8
  %55 = load i32, i32* %22, align 4
  %56 = call i32 @parse_mode(i8* %54, i32* %25, i32 %55)
  br label %125

57:                                               ; preds = %47
  %58 = load i8*, i8** @optarg, align 8
  %59 = load i32, i32* %22, align 4
  %60 = call i32 @parse_acline_mode(i8* %58, i32 %59)
  br label %125

61:                                               ; preds = %47
  %62 = load i8*, i8** @optarg, align 8
  %63 = call i32 @atoi(i8* %62)
  store i32 %63, i32* @cpu_idle_mark, align 4
  %64 = load i32, i32* @cpu_idle_mark, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @cpu_idle_mark, align 4
  %68 = icmp sgt i32 %67, 100
  br i1 %68, label %69, label %73

69:                                               ; preds = %66, %61
  %70 = load i32, i32* @cpu_idle_mark, align 4
  %71 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %69, %66
  br label %125

74:                                               ; preds = %47
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @atoi(i8* %75)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %20, align 4
  %81 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @usage()
  br label %83

83:                                               ; preds = %79, %74
  br label %125

84:                                               ; preds = %47
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i32 @atoi(i8* %85)
  store i32 %86, i32* %21, align 4
  %87 = load i32, i32* %21, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %21, align 4
  %91 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = call i32 (...) @usage()
  br label %93

93:                                               ; preds = %89, %84
  br label %125

94:                                               ; preds = %47
  %95 = load i8*, i8** @optarg, align 8
  %96 = load i32, i32* %22, align 4
  %97 = call i32 @parse_mode(i8* %95, i32* %26, i32 %96)
  br label %125

98:                                               ; preds = %47
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @atoi(i8* %99)
  store i32 %100, i32* @poll_ival, align 4
  %101 = load i32, i32* @poll_ival, align 4
  %102 = icmp slt i32 %101, 5
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %105 = call i32 (...) @usage()
  br label %106

106:                                              ; preds = %103, %98
  br label %125

107:                                              ; preds = %47
  %108 = load i8*, i8** @optarg, align 8
  store i8* %108, i8** %10, align 8
  br label %125

109:                                              ; preds = %47
  %110 = load i8*, i8** @optarg, align 8
  %111 = call i32 @atoi(i8* %110)
  store i32 %111, i32* @cpu_running_mark, align 4
  %112 = load i32, i32* @cpu_running_mark, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @cpu_running_mark, align 4
  %116 = icmp sgt i32 %115, 100
  br i1 %116, label %117, label %121

117:                                              ; preds = %114, %109
  %118 = load i32, i32* @cpu_running_mark, align 4
  %119 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = call i32 (...) @usage()
  br label %121

121:                                              ; preds = %117, %114
  br label %125

122:                                              ; preds = %47
  store i32 1, i32* @vflag, align 4
  br label %125

123:                                              ; preds = %47
  %124 = call i32 (...) @usage()
  br label %125

125:                                              ; preds = %123, %122, %121, %107, %106, %94, %93, %83, %73, %57, %53, %49
  br label %42

126:                                              ; preds = %42
  %127 = load i32, i32* %26, align 4
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* @poll_ival, align 4
  %129 = mul nsw i32 %128, 1000
  store i32 %129, i32* @poll_ival, align 4
  store i64 2, i64* %30, align 8
  %130 = load i32, i32* @cp_times_mib, align 4
  %131 = call i64 @sysctlnametomib(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %130, i64* %30)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %126
  store i64 4, i64* %30, align 8
  %136 = load i32, i32* @freq_mib, align 4
  %137 = call i64 @sysctlnametomib(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %136, i64* %30)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @EX_UNAVAILABLE, align 4
  %141 = call i32 @err(i32 %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %135
  store i64 4, i64* %30, align 8
  %143 = load i32, i32* @levels_mib, align 4
  %144 = call i64 @sysctlnametomib(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %143, i64* %30)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %142
  %149 = call i64 @read_usage_times(i32* null)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %148
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %21, align 4
  %156 = call i64 @read_freqs(i32* %18, i32** %14, i32** %17, i32 %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 @err(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i32, i32* %18, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %160
  %166 = load i32, i32* @vflag, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %194, label %168

168:                                              ; preds = %165
  %169 = load i8*, i8** %10, align 8
  %170 = call %struct.pidfh* @pidfile_open(i8* %169, i32 384, i32* %31)
  store %struct.pidfh* %170, %struct.pidfh** %9, align 8
  %171 = load %struct.pidfh*, %struct.pidfh** %9, align 8
  %172 = icmp eq %struct.pidfh* %171, null
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = load i64, i64* @errno, align 8
  %175 = load i64, i64* @EEXIST, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* %31, align 4
  %179 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %177, %173
  %181 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %168
  %183 = call i64 @daemon(i32 0, i32 0)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %187 = load %struct.pidfh*, %struct.pidfh** %9, align 8
  %188 = call i32 @pidfile_remove(%struct.pidfh* %187)
  %189 = load i32, i32* @EXIT_FAILURE, align 4
  %190 = call i32 @exit(i32 %189) #3
  unreachable

191:                                              ; preds = %182
  %192 = load %struct.pidfh*, %struct.pidfh** %9, align 8
  %193 = call i32 @pidfile_write(%struct.pidfh* %192)
  br label %194

194:                                              ; preds = %191, %165
  %195 = call i32 (...) @acline_init()
  %196 = load i32, i32* @SIGINT, align 4
  %197 = load i32, i32* @handle_sigs, align 4
  %198 = call i32 @signal(i32 %196, i32 %197)
  %199 = load i32, i32* @SIGTERM, align 4
  %200 = load i32, i32* @handle_sigs, align 4
  %201 = call i32 @signal(i32 %199, i32 %200)
  %202 = call i32 (...) @get_freq()
  store i32 %202, i32* %12, align 4
  store i32 %202, i32* %13, align 4
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* %18, align 4
  %206 = call i64 @get_freq_id(i32 %203, i32* %204, i32 %205)
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %11, align 4
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %210, label %211

210:                                              ; preds = %194
  store i32 1, i32* %11, align 4
  br label %211

211:                                              ; preds = %210, %194
  %212 = call i32 (...) @acline_read()
  %213 = load i32, i32* @acline_status, align 4
  %214 = icmp sgt i32 %213, 128
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  %216 = load i32, i32* @acline_status, align 4
  %217 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i32, i32* @acline_status, align 4
  %220 = icmp eq i32 %219, 130
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load i32, i32* %24, align 4
  %223 = load i32, i32* @MODE_ADAPTIVE, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %251, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %24, align 4
  %227 = load i32, i32* @MODE_HIADAPTIVE, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %251, label %229

229:                                              ; preds = %225, %218
  %230 = load i32, i32* @acline_status, align 4
  %231 = icmp eq i32 %230, 129
  br i1 %231, label %232, label %240

232:                                              ; preds = %229
  %233 = load i32, i32* %25, align 4
  %234 = load i32, i32* @MODE_ADAPTIVE, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %251, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* @MODE_HIADAPTIVE, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %251, label %240

240:                                              ; preds = %236, %229
  %241 = load i32, i32* @acline_status, align 4
  %242 = icmp eq i32 %241, 128
  br i1 %242, label %243, label %327

243:                                              ; preds = %240
  %244 = load i32, i32* %26, align 4
  %245 = load i32, i32* @MODE_ADAPTIVE, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* %26, align 4
  %249 = load i32, i32* @MODE_HIADAPTIVE, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %327

251:                                              ; preds = %247, %243, %236, %232, %225, %221
  store i64 4, i64* %30, align 8
  %252 = load i32, i32* @freq_mib, align 4
  %253 = call i64 @sysctl(i32 %252, i32 4, i32* %12, i64* %30, i32* null, i32 0)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load i32, i32* @vflag, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  br label %260

260:                                              ; preds = %258, %255
  br label %261

261:                                              ; preds = %260, %251
  %262 = load i32, i32* %12, align 4
  %263 = load i32*, i32** %14, align 8
  %264 = load i32, i32* %18, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %262, %268
  br i1 %269, label %270, label %299

270:                                              ; preds = %261
  %271 = load i32, i32* @vflag, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %281

273:                                              ; preds = %270
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %18, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 %279)
  br label %281

281:                                              ; preds = %273, %270
  %282 = load i32*, i32** %14, align 8
  %283 = load i32, i32* %18, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i64 @set_freq(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %281
  %291 = load i32*, i32** %14, align 8
  %292 = load i32, i32* %18, align 4
  %293 = sub nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %291, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %290, %281
  br label %326

299:                                              ; preds = %261
  %300 = load i32, i32* %12, align 4
  %301 = load i32*, i32** %14, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = icmp sgt i32 %300, %303
  br i1 %304, label %305, label %325

305:                                              ; preds = %299
  %306 = load i32, i32* @vflag, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %305
  %309 = load i32*, i32** %14, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 %311)
  br label %313

313:                                              ; preds = %308, %305
  %314 = load i32*, i32** %14, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = call i64 @set_freq(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %313
  %320 = load i32*, i32** %14, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %322)
  br label %324

324:                                              ; preds = %319, %313
  br label %325

325:                                              ; preds = %324, %299
  br label %326

326:                                              ; preds = %325, %298
  br label %327

327:                                              ; preds = %326, %247, %240
  store i32 0, i32* %27, align 4
  br label %328

328:                                              ; preds = %712, %505, %496, %492, %465, %461, %400, %327
  %329 = call i32 @FD_ZERO(i32* %7)
  %330 = load i32, i32* @devd_pipe, align 4
  %331 = icmp sge i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %328
  %333 = load i32, i32* @devd_pipe, align 4
  %334 = call i32 @FD_SET(i32 %333, i32* %7)
  %335 = load i32, i32* @devd_pipe, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %8, align 4
  br label %338

337:                                              ; preds = %328
  store i32 0, i32* %8, align 4
  br label %338

338:                                              ; preds = %337, %332
  %339 = load i32, i32* %23, align 4
  %340 = load i32, i32* @MODE_HIADAPTIVE, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %345, label %342

342:                                              ; preds = %338
  %343 = load i32, i32* %27, align 4
  %344 = icmp slt i32 %343, 120
  br i1 %344, label %345, label %347

345:                                              ; preds = %342, %338
  %346 = load i32, i32* @poll_ival, align 4
  store i32 %346, i32* %28, align 4
  br label %357

347:                                              ; preds = %342
  %348 = load i32, i32* %27, align 4
  %349 = icmp slt i32 %348, 360
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load i32, i32* @poll_ival, align 4
  %352 = mul nsw i32 %351, 2
  store i32 %352, i32* %28, align 4
  br label %356

353:                                              ; preds = %347
  %354 = load i32, i32* @poll_ival, align 4
  %355 = mul nsw i32 %354, 4
  store i32 %355, i32* %28, align 4
  br label %356

356:                                              ; preds = %353, %350
  br label %357

357:                                              ; preds = %356, %345
  %358 = load i32, i32* %28, align 4
  %359 = sdiv i32 %358, 1000000
  %360 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %359, i32* %360, align 4
  %361 = load i32, i32* %28, align 4
  %362 = srem i32 %361, 1000000
  %363 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %362, i32* %363, align 4
  %364 = load i32, i32* %8, align 4
  %365 = call i32 @select(i32 %364, i32* %7, i32* null, i32* %7, %struct.timeval* %6)
  %366 = load i64, i64* @exit_requested, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %381

368:                                              ; preds = %357
  %369 = load i32, i32* @vflag, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %380

371:                                              ; preds = %368
  %372 = load i32, i32* %29, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %371
  %375 = load i32, i32* %29, align 4
  %376 = sdiv i32 %375, 1000
  %377 = load i32, i32* %29, align 4
  %378 = srem i32 %377, 1000
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %376, i32 %378)
  br label %380

380:                                              ; preds = %374, %371, %368
  br label %713

381:                                              ; preds = %357
  %382 = call i32 (...) @acline_read()
  %383 = load i32, i32* @acline_status, align 4
  switch i32 %383, label %390 [
    i32 130, label %384
    i32 129, label %386
    i32 128, label %388
  ]

384:                                              ; preds = %381
  %385 = load i32, i32* %24, align 4
  store i32 %385, i32* %23, align 4
  br label %393

386:                                              ; preds = %381
  %387 = load i32, i32* %25, align 4
  store i32 %387, i32* %23, align 4
  br label %393

388:                                              ; preds = %381
  %389 = load i32, i32* %26, align 4
  store i32 %389, i32* %23, align 4
  br label %393

390:                                              ; preds = %381
  %391 = load i32, i32* @acline_status, align 4
  %392 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %391)
  br label %393

393:                                              ; preds = %390, %388, %386, %384
  %394 = load i32, i32* %27, align 4
  %395 = srem i32 %394, 32
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %407

397:                                              ; preds = %393
  %398 = call i32 (...) @get_freq()
  store i32 %398, i32* %12, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  br label %328

401:                                              ; preds = %397
  %402 = load i32, i32* %12, align 4
  %403 = load i32*, i32** %14, align 8
  %404 = load i32, i32* %18, align 4
  %405 = call i64 @get_freq_id(i32 %402, i32* %403, i32 %404)
  %406 = trunc i64 %405 to i32
  store i32 %406, i32* %15, align 4
  br label %407

407:                                              ; preds = %401, %393
  %408 = load i32, i32* %27, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %27, align 4
  %410 = load i32, i32* @vflag, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %432

412:                                              ; preds = %407
  %413 = load i32*, i32** %17, align 8
  %414 = load i32, i32* %15, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = icmp ne i32 %417, -1
  br i1 %418, label %419, label %431

419:                                              ; preds = %412
  %420 = load i32*, i32** %17, align 8
  %421 = load i32, i32* %15, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @poll_ival, align 4
  %426 = sdiv i32 %425, 1000
  %427 = mul nsw i32 %424, %426
  %428 = sdiv i32 %427, 1000
  %429 = load i32, i32* %29, align 4
  %430 = add nsw i32 %429, %428
  store i32 %430, i32* %29, align 4
  br label %431

431:                                              ; preds = %419, %412
  br label %432

432:                                              ; preds = %431, %407
  %433 = load i32, i32* %23, align 4
  %434 = load i32, i32* @MODE_MIN, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %466

436:                                              ; preds = %432
  %437 = load i32*, i32** %14, align 8
  %438 = load i32, i32* %18, align 4
  %439 = sub nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  %442 = load i32, i32* %441, align 4
  store i32 %442, i32* %11, align 4
  %443 = load i32, i32* %12, align 4
  %444 = load i32, i32* %11, align 4
  %445 = icmp ne i32 %443, %444
  br i1 %445, label %446, label %465

446:                                              ; preds = %436
  %447 = load i32, i32* @vflag, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %457

449:                                              ; preds = %446
  %450 = load i8**, i8*** @modes, align 8
  %451 = load i32, i32* @acline_status, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8*, i8** %450, i64 %452
  %454 = load i8*, i8** %453, align 8
  %455 = load i32, i32* %11, align 4
  %456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0), i8* %454, i32 %455)
  br label %457

457:                                              ; preds = %449, %446
  store i32 0, i32* %27, align 4
  %458 = load i32, i32* %11, align 4
  %459 = call i64 @set_freq(i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = load i32, i32* %11, align 4
  %463 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %462)
  br label %328

464:                                              ; preds = %457
  br label %465

465:                                              ; preds = %464, %436
  br label %328

466:                                              ; preds = %432
  %467 = load i32, i32* %23, align 4
  %468 = load i32, i32* @MODE_MAX, align 4
  %469 = icmp eq i32 %467, %468
  br i1 %469, label %470, label %497

470:                                              ; preds = %466
  %471 = load i32*, i32** %14, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 0
  %473 = load i32, i32* %472, align 4
  store i32 %473, i32* %11, align 4
  %474 = load i32, i32* %12, align 4
  %475 = load i32, i32* %11, align 4
  %476 = icmp ne i32 %474, %475
  br i1 %476, label %477, label %496

477:                                              ; preds = %470
  %478 = load i32, i32* @vflag, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %488

480:                                              ; preds = %477
  %481 = load i8**, i8*** @modes, align 8
  %482 = load i32, i32* @acline_status, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i8*, i8** %481, i64 %483
  %485 = load i8*, i8** %484, align 8
  %486 = load i32, i32* %11, align 4
  %487 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0), i8* %485, i32 %486)
  br label %488

488:                                              ; preds = %480, %477
  store i32 0, i32* %27, align 4
  %489 = load i32, i32* %11, align 4
  %490 = call i64 @set_freq(i32 %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %495

492:                                              ; preds = %488
  %493 = load i32, i32* %11, align 4
  %494 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %493)
  br label %328

495:                                              ; preds = %488
  br label %496

496:                                              ; preds = %495, %470
  br label %328

497:                                              ; preds = %466
  %498 = call i64 @read_usage_times(i32* %19)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %506

500:                                              ; preds = %497
  %501 = load i32, i32* @vflag, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %500
  %504 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  br label %505

505:                                              ; preds = %503, %500
  br label %328

506:                                              ; preds = %497
  %507 = load i32, i32* %23, align 4
  %508 = load i32, i32* @MODE_ADAPTIVE, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %584

510:                                              ; preds = %506
  %511 = load i32, i32* %19, align 4
  %512 = load i32, i32* @cpu_running_mark, align 4
  %513 = icmp sgt i32 %511, %512
  br i1 %513, label %514, label %542

514:                                              ; preds = %510
  %515 = load i32, i32* %19, align 4
  %516 = icmp sgt i32 %515, 95
  br i1 %516, label %522, label %517

517:                                              ; preds = %514
  %518 = load i32, i32* %19, align 4
  %519 = load i32, i32* @cpu_running_mark, align 4
  %520 = mul nsw i32 %519, 2
  %521 = icmp sgt i32 %518, %520
  br i1 %521, label %522, label %525

522:                                              ; preds = %517, %514
  %523 = load i32, i32* %11, align 4
  %524 = mul nsw i32 %523, 2
  store i32 %524, i32* %11, align 4
  br label %531

525:                                              ; preds = %517
  %526 = load i32, i32* %11, align 4
  %527 = load i32, i32* %19, align 4
  %528 = mul nsw i32 %526, %527
  %529 = load i32, i32* @cpu_running_mark, align 4
  %530 = sdiv i32 %528, %529
  store i32 %530, i32* %11, align 4
  br label %531

531:                                              ; preds = %525, %522
  %532 = load i32, i32* %11, align 4
  %533 = load i32*, i32** %14, align 8
  %534 = getelementptr inbounds i32, i32* %533, i64 0
  %535 = load i32, i32* %534, align 4
  %536 = icmp sgt i32 %532, %535
  br i1 %536, label %537, label %541

537:                                              ; preds = %531
  %538 = load i32*, i32** %14, align 8
  %539 = getelementptr inbounds i32, i32* %538, i64 0
  %540 = load i32, i32* %539, align 4
  store i32 %540, i32* %11, align 4
  br label %541

541:                                              ; preds = %537, %531
  br label %583

542:                                              ; preds = %510
  %543 = load i32, i32* %19, align 4
  %544 = load i32, i32* @cpu_idle_mark, align 4
  %545 = icmp slt i32 %543, %544
  br i1 %545, label %546, label %582

546:                                              ; preds = %542
  %547 = load i32, i32* %12, align 4
  %548 = load i32, i32* %19, align 4
  %549 = mul nsw i32 %547, %548
  %550 = load i32*, i32** %14, align 8
  %551 = load i32, i32* %11, align 4
  %552 = mul nsw i32 %551, 7
  %553 = sdiv i32 %552, 8
  %554 = load i32*, i32** %14, align 8
  %555 = load i32, i32* %18, align 4
  %556 = call i64 @get_freq_id(i32 %553, i32* %554, i32 %555)
  %557 = getelementptr inbounds i32, i32* %550, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* @cpu_running_mark, align 4
  %560 = mul nsw i32 %558, %559
  %561 = icmp slt i32 %549, %560
  br i1 %561, label %562, label %582

562:                                              ; preds = %546
  %563 = load i32, i32* %11, align 4
  %564 = mul nsw i32 %563, 7
  %565 = sdiv i32 %564, 8
  store i32 %565, i32* %11, align 4
  %566 = load i32, i32* %11, align 4
  %567 = load i32*, i32** %14, align 8
  %568 = load i32, i32* %18, align 4
  %569 = sub nsw i32 %568, 1
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %567, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = icmp slt i32 %566, %572
  br i1 %573, label %574, label %581

574:                                              ; preds = %562
  %575 = load i32*, i32** %14, align 8
  %576 = load i32, i32* %18, align 4
  %577 = sub nsw i32 %576, 1
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %575, i64 %578
  %580 = load i32, i32* %579, align 4
  store i32 %580, i32* %11, align 4
  br label %581

581:                                              ; preds = %574, %562
  br label %582

582:                                              ; preds = %581, %546, %542
  br label %583

583:                                              ; preds = %582, %541
  br label %663

584:                                              ; preds = %506
  %585 = load i32, i32* %19, align 4
  %586 = load i32, i32* @cpu_running_mark, align 4
  %587 = sdiv i32 %586, 2
  %588 = icmp sgt i32 %585, %587
  br i1 %588, label %589, label %619

589:                                              ; preds = %584
  %590 = load i32, i32* %19, align 4
  %591 = icmp sgt i32 %590, 95
  br i1 %591, label %596, label %592

592:                                              ; preds = %589
  %593 = load i32, i32* %19, align 4
  %594 = load i32, i32* @cpu_running_mark, align 4
  %595 = icmp sgt i32 %593, %594
  br i1 %595, label %596, label %599

596:                                              ; preds = %592, %589
  %597 = load i32, i32* %11, align 4
  %598 = mul nsw i32 %597, 4
  store i32 %598, i32* %11, align 4
  br label %606

599:                                              ; preds = %592
  %600 = load i32, i32* %11, align 4
  %601 = load i32, i32* %19, align 4
  %602 = mul nsw i32 %600, %601
  %603 = mul nsw i32 %602, 2
  %604 = load i32, i32* @cpu_running_mark, align 4
  %605 = sdiv i32 %603, %604
  store i32 %605, i32* %11, align 4
  br label %606

606:                                              ; preds = %599, %596
  %607 = load i32, i32* %11, align 4
  %608 = load i32*, i32** %14, align 8
  %609 = getelementptr inbounds i32, i32* %608, i64 0
  %610 = load i32, i32* %609, align 4
  %611 = mul nsw i32 %610, 2
  %612 = icmp sgt i32 %607, %611
  br i1 %612, label %613, label %618

613:                                              ; preds = %606
  %614 = load i32*, i32** %14, align 8
  %615 = getelementptr inbounds i32, i32* %614, i64 0
  %616 = load i32, i32* %615, align 4
  %617 = mul nsw i32 %616, 2
  store i32 %617, i32* %11, align 4
  br label %618

618:                                              ; preds = %613, %606
  br label %662

619:                                              ; preds = %584
  %620 = load i32, i32* %19, align 4
  %621 = load i32, i32* @cpu_idle_mark, align 4
  %622 = sdiv i32 %621, 2
  %623 = icmp slt i32 %620, %622
  br i1 %623, label %624, label %661

624:                                              ; preds = %619
  %625 = load i32, i32* %12, align 4
  %626 = load i32, i32* %19, align 4
  %627 = mul nsw i32 %625, %626
  %628 = load i32*, i32** %14, align 8
  %629 = load i32, i32* %11, align 4
  %630 = mul nsw i32 %629, 31
  %631 = sdiv i32 %630, 32
  %632 = load i32*, i32** %14, align 8
  %633 = load i32, i32* %18, align 4
  %634 = call i64 @get_freq_id(i32 %631, i32* %632, i32 %633)
  %635 = getelementptr inbounds i32, i32* %628, i64 %634
  %636 = load i32, i32* %635, align 4
  %637 = load i32, i32* @cpu_running_mark, align 4
  %638 = mul nsw i32 %636, %637
  %639 = sdiv i32 %638, 2
  %640 = icmp slt i32 %627, %639
  br i1 %640, label %641, label %661

641:                                              ; preds = %624
  %642 = load i32, i32* %11, align 4
  %643 = mul nsw i32 %642, 31
  %644 = sdiv i32 %643, 32
  store i32 %644, i32* %11, align 4
  %645 = load i32, i32* %11, align 4
  %646 = load i32*, i32** %14, align 8
  %647 = load i32, i32* %18, align 4
  %648 = sub nsw i32 %647, 1
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32, i32* %646, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = icmp slt i32 %645, %651
  br i1 %652, label %653, label %660

653:                                              ; preds = %641
  %654 = load i32*, i32** %14, align 8
  %655 = load i32, i32* %18, align 4
  %656 = sub nsw i32 %655, 1
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i32, i32* %654, i64 %657
  %659 = load i32, i32* %658, align 4
  store i32 %659, i32* %11, align 4
  br label %660

660:                                              ; preds = %653, %641
  br label %661

661:                                              ; preds = %660, %624, %619
  br label %662

662:                                              ; preds = %661, %618
  br label %663

663:                                              ; preds = %662, %583
  %664 = load i32, i32* @vflag, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %672

666:                                              ; preds = %663
  %667 = load i32, i32* %19, align 4
  %668 = load i32, i32* %12, align 4
  %669 = load i32, i32* %15, align 4
  %670 = load i32, i32* %11, align 4
  %671 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.25, i64 0, i64 0), i32 %667, i32 %668, i32 %669, i32 %670)
  br label %672

672:                                              ; preds = %666, %663
  %673 = load i32, i32* %11, align 4
  %674 = load i32*, i32** %14, align 8
  %675 = load i32, i32* %18, align 4
  %676 = call i64 @get_freq_id(i32 %673, i32* %674, i32 %675)
  %677 = trunc i64 %676 to i32
  store i32 %677, i32* %16, align 4
  %678 = load i32, i32* %15, align 4
  %679 = load i32, i32* %16, align 4
  %680 = icmp ne i32 %678, %679
  br i1 %680, label %681, label %712

681:                                              ; preds = %672
  %682 = load i32, i32* @vflag, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %696

684:                                              ; preds = %681
  %685 = load i32*, i32** %14, align 8
  %686 = load i32, i32* %15, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %685, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = load i32*, i32** %14, align 8
  %691 = load i32, i32* %16, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, i32* %690, i64 %692
  %694 = load i32, i32* %693, align 4
  %695 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0), i32 %689, i32 %694)
  br label %696

696:                                              ; preds = %684, %681
  store i32 0, i32* %27, align 4
  %697 = load i32*, i32** %14, align 8
  %698 = load i32, i32* %16, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32, i32* %697, i64 %699
  %701 = load i32, i32* %700, align 4
  %702 = call i64 @set_freq(i32 %701)
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %711

704:                                              ; preds = %696
  %705 = load i32*, i32** %14, align 8
  %706 = load i32, i32* %16, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i32, i32* %705, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 %709)
  br label %711

711:                                              ; preds = %704, %696
  br label %712

712:                                              ; preds = %711, %672
  br label %328

713:                                              ; preds = %380
  %714 = load i32, i32* %13, align 4
  %715 = call i64 @set_freq(i32 %714)
  %716 = icmp ne i64 %715, 0
  br i1 %716, label %717, label %720

717:                                              ; preds = %713
  %718 = load i32, i32* %13, align 4
  %719 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 %718)
  br label %720

720:                                              ; preds = %717, %713
  %721 = load i32*, i32** %14, align 8
  %722 = call i32 @free(i32* %721)
  %723 = load i32*, i32** %17, align 8
  %724 = call i32 @free(i32* %723)
  %725 = call i32 (...) @devd_close()
  %726 = load i32, i32* @vflag, align 4
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %731, label %728

728:                                              ; preds = %720
  %729 = load %struct.pidfh*, %struct.pidfh** %9, align 8
  %730 = call i32 @pidfile_remove(%struct.pidfh* %729)
  br label %731

731:                                              ; preds = %728, %720
  %732 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_mode(i8*, i32*, i32) #1

declare dso_local i32 @parse_acline_mode(i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @sysctlnametomib(i8*, i32, i64*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @read_usage_times(i32*) #1

declare dso_local i64 @read_freqs(i32*, i32**, i32**, i32, i32) #1

declare dso_local %struct.pidfh* @pidfile_open(i8*, i32, i32*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pidfile_write(%struct.pidfh*) #1

declare dso_local i32 @acline_init(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @get_freq(...) #1

declare dso_local i64 @get_freq_id(i32, i32*, i32) #1

declare dso_local i32 @acline_read(...) #1

declare dso_local i64 @sysctl(i32, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @set_freq(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @devd_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
