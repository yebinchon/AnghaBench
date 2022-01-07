; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/time/extr_time.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/time/extr_time.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.rlimit = type { i64, i64 }
%struct.rusage = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32* }

@stderr = common dso_local global i32* null, align 8
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@decimal_point = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@hflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ahlo:p\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"we\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_IONBF = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@before_ts = common dso_local global %struct.timespec zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@siginfo_recvd = common dso_local global i64 0, align 8
@SIGINFO = common dso_local global i32 0, align 4
@siginfo = common dso_local global i32 0, align 4
@RUSAGE_CHILDREN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"command terminated abnormally\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%10ld  %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"maximum resident set size\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"average shared memory size\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"average unshared data size\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"average unshared stack size\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"page reclaims\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"page faults\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"swaps\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"block input operations\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"block output operations\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"messages sent\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"messages received\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"signals received\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"voluntary context switches\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"involuntary context switches\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@RLIMIT_CORE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"setrlimit\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

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
  %11 = alloca i64, align 8
  %12 = alloca %struct.rlimit, align 8
  %13 = alloca %struct.rusage, align 4
  %14 = alloca %struct.timespec, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %15, align 8
  %19 = load i32*, i32** @stderr, align 8
  store i32* %19, i32** %16, align 8
  %20 = load i32, i32* @LC_NUMERIC, align 4
  %21 = call i32 @setlocale(i32 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %22 = call %struct.TYPE_6__* (...) @localeconv()
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @decimal_point, align 4
  store i32 0, i32* @pflag, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* @hflag, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %45, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = trunc i32 %33 to i8
  %35 = sext i8 %34 to i32
  switch i32 %35, label %43 [
    i32 97, label %36
    i32 104, label %37
    i32 108, label %38
    i32 111, label %39
    i32 112, label %41
    i32 63, label %42
  ]

36:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %45

37:                                               ; preds = %32
  store i32 1, i32* @hflag, align 4
  br label %45

38:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %15, align 8
  br label %45

41:                                               ; preds = %32
  store i32 1, i32* @pflag, align 4
  br label %45

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %32, %42
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %41, %39, %38, %37, %36
  br label %27

46:                                               ; preds = %27
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = call i32 @exit(i32 0) #3
  unreachable

55:                                               ; preds = %46
  %56 = load i64, i64* @optind, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 %56
  store i8** %58, i8*** %5, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load i8*, i8** %15, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %67 = call i32* @fopen(i8* %62, i8* %66)
  store i32* %67, i32** %16, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* @_IONBF, align 4
  %75 = call i32 @setvbuf(i32* %73, i8* null, i32 %74, i64 0)
  br label %76

76:                                               ; preds = %72, %55
  %77 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %78 = call i64 @clock_gettime(i32 %77, %struct.timespec* @before_ts)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %76
  %83 = call i64 (...) @fork()
  store i64 %83, i64* %11, align 8
  switch i64 %83, label %99 [
    i64 -1, label %84
    i64 0, label %86
  ]

84:                                               ; preds = %82
  %85 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %84
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = call i32 @execvp(i8* %88, i8** %89)
  %91 = load i32, i32* @errno, align 4
  %92 = load i32, i32* @ENOENT, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 127, i32 126
  %96 = load i8**, i8*** %5, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, ...) @err(i32 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %86, %82
  %100 = load i32, i32* @SIGINT, align 4
  %101 = load i32, i32* @SIG_IGN, align 4
  %102 = call i64 @signal(i32 %100, i32 %101)
  %103 = load i32, i32* @SIGQUIT, align 4
  %104 = load i32, i32* @SIG_IGN, align 4
  %105 = call i64 @signal(i32 %103, i32 %104)
  store i64 0, i64* @siginfo_recvd, align 8
  %106 = load i32, i32* @SIGINFO, align 4
  %107 = load i32, i32* @siginfo, align 4
  %108 = call i64 @signal(i32 %106, i32 %107)
  %109 = load i32, i32* @SIGINFO, align 4
  %110 = call i32 @siginterrupt(i32 %109, i32 1)
  br label %111

111:                                              ; preds = %130, %99
  %112 = load i64, i64* %11, align 8
  %113 = call i64 @wait4(i64 %112, i32* %9, i32 0, %struct.rusage* %13)
  %114 = load i64, i64* %11, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i64, i64* @siginfo_recvd, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  store i64 0, i64* @siginfo_recvd, align 8
  %120 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %121 = call i64 @clock_gettime(i32 %120, %struct.timespec* %14)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %119
  %126 = load i32, i32* @RUSAGE_CHILDREN, align 4
  %127 = call i32 @getrusage(i32 %126, %struct.rusage* %13)
  %128 = load i32*, i32** @stdout, align 8
  %129 = call i32 @showtime(i32* %128, %struct.timespec* @before_ts, %struct.timespec* %14, %struct.rusage* %13)
  br label %130

130:                                              ; preds = %125, %116
  br label %111

131:                                              ; preds = %111
  %132 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %133 = call i64 @clock_gettime(i32 %132, %struct.timespec* %14)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %131
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @WIFEXITED(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i32, i32* %9, align 4
  %145 = call i64 @WIFSIGNALED(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @WTERMSIG(i32 %148)
  br label %151

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150, %147
  %152 = phi i32 [ %149, %147 ], [ 0, %150 ]
  store i32 %152, i32* %10, align 4
  %153 = load i32*, i32** %16, align 8
  %154 = call i32 @showtime(i32* %153, %struct.timespec* @before_ts, %struct.timespec* %14, %struct.rusage* %13)
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %245

157:                                              ; preds = %151
  %158 = call i32 (...) @getstathz()
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 15
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 14
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %162, %165
  %167 = mul nsw i32 %159, %166
  %168 = load i32, i32* %17, align 4
  %169 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 15
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 14
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %171, %174
  %176 = mul nsw i32 %168, %175
  %177 = sdiv i32 %176, 1000000
  %178 = add nsw i32 %167, %177
  store i32 %178, i32* %18, align 4
  %179 = load i32, i32* %18, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %157
  store i32 1, i32* %18, align 4
  br label %182

182:                                              ; preds = %181, %157
  %183 = load i32*, i32** %16, align 8
  %184 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @fprintf(i32* %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %187 = load i32*, i32** %16, align 8
  %188 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %18, align 4
  %191 = sdiv i32 %189, %190
  %192 = call i32 @fprintf(i32* %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %191, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %193 = load i32*, i32** %16, align 8
  %194 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sdiv i32 %195, %196
  %198 = call i32 @fprintf(i32* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %197, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %199 = load i32*, i32** %16, align 8
  %200 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %18, align 4
  %203 = sdiv i32 %201, %202
  %204 = call i32 @fprintf(i32* %199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %205 = load i32*, i32** %16, align 8
  %206 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @fprintf(i32* %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %207, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %209 = load i32*, i32** %16, align 8
  %210 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @fprintf(i32* %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %213 = load i32*, i32** %16, align 8
  %214 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @fprintf(i32* %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %217 = load i32*, i32** %16, align 8
  %218 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 7
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @fprintf(i32* %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %219, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %221 = load i32*, i32** %16, align 8
  %222 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @fprintf(i32* %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %225 = load i32*, i32** %16, align 8
  %226 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @fprintf(i32* %225, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %227, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %229 = load i32*, i32** %16, align 8
  %230 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 10
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @fprintf(i32* %229, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %233 = load i32*, i32** %16, align 8
  %234 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 11
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @fprintf(i32* %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %235, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %237 = load i32*, i32** %16, align 8
  %238 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 12
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @fprintf(i32* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %239, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %241 = load i32*, i32** %16, align 8
  %242 = getelementptr inbounds %struct.rusage, %struct.rusage* %13, i32 0, i32 13
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @fprintf(i32* %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %243, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  br label %245

245:                                              ; preds = %182, %151
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %245
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* @SIG_DFL, align 4
  %251 = call i64 @signal(i32 %249, i32 %250)
  %252 = load i64, i64* @SIG_ERR, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %248
  %255 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %268

256:                                              ; preds = %248
  %257 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %12, i32 0, i32 0
  store i64 0, i64* %257, align 8
  %258 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %12, i32 0, i32 1
  store i64 0, i64* %258, align 8
  %259 = load i32, i32* @RLIMIT_CORE, align 4
  %260 = call i32 @setrlimit(i32 %259, %struct.rlimit* %12)
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  br label %264

264:                                              ; preds = %262, %256
  %265 = call i32 (...) @getpid()
  %266 = load i32, i32* %10, align 4
  %267 = call i32 @kill(i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %254
  br label %269

269:                                              ; preds = %268, %245
  %270 = load i32, i32* %9, align 4
  %271 = call i64 @WIFEXITED(i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @WEXITSTATUS(i32 %274)
  br label %278

276:                                              ; preds = %269
  %277 = load i32, i32* @EXIT_FAILURE, align 4
  br label %278

278:                                              ; preds = %276, %273
  %279 = phi i32 [ %275, %273 ], [ %277, %276 ]
  %280 = call i32 @exit(i32 %279) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @localeconv(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @setvbuf(i32*, i8*, i32, i64) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @siginterrupt(i32, i32) #1

declare dso_local i64 @wait4(i64, i32*, i32, %struct.rusage*) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @showtime(i32*, %struct.timespec*, %struct.timespec*, %struct.rusage*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @getstathz(...) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
