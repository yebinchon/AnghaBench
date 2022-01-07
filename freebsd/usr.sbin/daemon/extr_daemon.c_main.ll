; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_params = type { i32, i32, i32, i32, i32, i32 }
%struct.pidfh = type { i32 }
%struct.sigaction = type { i32, i32, i32, i32, i32, i32 }

@__const.main.pfd = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cfSp:P:ru:o:s:l:t:l:m:R:T:\00", align 1
@optarg = common dso_local global i8* null, align 8
@facilitynames = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"unrecognized syslog facility\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"unrecognized listening mask\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid restart delay\00", align 1
@prioritynames = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unrecognized syslog priority\00", align 1
@optind = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@handle_term = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@handle_chld = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"sigprocmask\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@MADV_PROTECT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@child_gone = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@SIG_UNBLOCK = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"sigprogmask\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dup2\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@terminate = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
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
  %22 = alloca %struct.log_params, align 4
  %23 = alloca [2 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.pidfh*, align 8
  %29 = alloca %struct.pidfh*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.sigaction, align 4
  %32 = alloca %struct.sigaction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %33 = bitcast [2 x i32]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast ([2 x i32]* @__const.main.pfd to i8*), i64 8, i1 false)
  store i32 -1, i32* %24, align 4
  %34 = bitcast %struct.log_params* %22 to %struct.sigaction*
  %35 = call i32 @memset(%struct.sigaction* %34, i32 0, i32 24)
  %36 = load i32, i32* @STDOUT_FILENO, align 4
  %37 = load i32, i32* @STDERR_FILENO, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %25, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %39 = load i32, i32* @LOG_NOTICE, align 4
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* @LOG_DAEMON, align 4
  store i32 %40, i32* %27, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %8, align 8
  br label %41

41:                                               ; preds = %111, %2
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @getopt(i32 %42, i8** %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %12, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %112

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %109 [
    i32 99, label %48
    i32 102, label %49
    i32 108, label %50
    i32 109, label %59
    i32 111, label %74
    i32 112, label %76
    i32 80, label %78
    i32 114, label %80
    i32 82, label %81
    i32 115, label %93
    i32 83, label %102
    i32 116, label %103
    i32 84, label %105
    i32 117, label %107
  ]

48:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %111

49:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %111

50:                                               ; preds = %46
  %51 = load i8*, i8** @optarg, align 8
  %52 = load i32, i32* @facilitynames, align 4
  %53 = call i32 @get_log_mapping(i8* %51, i32 %52)
  store i32 %53, i32* %27, align 4
  %54 = load i32, i32* %27, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @errx(i32 5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %50
  store i32 1, i32* %16, align 4
  br label %111

59:                                               ; preds = %46
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @strtol(i8* %60, i8** %30, i32 10)
  store i32 %61, i32* %25, align 4
  %62 = load i8*, i8** %30, align 8
  %63 = load i8*, i8** @optarg, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %25, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %25, align 4
  %70 = icmp sgt i32 %69, 3
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %65, %59
  %72 = call i32 @errx(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  br label %111

74:                                               ; preds = %46
  %75 = load i8*, i8** @optarg, align 8
  store i8* %75, i8** %10, align 8
  br label %111

76:                                               ; preds = %46
  %77 = load i8*, i8** @optarg, align 8
  store i8* %77, i8** %6, align 8
  br label %111

78:                                               ; preds = %46
  %79 = load i8*, i8** @optarg, align 8
  store i8* %79, i8** %7, align 8
  br label %111

80:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  br label %111

81:                                               ; preds = %46
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 @strtol(i8* %82, i8** %30, i32 0)
  store i32 %83, i32* %15, align 4
  %84 = load i8*, i8** %30, align 8
  %85 = load i8*, i8** @optarg, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %81
  %91 = call i32 @errx(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87
  br label %111

93:                                               ; preds = %46
  %94 = load i8*, i8** @optarg, align 8
  %95 = load i32, i32* @prioritynames, align 4
  %96 = call i32 @get_log_mapping(i8* %94, i32 %95)
  store i32 %96, i32* %26, align 4
  %97 = load i32, i32* %26, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 @errx(i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %93
  store i32 1, i32* %16, align 4
  br label %111

102:                                              ; preds = %46
  store i32 1, i32* %16, align 4
  br label %111

103:                                              ; preds = %46
  %104 = load i8*, i8** @optarg, align 8
  store i8* %104, i8** %8, align 8
  br label %111

105:                                              ; preds = %46
  %106 = load i8*, i8** @optarg, align 8
  store i8* %106, i8** %11, align 8
  store i32 1, i32* %16, align 4
  br label %111

107:                                              ; preds = %46
  %108 = load i8*, i8** @optarg, align 8
  store i8* %108, i8** %9, align 8
  br label %111

109:                                              ; preds = %46
  %110 = call i32 (...) @usage()
  br label %111

111:                                              ; preds = %109, %107, %105, %103, %102, %101, %92, %80, %78, %76, %74, %73, %58, %49, %48
  br label %41

112:                                              ; preds = %41
  %113 = load i64, i64* @optind, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %4, align 4
  %118 = load i64, i64* @optind, align 8
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 %118
  store i8** %120, i8*** %5, align 8
  %121 = load i32, i32* %4, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = call i32 (...) @usage()
  br label %125

125:                                              ; preds = %123, %112
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %8, align 8
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i8*, i8** %10, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* @O_CREAT, align 4
  %138 = load i32, i32* @O_WRONLY, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @O_APPEND, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @O_CLOEXEC, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @open(i8* %136, i32 %143, i32 384)
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %24, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %149

147:                                              ; preds = %135
  %148 = call i32 (i32, i8*, ...) @err(i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %135
  br label %150

150:                                              ; preds = %149, %132
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i8*, i8** %11, align 8
  %155 = load i32, i32* @LOG_PID, align 4
  %156 = load i32, i32* @LOG_NDELAY, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %27, align 4
  %159 = call i32 @openlog(i8* %154, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %153, %150
  store %struct.pidfh* null, %struct.pidfh** %29, align 8
  store %struct.pidfh* null, %struct.pidfh** %28, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @open_pid_files(i8* %161, i8* %162, %struct.pidfh** %29, %struct.pidfh** %28)
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @daemon(i32 %164, i32 %165)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %440

170:                                              ; preds = %160
  %171 = load %struct.pidfh*, %struct.pidfh** %28, align 8
  %172 = call i32 @pidfile_write(%struct.pidfh* %171)
  store i32 -1, i32* @pid, align 4
  %173 = load i8*, i8** %6, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %187, label %175

175:                                              ; preds = %170
  %176 = load i8*, i8** %7, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %187, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %24, align 4
  %183 = icmp ne i32 %182, -1
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %16, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %271

187:                                              ; preds = %184, %181, %178, %175, %170
  %188 = call i32 @memset(%struct.sigaction* %31, i32 0, i32 24)
  %189 = load i32, i32* @handle_term, align 4
  %190 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %31, i32 0, i32 5
  store i32 %189, i32* %190, align 4
  %191 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %31, i32 0, i32 4
  %192 = call i32 @sigemptyset(i32* %191)
  %193 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %31, i32 0, i32 4
  %194 = load i32, i32* @SIGCHLD, align 4
  %195 = call i32 @sigaddset(i32* %193, i32 %194)
  %196 = call i32 @memset(%struct.sigaction* %32, i32 0, i32 24)
  %197 = load i32, i32* @handle_chld, align 4
  %198 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %32, i32 0, i32 5
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %32, i32 0, i32 4
  %200 = call i32 @sigemptyset(i32* %199)
  %201 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %32, i32 0, i32 4
  %202 = load i32, i32* @SIGTERM, align 4
  %203 = call i32 @sigaddset(i32* %201, i32 %202)
  %204 = call i32 @sigemptyset(i32* %18)
  %205 = load i32, i32* @SIGTERM, align 4
  %206 = call i32 @sigaddset(i32* %18, i32 %205)
  %207 = load i32, i32* @SIGCHLD, align 4
  %208 = call i32 @sigaddset(i32* %18, i32 %207)
  %209 = call i32 @sigemptyset(i32* %21)
  %210 = load i32, i32* @SIGTERM, align 4
  %211 = call i32 @sigaddset(i32* %21, i32 %210)
  %212 = call i32 @sigemptyset(i32* %20)
  %213 = load i32, i32* @SIGCHLD, align 4
  %214 = call i32 @sigaddset(i32* %20, i32 %213)
  %215 = load i32, i32* @SIG_BLOCK, align 4
  %216 = call i64 @sigprocmask(i32 %215, i32* %21, i32* %19)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %187
  %219 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %440

220:                                              ; preds = %187
  %221 = load i32, i32* @SIGTERM, align 4
  %222 = call i32 @sigaction(i32 %221, %struct.sigaction* %31, i32* null)
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %440

226:                                              ; preds = %220
  %227 = load i32, i32* @SIGCHLD, align 4
  %228 = call i32 @sigaction(i32 %227, %struct.sigaction* %32, i32* null)
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %440

232:                                              ; preds = %226
  %233 = load i32, i32* @MADV_PROTECT, align 4
  %234 = call i32 @madvise(i32* null, i32 0, i32 %233)
  %235 = load i32, i32* %24, align 4
  %236 = getelementptr inbounds %struct.log_params, %struct.log_params* %22, i32 0, i32 0
  store i32 %235, i32* %236, align 4
  %237 = load i32, i32* %16, align 4
  %238 = getelementptr inbounds %struct.log_params, %struct.log_params* %22, i32 0, i32 1
  store i32 %237, i32* %238, align 4
  %239 = load i32, i32* %26, align 4
  %240 = getelementptr inbounds %struct.log_params, %struct.log_params* %22, i32 0, i32 2
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* %14, align 4
  %242 = getelementptr inbounds %struct.log_params, %struct.log_params* %22, i32 0, i32 3
  store i32 %241, i32* %242, align 4
  br label %243

243:                                              ; preds = %434, %232
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %245 = call i64 @pipe(i32* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %243
  store i64 0, i64* @child_gone, align 8
  %250 = call i32 (...) @fork()
  store i32 %250, i32* @pid, align 4
  %251 = load i32, i32* @pid, align 4
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %440

255:                                              ; preds = %249
  %256 = load i32, i32* @pid, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %255
  %259 = load i32, i32* @SIG_UNBLOCK, align 4
  %260 = call i64 @sigprocmask(i32 %259, i32* %21, i32* null)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %440

264:                                              ; preds = %258
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @close(i32 %266)
  %268 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 -1, i32* %268, align 4
  br label %269

269:                                              ; preds = %264, %255
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270, %184
  %272 = load i32, i32* @pid, align 4
  %273 = icmp sle i32 %272, 0
  br i1 %273, label %274, label %347

274:                                              ; preds = %271
  %275 = load %struct.pidfh*, %struct.pidfh** %29, align 8
  %276 = call i32 @pidfile_write(%struct.pidfh* %275)
  %277 = load i8*, i8** %9, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load i8*, i8** %9, align 8
  %281 = call i32 @restrict_process(i8* %280)
  br label %282

282:                                              ; preds = %279, %274
  %283 = load i32, i32* @pid, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %337

285:                                              ; preds = %282
  %286 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @close(i32 %287)
  %289 = load i32, i32* @SIG_SETMASK, align 4
  %290 = call i64 @sigprocmask(i32 %289, i32* %19, i32* null)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %285
  %295 = load i32, i32* %25, align 4
  %296 = load i32, i32* @STDERR_FILENO, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %294
  %300 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @STDERR_FILENO, align 4
  %303 = call i32 @dup2(i32 %301, i32 %302)
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %305, label %307

305:                                              ; preds = %299
  %306 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %299
  br label %308

308:                                              ; preds = %307, %294
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* @STDOUT_FILENO, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %322

313:                                              ; preds = %308
  %314 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @STDOUT_FILENO, align 4
  %317 = call i32 @dup2(i32 %315, i32 %316)
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %319, label %321

319:                                              ; preds = %313
  %320 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %321

321:                                              ; preds = %319, %313
  br label %322

322:                                              ; preds = %321, %308
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @STDERR_FILENO, align 4
  %326 = icmp ne i32 %324, %325
  br i1 %326, label %327, label %336

327:                                              ; preds = %322
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @STDOUT_FILENO, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @close(i32 %334)
  br label %336

336:                                              ; preds = %332, %327, %322
  br label %337

337:                                              ; preds = %336, %282
  %338 = load i8**, i8*** %5, align 8
  %339 = getelementptr inbounds i8*, i8** %338, i64 0
  %340 = load i8*, i8** %339, align 8
  %341 = load i8**, i8*** %5, align 8
  %342 = call i32 @execvp(i8* %340, i8** %341)
  %343 = load i8**, i8*** %5, align 8
  %344 = getelementptr inbounds i8*, i8** %343, i64 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %345)
  br label %347

347:                                              ; preds = %337, %271
  %348 = load i8*, i8** %8, align 8
  %349 = load i32, i32* @pid, align 4
  %350 = call i32 @setproctitle(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %348, i32 %349)
  store i32 0, i32* %17, align 4
  br label %351

351:                                              ; preds = %412, %347
  %352 = load i64, i64* @child_gone, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load i32, i32* %17, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %354
  br label %413

358:                                              ; preds = %354, %351
  %359 = load i64, i64* @terminate, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %358
  br label %440

362:                                              ; preds = %358
  %363 = load i32, i32* %17, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %385, label %365

365:                                              ; preds = %362
  %366 = load i32, i32* @SIG_BLOCK, align 4
  %367 = call i64 @sigprocmask(i32 %366, i32* %20, i32* null)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %440

371:                                              ; preds = %365
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = bitcast %struct.log_params* %22 to %struct.sigaction*
  %375 = call i32 @listen_child(i32 %373, %struct.sigaction* %374)
  %376 = icmp ne i32 %375, 0
  %377 = xor i1 %376, true
  %378 = zext i1 %377 to i32
  store i32 %378, i32* %17, align 4
  %379 = load i32, i32* @SIG_UNBLOCK, align 4
  %380 = call i64 @sigprocmask(i32 %379, i32* %20, i32* null)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %371
  %383 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %440

384:                                              ; preds = %371
  br label %410

385:                                              ; preds = %362
  %386 = load i32, i32* @SIG_BLOCK, align 4
  %387 = call i64 @sigprocmask(i32 %386, i32* %18, i32* null)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %385
  %390 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %440

391:                                              ; preds = %385
  br label %392

392:                                              ; preds = %401, %391
  %393 = load i64, i64* @terminate, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %392
  %396 = load i64, i64* @child_gone, align 8
  %397 = icmp ne i64 %396, 0
  %398 = xor i1 %397, true
  br label %399

399:                                              ; preds = %395, %392
  %400 = phi i1 [ false, %392 ], [ %398, %395 ]
  br i1 %400, label %401, label %403

401:                                              ; preds = %399
  %402 = call i32 @sigsuspend(i32* %19)
  br label %392

403:                                              ; preds = %399
  %404 = load i32, i32* @SIG_UNBLOCK, align 4
  %405 = call i64 @sigprocmask(i32 %404, i32* %18, i32* null)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %403
  %408 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %440

409:                                              ; preds = %403
  br label %410

410:                                              ; preds = %409, %384
  br label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %411
  br label %351

413:                                              ; preds = %357
  %414 = load i32, i32* %15, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %413
  %417 = load i64, i64* @terminate, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %416
  %420 = load i32, i32* %15, align 4
  %421 = call i32 @daemon_sleep(i32 %420, i32 0)
  br label %422

422:                                              ; preds = %419, %416, %413
  %423 = load i32, i32* @SIG_BLOCK, align 4
  %424 = call i64 @sigprocmask(i32 %423, i32* %21, i32* null)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %422
  %427 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %440

428:                                              ; preds = %422
  %429 = load i32, i32* %15, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %439

431:                                              ; preds = %428
  %432 = load i64, i64* @terminate, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %431
  %435 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @close(i32 %436)
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  store i32 -1, i32* %438, align 4
  br label %243

439:                                              ; preds = %431, %428
  br label %440

440:                                              ; preds = %439, %426, %407, %389, %382, %369, %361, %262, %253, %230, %224, %218, %168
  %441 = load i32, i32* %24, align 4
  %442 = call i32 @close(i32 %441)
  %443 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @close(i32 %444)
  %446 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @close(i32 %447)
  %449 = load i32, i32* %16, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %440
  %452 = call i32 (...) @closelog()
  br label %453

453:                                              ; preds = %451, %440
  %454 = load %struct.pidfh*, %struct.pidfh** %29, align 8
  %455 = call i32 @pidfile_remove(%struct.pidfh* %454)
  %456 = load %struct.pidfh*, %struct.pidfh** %28, align 8
  %457 = call i32 @pidfile_remove(%struct.pidfh* %456)
  %458 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @get_log_mapping(i8*, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i32 @open_pid_files(i8*, i8*, %struct.pidfh**, %struct.pidfh**) #2

declare dso_local i32 @daemon(i32, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @pidfile_write(%struct.pidfh*) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaddset(i32*, i32) #2

declare dso_local i64 @sigprocmask(i32, i32*, i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @madvise(i32*, i32, i32) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @restrict_process(i8*) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i32 @setproctitle(i8*, i8*, i32) #2

declare dso_local i32 @listen_child(i32, %struct.sigaction*) #2

declare dso_local i32 @sigsuspend(i32*) #2

declare dso_local i32 @daemon_sleep(i32, i32) #2

declare dso_local i32 @closelog(...) #2

declare dso_local i32 @pidfile_remove(%struct.pidfh*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
