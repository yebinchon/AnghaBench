; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/timeout/extr_timeout.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/timeout/extr_timeout.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }
%struct.procctl_reaper_status = type { i64, i32, i64 }
%struct.procctl_reaper_kill = type { i64, i32, i64 }
%struct.option = type { i8*, i32*, i32, i32 }

@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"preserve-status\00", align 1
@no_argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"foreground\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"kill-after\00", align 1
@required_argument = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"+k:s:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@P_PID = common dso_local global i32 0, align 4
@PROC_REAP_ACQUIRE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Fail to acquire the reaper\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"sigaction()\00", align 1
@SIGTTIN = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"fork()\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"exec(%s)\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"sigprocmask()\00", align 1
@sig_chld = common dso_local global i64 0, align 8
@WNOHANG = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@PROC_REAP_STATUS = common dso_local global i32 0, align 4
@sig_alrm = common dso_local global i64 0, align 8
@PROC_REAP_KILL = common dso_local global i32 0, align 4
@sig_ign = common dso_local global i32 0, align 4
@sig_term = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"waitpid()\00", align 1
@PROC_REAP_RELEASE = common dso_local global i32 0, align 4
@EXIT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sigaction, align 4
  %22 = alloca %struct.procctl_reaper_status, align 8
  %23 = alloca %struct.procctl_reaper_kill, align 8
  %24 = alloca [7 x i32], align 16
  %25 = alloca [6 x %struct.option], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = load i32, i32* @SIGTERM, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %24, i64 0, i64 0
  store i32 -1, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* @SIGTERM, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @SIGINT, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @SIGHUP, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @SIGCHLD, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @SIGALRM, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @SIGQUIT, align 4
  store i32 %39, i32* %38, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store double 0.000000e+00, double* %17, align 8
  %40 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %25, i64 0, i64 0
  %41 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 1
  %43 = load i32, i32* @no_argument, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %42, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 2
  %47 = ptrtoint i32* %9 to i32
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.option, %struct.option* %40, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.option, %struct.option* %40, i64 1
  %50 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 1
  %52 = load i32, i32* @no_argument, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %51, align 8
  %55 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 2
  %56 = ptrtoint i32* %8 to i32
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 3
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.option, %struct.option* %49, i64 1
  %59 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %59, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 1
  %61 = load i32, i32* @required_argument, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %60, align 8
  %64 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %58, i32 0, i32 3
  store i32 107, i32* %65, align 4
  %66 = getelementptr inbounds %struct.option, %struct.option* %58, i64 1
  %67 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %67, align 8
  %68 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 1
  %69 = load i32, i32* @required_argument, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %68, align 8
  %72 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 2
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %66, i32 0, i32 3
  store i32 115, i32* %73, align 4
  %74 = getelementptr inbounds %struct.option, %struct.option* %66, i64 1
  %75 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %75, align 8
  %76 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 1
  %77 = load i32, i32* @no_argument, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** %76, align 8
  %80 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 3
  store i32 104, i32* %81, align 4
  %82 = getelementptr inbounds %struct.option, %struct.option* %74, i64 1
  %83 = bitcast %struct.option* %82 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %83, i8 0, i64 24, i1 false)
  %84 = getelementptr inbounds %struct.option, %struct.option* %82, i32 0, i32 2
  store i32 0, i32* %84, align 8
  br label %85

85:                                               ; preds = %103, %2
  %86 = load i32, i32* %4, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds [6 x %struct.option], [6 x %struct.option]* %25, i64 0, i64 0
  %89 = call i32 @getopt_long(i32 %86, i8** %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.option* %88, i32* null)
  store i32 %89, i32* %6, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  switch i32 %92, label %101 [
    i32 107, label %93
    i32 115, label %96
    i32 0, label %99
    i32 104, label %100
  ]

93:                                               ; preds = %91
  store i32 1, i32* %19, align 4
  %94 = load i8*, i8** @optarg, align 8
  %95 = call double @parse_duration(i8* %94)
  store double %95, double* %17, align 8
  br label %103

96:                                               ; preds = %91
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i32 @parse_signal(i8* %97)
  store i32 %98, i32* %13, align 4
  br label %103

99:                                               ; preds = %91
  br label %103

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %91, %100
  %102 = call i32 (...) @usage()
  br label %103

103:                                              ; preds = %101, %99, %96, %93
  br label %85

104:                                              ; preds = %85
  %105 = load i64, i64* @optind, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  %110 = load i64, i64* @optind, align 8
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 %110
  store i8** %112, i8*** %5, align 8
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = call i32 (...) @usage()
  br label %117

117:                                              ; preds = %115, %104
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 0
  %120 = load i8*, i8** %119, align 8
  %121 = call double @parse_duration(i8* %120)
  store double %121, double* %16, align 8
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %4, align 4
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i32 1
  store i8** %125, i8*** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %117
  %129 = load i32, i32* @P_PID, align 4
  %130 = call i32 (...) @getpid()
  %131 = load i32, i32* @PROC_REAP_ACQUIRE, align 4
  %132 = call i32 @procctl(i32 %129, i32 %130, i32 %131, %struct.procctl_reaper_status* null)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* @EX_OSERR, align 4
  %136 = call i32 (i32, i8*, ...) @err(i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %128
  br label %138

138:                                              ; preds = %137, %117
  %139 = call i32 @memset(%struct.sigaction* %21, i32 0, i32 12)
  %140 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 0
  %141 = call i32 @sigemptyset(i32* %140)
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @SIGKILL, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* @SIGSTOP, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %13, align 4
  %151 = getelementptr inbounds [7 x i32], [7 x i32]* %24, i64 0, i64 0
  store i32 %150, i32* %151, align 16
  br label %152

152:                                              ; preds = %149, %145, %138
  store i64 0, i64* %7, align 8
  br label %153

153:                                              ; preds = %162, %152
  %154 = load i64, i64* %7, align 8
  %155 = icmp ult i64 %154, 7
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 0
  %158 = load i64, i64* %7, align 8
  %159 = getelementptr inbounds [7 x i32], [7 x i32]* %24, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @sigaddset(i32* %157, i32 %160)
  br label %162

162:                                              ; preds = %156
  %163 = load i64, i64* %7, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %7, align 8
  br label %153

165:                                              ; preds = %153
  %166 = load i32, i32* @sig_handler, align 4
  %167 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 2
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* @SA_RESTART, align 4
  %169 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 1
  store i32 %168, i32* %169, align 4
  store i64 0, i64* %7, align 8
  br label %170

170:                                              ; preds = %193, %165
  %171 = load i64, i64* %7, align 8
  %172 = icmp ult i64 %171, 7
  br i1 %172, label %173, label %196

173:                                              ; preds = %170
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds [7 x i32], [7 x i32]* %24, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, -1
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load i64, i64* %7, align 8
  %180 = getelementptr inbounds [7 x i32], [7 x i32]* %24, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load i64, i64* %7, align 8
  %185 = getelementptr inbounds [7 x i32], [7 x i32]* %24, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @sigaction(i32 %186, %struct.sigaction* %21, i32* null)
  %188 = icmp eq i32 %187, -1
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i32, i32* @EX_OSERR, align 4
  %191 = call i32 (i32, i8*, ...) @err(i32 %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %183, %178, %173
  br label %193

193:                                              ; preds = %192
  %194 = load i64, i64* %7, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %7, align 8
  br label %170

196:                                              ; preds = %170
  %197 = load i32, i32* @SIGTTIN, align 4
  %198 = load i32, i32* @SIG_IGN, align 4
  %199 = call i32 @signal(i32 %197, i32 %198)
  %200 = load i32, i32* @SIGTTOU, align 4
  %201 = load i32, i32* @SIG_IGN, align 4
  %202 = call i32 @signal(i32 %200, i32 %201)
  %203 = call i32 (...) @fork()
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %209

206:                                              ; preds = %196
  %207 = load i32, i32* @EX_OSERR, align 4
  %208 = call i32 (i32, i8*, ...) @err(i32 %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %243

209:                                              ; preds = %196
  %210 = load i32, i32* %14, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %242

212:                                              ; preds = %209
  %213 = load i32, i32* @SIGTTIN, align 4
  %214 = load i32, i32* @SIG_DFL, align 4
  %215 = call i32 @signal(i32 %213, i32 %214)
  %216 = load i32, i32* @SIGTTOU, align 4
  %217 = load i32, i32* @SIG_DFL, align 4
  %218 = call i32 @signal(i32 %216, i32 %217)
  %219 = load i8**, i8*** %5, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** %5, align 8
  %223 = call i32 @execvp(i8* %221, i8** %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %241

226:                                              ; preds = %212
  %227 = load i64, i64* @errno, align 8
  %228 = load i64, i64* @ENOENT, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = load i8**, i8*** %5, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 (i32, i8*, ...) @err(i32 127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %233)
  br label %240

235:                                              ; preds = %226
  %236 = load i8**, i8*** %5, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 (i32, i8*, ...) @err(i32 126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %238)
  br label %240

240:                                              ; preds = %235, %230
  br label %241

241:                                              ; preds = %240, %212
  br label %242

242:                                              ; preds = %241, %209
  br label %243

243:                                              ; preds = %242, %206
  %244 = load i32, i32* @SIG_BLOCK, align 4
  %245 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 0
  %246 = call i32 @sigprocmask(i32 %244, i32* %245, i32* null)
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i32, i32* @EX_OSERR, align 4
  %250 = call i32 (i32, i8*, ...) @err(i32 %249, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %243
  %252 = load double, double* %16, align 8
  %253 = call i32 @set_interval(double %252)
  br label %254

254:                                              ; preds = %362, %251
  %255 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 0
  %256 = call i32 @sigemptyset(i32* %255)
  %257 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 0
  %258 = call i32 @sigsuspend(i32* %257)
  %259 = load i64, i64* @sig_chld, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %302

261:                                              ; preds = %254
  store i64 0, i64* @sig_chld, align 8
  br label %262

262:                                              ; preds = %282, %273, %261
  %263 = load i32, i32* @WNOHANG, align 4
  %264 = call i32 @waitpid(i32 -1, i32* %12, i32 %263)
  store i32 %264, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %283

266:                                              ; preds = %262
  %267 = load i32, i32* %15, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = load i64, i64* @errno, align 8
  %271 = load i64, i64* @EINTR, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  br label %262

274:                                              ; preds = %269
  br label %283

275:                                              ; preds = %266
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %14, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i32, i32* %12, align 4
  store i32 %280, i32* %11, align 4
  store i32 1, i32* %20, align 4
  br label %281

281:                                              ; preds = %279, %275
  br label %282

282:                                              ; preds = %281
  br label %262

283:                                              ; preds = %274, %262
  %284 = load i32, i32* %20, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  br label %363

290:                                              ; preds = %286
  %291 = load i32, i32* @P_PID, align 4
  %292 = call i32 (...) @getpid()
  %293 = load i32, i32* @PROC_REAP_STATUS, align 4
  %294 = call i32 @procctl(i32 %291, i32 %292, i32 %293, %struct.procctl_reaper_status* %22)
  %295 = getelementptr inbounds %struct.procctl_reaper_status, %struct.procctl_reaper_status* %22, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  br label %363

299:                                              ; preds = %290
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300, %283
  br label %362

302:                                              ; preds = %254
  %303 = load i64, i64* @sig_alrm, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %331

305:                                              ; preds = %302
  store i64 0, i64* @sig_alrm, align 8
  store i32 1, i32* %18, align 4
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %317, label %308

308:                                              ; preds = %305
  %309 = load i32, i32* %13, align 4
  %310 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %23, i32 0, i32 1
  store i32 %309, i32* %310, align 8
  %311 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %23, i32 0, i32 2
  store i64 0, i64* %311, align 8
  %312 = load i32, i32* @P_PID, align 4
  %313 = call i32 (...) @getpid()
  %314 = load i32, i32* @PROC_REAP_KILL, align 4
  %315 = bitcast %struct.procctl_reaper_kill* %23 to %struct.procctl_reaper_status*
  %316 = call i32 @procctl(i32 %312, i32 %313, i32 %314, %struct.procctl_reaper_status* %315)
  br label %321

317:                                              ; preds = %305
  %318 = load i32, i32* %14, align 4
  %319 = load i32, i32* %13, align 4
  %320 = call i32 @kill(i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %317, %308
  %322 = load i32, i32* %19, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load double, double* %17, align 8
  %326 = call i32 @set_interval(double %325)
  store double 0.000000e+00, double* %17, align 8
  %327 = load i32, i32* %13, align 4
  store i32 %327, i32* @sig_ign, align 4
  %328 = load i32, i32* @SIGKILL, align 4
  store i32 %328, i32* %13, align 4
  br label %330

329:                                              ; preds = %321
  br label %363

330:                                              ; preds = %324
  br label %361

331:                                              ; preds = %302
  %332 = load i32, i32* @sig_term, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %360

334:                                              ; preds = %331
  %335 = load i32, i32* %8, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %346, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* @sig_term, align 4
  %339 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %23, i32 0, i32 1
  store i32 %338, i32* %339, align 8
  %340 = getelementptr inbounds %struct.procctl_reaper_kill, %struct.procctl_reaper_kill* %23, i32 0, i32 2
  store i64 0, i64* %340, align 8
  %341 = load i32, i32* @P_PID, align 4
  %342 = call i32 (...) @getpid()
  %343 = load i32, i32* @PROC_REAP_KILL, align 4
  %344 = bitcast %struct.procctl_reaper_kill* %23 to %struct.procctl_reaper_status*
  %345 = call i32 @procctl(i32 %341, i32 %342, i32 %343, %struct.procctl_reaper_status* %344)
  br label %350

346:                                              ; preds = %334
  %347 = load i32, i32* %14, align 4
  %348 = load i32, i32* @sig_term, align 4
  %349 = call i32 @kill(i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %346, %337
  %351 = load i32, i32* %19, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %350
  %354 = load double, double* %17, align 8
  %355 = call i32 @set_interval(double %354)
  store double 0.000000e+00, double* %17, align 8
  %356 = load i32, i32* %13, align 4
  store i32 %356, i32* @sig_ign, align 4
  %357 = load i32, i32* @SIGKILL, align 4
  store i32 %357, i32* %13, align 4
  br label %359

358:                                              ; preds = %350
  br label %363

359:                                              ; preds = %353
  br label %360

360:                                              ; preds = %359, %331
  br label %361

361:                                              ; preds = %360, %330
  br label %362

362:                                              ; preds = %361, %301
  br label %254

363:                                              ; preds = %358, %329, %298, %289
  br label %364

364:                                              ; preds = %379, %363
  %365 = load i32, i32* %20, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %364
  %368 = call i32 @wait(i32* %11)
  %369 = icmp eq i32 %368, -1
  br label %370

370:                                              ; preds = %367, %364
  %371 = phi i1 [ false, %364 ], [ %369, %367 ]
  br i1 %371, label %372, label %380

372:                                              ; preds = %370
  %373 = load i64, i64* @errno, align 8
  %374 = load i64, i64* @EINTR, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %372
  %377 = load i32, i32* @EX_OSERR, align 4
  %378 = call i32 (i32, i8*, ...) @err(i32 %377, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %379

379:                                              ; preds = %376, %372
  br label %364

380:                                              ; preds = %370
  %381 = load i32, i32* %8, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* @P_PID, align 4
  %385 = call i32 (...) @getpid()
  %386 = load i32, i32* @PROC_REAP_RELEASE, align 4
  %387 = call i32 @procctl(i32 %384, i32 %385, i32 %386, %struct.procctl_reaper_status* null)
  br label %388

388:                                              ; preds = %383, %380
  %389 = load i32, i32* %11, align 4
  %390 = call i32 @WEXITSTATUS(i32 %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load i32, i32* %11, align 4
  %394 = call i32 @WEXITSTATUS(i32 %393)
  store i32 %394, i32* %11, align 4
  br label %404

395:                                              ; preds = %388
  %396 = load i32, i32* %11, align 4
  %397 = call i64 @WIFSIGNALED(i32 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load i32, i32* %11, align 4
  %401 = call i32 @WTERMSIG(i32 %400)
  %402 = add nsw i32 128, %401
  store i32 %402, i32* %11, align 4
  br label %403

403:                                              ; preds = %399, %395
  br label %404

404:                                              ; preds = %403, %392
  %405 = load i32, i32* %18, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %404
  %408 = load i32, i32* %9, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* @EXIT_TIMEOUT, align 4
  store i32 %411, i32* %11, align 4
  br label %412

412:                                              ; preds = %410, %407, %404
  %413 = load i32, i32* %11, align 4
  ret i32 %413
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local double @parse_duration(i8*) #2

declare dso_local i32 @parse_signal(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @procctl(i32, i32, i32, %struct.procctl_reaper_status*) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @set_interval(double) #2

declare dso_local i32 @sigsuspend(i32*) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i32 @wait(i32*) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

declare dso_local i64 @WIFSIGNALED(i32) #2

declare dso_local i32 @WTERMSIG(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
