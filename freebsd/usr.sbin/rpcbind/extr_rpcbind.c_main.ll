; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcbind.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcbind.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32, i32 }
%struct.rlimit = type { i32, i32 }
%struct.passwd = type { i32 }

@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@RPCBINDDLOCK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@rpcbindlockfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LOCK_EX = common dso_local global i32 0, align 4
@LOCK_NB = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"another rpcbind is already running. Aborting\00", align 1
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"rpcbind\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Sorry. You are not superuser\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"could not read /etc/netconfig\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: can't find local transport\0A\00", align 1
@RPC_SVC_CONNMAXREC_SET = common dso_local global i32 0, align 4
@NC_VISIBLE = common dso_local global i32 0, align 4
@ipv6_only = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"pipe failed\00", align 1
@terminate_rfd = common dso_local global i32 0, align 4
@terminate_wfd = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@reap = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@terminate = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@debugging = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"rpcbind debugging enabled.\00", align 1
@doabort = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"  Will abort on errors!\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@runasdaemon = common dso_local global i64 0, align 8
@RUN_AS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"cannot get uid of daemon: %m\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"setuid to daemon failed: %m\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"svc_run returned unexpectedly\00", align 1
@tcptrans = common dso_local global i8* null, align 8
@udptrans = common dso_local global i8* null, align 8
@warmstart = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.netconfig*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rlimit, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.passwd*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @RPC_MAXDATASIZE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @parseargs(i32 %14, i8** %15)
  %17 = call i32 (...) @update_bound_sa()
  %18 = load i32, i32* @RPCBINDDLOCK, align 4
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = load i32, i32* @O_CREAT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i32 %18, i32 %21, i32 292)
  store i32 %22, i32* @rpcbindlockfd, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @RPCBINDDLOCK, align 4
  %26 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @rpcbindlockfd, align 4
  %29 = load i32, i32* @LOCK_EX, align 4
  %30 = load i32, i32* @LOCK_NB, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @flock(i32 %28, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EWOULDBLOCK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %34, %27
  %41 = load i32, i32* @RLIMIT_NOFILE, align 4
  %42 = call i32 @getrlimit(i32 %41, %struct.rlimit* %8)
  %43 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 128
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sle i32 %48, 128
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  br label %56

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  store i32 128, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* @RLIMIT_NOFILE, align 4
  %58 = call i32 @setrlimit(i32 %57, %struct.rlimit* %8)
  br label %59

59:                                               ; preds = %56, %40
  %60 = load i32, i32* @LOG_CONS, align 4
  %61 = load i32, i32* @LOG_DAEMON, align 4
  %62 = call i32 @openlog(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  %63 = call i64 (...) @geteuid()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %59
  %70 = call i8* (...) @setnetconfig()
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* @LOG_ERR, align 4
  %75 = call i32 (i32, i8*, ...) @syslog(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %69
  %78 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store %struct.netconfig* %78, %struct.netconfig** %6, align 8
  %79 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %80 = icmp eq %struct.netconfig* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store %struct.netconfig* %82, %struct.netconfig** %6, align 8
  br label %83

83:                                               ; preds = %81, %77
  %84 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %85 = icmp eq %struct.netconfig* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* @LOG_ERR, align 4
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 (i32, i8*, ...) @syslog(i32 %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %90)
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %83
  %94 = load i32, i32* @RPC_SVC_CONNMAXREC_SET, align 4
  %95 = call i32 @rpc_control(i32 %94, i32* %9)
  %96 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %97 = call i32 @init_transport(%struct.netconfig* %96)
  br label %98

98:                                               ; preds = %123, %93
  %99 = load i8*, i8** %7, align 8
  %100 = call %struct.netconfig* @getnetconfig(i8* %99)
  store %struct.netconfig* %100, %struct.netconfig** %6, align 8
  %101 = icmp ne %struct.netconfig* %100, null
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %104 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NC_VISIBLE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %102
  %110 = load i32, i32* @ipv6_only, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %114 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @strcmp(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %122

119:                                              ; preds = %112, %109
  %120 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %121 = call i32 @init_transport(%struct.netconfig* %120)
  br label %122

122:                                              ; preds = %119, %118
  br label %123

123:                                              ; preds = %122, %102
  br label %98

124:                                              ; preds = %98
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @endnetconfig(i8* %125)
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %128 = call i32 @pipe(i32* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %124
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* @terminate_rfd, align 4
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* @terminate_wfd, align 4
  %138 = load i32, i32* @SIGCHLD, align 4
  %139 = load i32, i32* @reap, align 4
  %140 = call i32 @signal(i32 %138, i32 %139)
  %141 = load i32, i32* @SIGINT, align 4
  %142 = load i32, i32* @terminate, align 4
  %143 = call i32 @signal(i32 %141, i32 %142)
  %144 = load i32, i32* @SIGTERM, align 4
  %145 = load i32, i32* @terminate, align 4
  %146 = call i32 @signal(i32 %144, i32 %145)
  %147 = load i32, i32* @SIGQUIT, align 4
  %148 = load i32, i32* @terminate, align 4
  %149 = call i32 @signal(i32 %147, i32 %148)
  %150 = load i32, i32* @SIGPIPE, align 4
  %151 = load i32, i32* @SIG_IGN, align 4
  %152 = call i32 @signal(i32 %150, i32 %151)
  %153 = load i32, i32* @SIGHUP, align 4
  %154 = load i32, i32* @SIG_IGN, align 4
  %155 = call i32 @signal(i32 %153, i32 %154)
  %156 = load i32, i32* @SIGUSR1, align 4
  %157 = load i32, i32* @SIG_IGN, align 4
  %158 = call i32 @signal(i32 %156, i32 %157)
  %159 = load i32, i32* @SIGUSR2, align 4
  %160 = load i32, i32* @SIG_IGN, align 4
  %161 = call i32 @signal(i32 %159, i32 %160)
  %162 = load i64, i64* @debugging, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %133
  %165 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %166 = load i64, i64* @doabort, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %172

170:                                              ; preds = %164
  %171 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %168
  br label %179

173:                                              ; preds = %133
  %174 = call i64 @daemon(i32 0, i32 0)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %173
  br label %179

179:                                              ; preds = %178, %172
  %180 = load i64, i64* @runasdaemon, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  %183 = load i32, i32* @RUN_AS, align 4
  %184 = call %struct.passwd* @getpwnam(i32 %183)
  store %struct.passwd* %184, %struct.passwd** %12, align 8
  %185 = icmp eq %struct.passwd* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load i32, i32* @LOG_ERR, align 4
  %188 = call i32 (i32, i8*, ...) @syslog(i32 %187, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %189 = call i32 @exit(i32 1) #3
  unreachable

190:                                              ; preds = %182
  %191 = load %struct.passwd*, %struct.passwd** %12, align 8
  %192 = getelementptr inbounds %struct.passwd, %struct.passwd* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @setuid(i32 %193)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32, i32* @LOG_ERR, align 4
  %198 = call i32 (i32, i8*, ...) @syslog(i32 %197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  %199 = call i32 @exit(i32 1) #3
  unreachable

200:                                              ; preds = %190
  br label %201

201:                                              ; preds = %200, %179
  %202 = call i32 (...) @network_init()
  %203 = call i32 (...) @my_svc_run()
  %204 = load i32, i32* @LOG_ERR, align 4
  %205 = call i32 (i32, i8*, ...) @syslog(i32 %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %206 = call i32 (...) @rpcbind_abort()
  ret i32 0
}

declare dso_local i32 @parseargs(i32, i8**) #1

declare dso_local i32 @update_bound_sa(...) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @setnetconfig(...) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #1

declare dso_local i32 @rpc_control(i32, i32*) #1

declare dso_local i32 @init_transport(%struct.netconfig*) #1

declare dso_local %struct.netconfig* @getnetconfig(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @endnetconfig(i8*) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @network_init(...) #1

declare dso_local i32 @my_svc_run(...) #1

declare dso_local i32 @rpcbind_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
