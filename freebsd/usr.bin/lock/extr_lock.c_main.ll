; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/lock/extr_lock.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/lock/extr_lock.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pam_conv = type { i32*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.passwd = type { i8* }
%struct.itimerval = type { %struct.TYPE_7__, i32 }
%struct.tm = type { i8* }

@main.pamc = internal constant %struct.pam_conv { i32* @openpam_ttyconv, i32* null }, align 8
@openpam_ttyconv = common dso_local global i32 0, align 4
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@LOG_AUTH = common dso_local global i32 0, align 4
@PAM_SYSTEM_ERR = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@no_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"npt:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"illegal timeout value\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unknown uid %d\00", align 1
@timeout = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"setuid failed\00", align 1
@tty = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"not a terminal?\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@nexttime = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@ntty = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ECHO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@TCSASOFT = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"pam_start: %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Key: \00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"\0AAgain: \00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\07lock: passwords didn't match.\0A\00", align 1
@SIGTSTP = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@zerotime = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@VT_LOCKSWITCH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"locking vty\00", align 1
@vtyunlock = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"lock: %s using %s on %s.\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"lock: %s on %s.\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c" no timeout.\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c" timeout in %d minute%s.\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [13 x i8] c" vty locked.\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\0Atime now is %.20s%s%s\00", align 1
@PAM_AUTH_ERR = common dso_local global i32 0, align 4
@PAM_USER_UNKNOWN = common dso_local global i32 0, align 4
@PAM_MAXTRIES = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"pam_authenticate: %s\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\07\0A\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [36 x i8] c"%d ROOT UNLOCK FAILURE%s (%s on %s)\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [35 x i8] c"ROOT UNLOCK ON hostname %s port %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.passwd*, align 8
  %8 = alloca %struct.itimerval, align 4
  %9 = alloca %struct.itimerval, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %21, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %22, align 8
  %29 = load i32, i32* @BUFSIZ, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %23, align 8
  %32 = load i32, i32* @BUFSIZ, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  %35 = load i32, i32* @LOG_AUTH, align 4
  %36 = call i32 @openlog(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %35)
  %37 = load i32, i32* @PAM_SYSTEM_ERR, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* @TIMEOUT, align 4
  store i32 %38, i32* %15, align 4
  store i32* null, i32** %6, align 8
  store %struct.passwd* null, %struct.passwd** %7, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* @no_timeout, align 4
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %68, %2
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @getopt(i32 %40, i8** %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %12, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = trunc i32 %45 to i8
  %47 = sext i8 %46 to i32
  switch i32 %47, label %66 [
    i32 116, label %48
    i32 112, label %55
    i32 110, label %63
    i32 118, label %64
    i32 63, label %65
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @optarg, align 4
  %50 = call i32 @atoi(i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %68

55:                                               ; preds = %44
  store i32 1, i32* %16, align 4
  %56 = call i64 (...) @getuid()
  %57 = call %struct.passwd* @getpwuid(i64 %56)
  store %struct.passwd* %57, %struct.passwd** %7, align 8
  %58 = icmp ne %struct.passwd* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = call i64 (...) @getuid()
  %61 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %59, %55
  br label %68

63:                                               ; preds = %44
  store i32 1, i32* @no_timeout, align 4
  br label %68

64:                                               ; preds = %44
  store i32 1, i32* %17, align 4
  br label %68

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %44, %65
  %67 = call i32 (...) @usage()
  br label %68

68:                                               ; preds = %66, %64, %63, %62, %54
  br label %39

69:                                               ; preds = %39
  %70 = load i32, i32* %15, align 4
  %71 = mul nsw i32 %70, 60
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @timeout, i32 0, i32 0), align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = call i64 (...) @getuid()
  %76 = call i64 @setuid(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %74
  br label %81

81:                                               ; preds = %80, %69
  %82 = call i64 @tcgetattr(i32 0, %struct.TYPE_6__* @tty)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @exit(i32 1) #5
  unreachable

86:                                               ; preds = %81
  %87 = trunc i64 %26 to i32
  %88 = call i32 @gethostname(i8* %28, i32 %87)
  %89 = call i8* @ttyname(i32 0)
  store i8* %89, i8** %19, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i8*, i8** %19, align 8
  %95 = load i32, i32* @_PATH_DEV, align 4
  %96 = load i32, i32* @_PATH_DEV, align 4
  %97 = call i32 @strlen(i32 %96)
  %98 = call i64 @strncmp(i8* %94, i32 %95, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32, i32* @_PATH_DEV, align 4
  %102 = call i32 @strlen(i32 %101)
  %103 = load i8*, i8** %19, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %19, align 8
  br label %106

106:                                              ; preds = %100, %93
  %107 = call i64 @time(i32* null)
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i32, i32* %15, align 4
  %110 = mul nsw i32 %109, 60
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %108, %111
  store i64 %112, i64* @nexttime, align 8
  %113 = call %struct.tm* @localtime(i64* %11)
  store %struct.tm* %113, %struct.tm** %10, align 8
  %114 = load %struct.tm*, %struct.tm** %10, align 8
  %115 = call i8* @asctime(%struct.tm* %114)
  store i8* %115, i8** %18, align 8
  %116 = load %struct.tm*, %struct.tm** %10, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %20, align 8
  %119 = load i32, i32* @SIGINT, align 4
  %120 = call i32 @signal(i32 %119, i32 (i32)* @quit)
  %121 = load i32, i32* @SIGQUIT, align 4
  %122 = call i32 @signal(i32 %121, i32 (i32)* @quit)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_6__* @ntty to i8*), i8* align 4 bitcast (%struct.TYPE_6__* @tty to i8*), i64 4, i1 false)
  %123 = load i32, i32* @ECHO, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ntty, i32 0, i32 0), align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ntty, i32 0, i32 0), align 4
  %127 = load i32, i32* @TCSADRAIN, align 4
  %128 = load i32, i32* @TCSASOFT, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @tcsetattr(i32 0, i32 %129, %struct.TYPE_6__* @ntty)
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %106
  %134 = load %struct.passwd*, %struct.passwd** %7, align 8
  %135 = getelementptr inbounds %struct.passwd, %struct.passwd* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @pam_start(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %136, %struct.pam_conv* @main.pamc, i32** %6)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @PAM_SUCCESS, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @pam_strerror(i32* null, i32 %142)
  %144 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %133
  br label %175

146:                                              ; preds = %106
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %148 = trunc i64 %30 to i32
  %149 = load i32, i32* @stdin, align 4
  %150 = call i32 @fgets(i8* %31, i32 %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i8, i8* %31, align 16
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 10
  br i1 %155, label %156, label %158

156:                                              ; preds = %152, %146
  %157 = call i32 @quit(i32 0)
  br label %158

158:                                              ; preds = %156, %152
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %160 = trunc i64 %33 to i32
  %161 = load i32, i32* @stdin, align 4
  %162 = call i32 @fgets(i8* %34, i32 %160, i32 %161)
  %163 = call i32 @putchar(i8 signext 10)
  %164 = call i64 @strcmp(i8* %34, i8* %31)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %158
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %168 = load i32, i32* @TCSADRAIN, align 4
  %169 = load i32, i32* @TCSASOFT, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @tcsetattr(i32 0, i32 %170, %struct.TYPE_6__* @tty)
  %172 = call i32 @exit(i32 1) #5
  unreachable

173:                                              ; preds = %158
  %174 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %174, align 16
  br label %175

175:                                              ; preds = %173, %145
  %176 = load i32, i32* @SIGINT, align 4
  %177 = call i32 @signal(i32 %176, i32 (i32)* @hi)
  %178 = load i32, i32* @SIGQUIT, align 4
  %179 = call i32 @signal(i32 %178, i32 (i32)* @hi)
  %180 = load i32, i32* @SIGTSTP, align 4
  %181 = call i32 @signal(i32 %180, i32 (i32)* @hi)
  %182 = load i32, i32* @SIGALRM, align 4
  %183 = call i32 @signal(i32 %182, i32 (i32)* @bye)
  %184 = load i32, i32* @zerotime, align 4
  %185 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 1
  store i32 %184, i32* %185, align 4
  %186 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %8, i32 0, i32 0
  %187 = bitcast %struct.TYPE_7__* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 4 bitcast (%struct.TYPE_7__* @timeout to i8*), i64 4, i1 false)
  %188 = load i32, i32* @no_timeout, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %175
  %191 = load i32, i32* @ITIMER_REAL, align 4
  %192 = call i32 @setitimer(i32 %191, %struct.itimerval* %8, %struct.itimerval* %9)
  br label %193

193:                                              ; preds = %190, %175
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %193
  %197 = load i32, i32* @VT_LOCKSWITCH, align 4
  %198 = call i32 @ioctl(i32 0, i32 %197, i32* %17)
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i32, i32* @TCSADRAIN, align 4
  %202 = load i32, i32* @TCSASOFT, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @tcsetattr(i32 0, i32 %203, %struct.TYPE_6__* @tty)
  %205 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %206

206:                                              ; preds = %200, %196
  store i32 2, i32* @vtyunlock, align 4
  br label %207

207:                                              ; preds = %206, %193
  %208 = load %struct.passwd*, %struct.passwd** %7, align 8
  %209 = icmp ne %struct.passwd* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load %struct.passwd*, %struct.passwd** %7, align 8
  %212 = getelementptr inbounds %struct.passwd, %struct.passwd* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load i8*, i8** %19, align 8
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %213, i8* %214, i8* %28)
  br label %219

216:                                              ; preds = %207
  %217 = load i8*, i8** %19, align 8
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %217, i8* %28)
  br label %219

219:                                              ; preds = %216, %210
  %220 = load i32, i32* @no_timeout, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %231

224:                                              ; preds = %219
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %15, align 4
  %227 = icmp ne i32 %226, 1
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %225, i8* %229)
  br label %231

231:                                              ; preds = %224, %222
  %232 = load i32, i32* %17, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %236

236:                                              ; preds = %234, %231
  %237 = load i8*, i8** %18, align 8
  %238 = load i8*, i8** %20, align 8
  %239 = load i8*, i8** %18, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 19
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %237, i8* %238, i8* %240)
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %310, %236
  %243 = load i32, i32* %16, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %271

245:                                              ; preds = %242
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 @pam_authenticate(i32* %246, i32 0)
  store i32 %247, i32* %14, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* @PAM_SUCCESS, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  br label %312

252:                                              ; preds = %245
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* @PAM_AUTH_ERR, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %270

256:                                              ; preds = %252
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* @PAM_USER_UNKNOWN, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %270

260:                                              ; preds = %256
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* @PAM_MAXTRIES, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load i32, i32* @LOG_ERR, align 4
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @pam_strerror(i32* %266, i32 %267)
  %269 = call i32 (i32, i8*, ...) @syslog(i32 %265, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %264, %260, %256, %252
  br label %301

271:                                              ; preds = %242
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %273 = trunc i64 %30 to i32
  %274 = load i32, i32* @stdin, align 4
  %275 = call i32 @fgets(i8* %31, i32 %273, i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* @stdin, align 4
  %279 = call i32 @clearerr(i32 %278)
  %280 = call i32 @hi(i32 0)
  br label %301

281:                                              ; preds = %271
  %282 = call i64 @strcmp(i8* %31, i8* %34)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %281
  br label %312

285:                                              ; preds = %281
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %13, align 4
  %289 = call i64 (...) @getuid()
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %285
  %292 = load i32, i32* @LOG_NOTICE, align 4
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = icmp sgt i32 %294, 1
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %298 = load i8*, i8** %19, align 8
  %299 = call i32 (i32, i8*, ...) @syslog(i32 %292, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i32 %293, i8* %297, i8* %298, i8* %28)
  br label %300

300:                                              ; preds = %291, %285
  br label %301

301:                                              ; preds = %300, %277, %270
  %302 = call i64 @tcgetattr(i32 0, %struct.TYPE_6__* @ntty)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = load i64, i64* @errno, align 8
  %306 = load i64, i64* @EINTR, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = call i32 @exit(i32 1) #5
  unreachable

310:                                              ; preds = %304, %301
  %311 = call i32 @sleep(i32 1)
  br label %242

312:                                              ; preds = %284, %251
  %313 = call i64 (...) @getuid()
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %312
  %316 = load i32, i32* @LOG_NOTICE, align 4
  %317 = load i8*, i8** %19, align 8
  %318 = call i32 (i32, i8*, ...) @syslog(i32 %316, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i8* %28, i8* %317)
  br label %319

319:                                              ; preds = %315, %312
  %320 = load i32, i32* %16, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %319
  %323 = load i32*, i32** %6, align 8
  %324 = load i32, i32* %14, align 4
  %325 = call i32 @pam_end(i32* %323, i32 %324)
  br label %326

326:                                              ; preds = %322, %319
  %327 = call i32 @quit(i32 0)
  store i32 0, i32* %3, align 4
  %328 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %328)
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local %struct.passwd* @getpwuid(i64) #2

declare dso_local i64 @getuid(...) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @setuid(i64) #2

declare dso_local i64 @tcgetattr(i32, %struct.TYPE_6__*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i8* @ttyname(i32) #2

declare dso_local i64 @strncmp(i8*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i64*) #2

declare dso_local i8* @asctime(%struct.tm*) #2

declare dso_local i32 @signal(i32, i32 (i32)*) #2

declare dso_local i32 @quit(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @tcsetattr(i32, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @pam_start(i8*, i8*, %struct.pam_conv*, i32**) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @pam_strerror(i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @hi(i32) #2

declare dso_local i32 @bye(i32) #2

declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #2

declare dso_local i32 @ioctl(i32, i32, i32*) #2

declare dso_local i32 @pam_authenticate(i32*, i32) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @clearerr(i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @pam_end(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
