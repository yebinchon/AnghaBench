; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32, i32 }
%struct.__rpc_sockinfo = type { i64, i64, i8* }
%struct.bindaddrlistent = type { i64, i64, i8* }

@ble_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"dh:np:P:\00", align 1
@ypdb_debug = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"malloc() failed: -h %s\00", align 1
@optarg = common dso_local global i8* null, align 8
@ble_next = common dso_local global i32 0, align 4
@do_dns = common dso_local global i32 0, align 4
@yp_dir = common dso_local global i8* null, align 8
@servname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"cannot read %s\00", align 1
@NETCONFIG = common dso_local global i32 0, align 4
@_rpcpmstart = common dso_local global i32 0, align 4
@_rpcfdtype = common dso_local global i64 0, align 8
@_rpcaf = common dso_local global i64 0, align 8
@_rpcfd = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"ypserv\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@RPC_ANYFD = common dso_local global i64 0, align 8
@MADV_PROTECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"madvise(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@NC_VISIBLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"cannot get information for %s.  Ignored.\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"no transport is available.  Aborted.\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@closedown = common dso_local global i64 0, align 8
@_RPCSVC_CLOSEDOWN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@reaper = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.netconfig*, align 8
  %11 = alloca %struct.__rpc_sockinfo, align 8
  %12 = alloca %struct.bindaddrlistent*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast %struct.__rpc_sockinfo* %11 to %struct.bindaddrlistent*
  %14 = call i32 @memset(%struct.bindaddrlistent* %13, i32 0, i32 24)
  %15 = call i32 @SLIST_INIT(i32* @ble_head)
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %43 [
    i32 100, label %23
    i32 104, label %24
    i32 110, label %38
    i32 112, label %39
    i32 80, label %41
  ]

23:                                               ; preds = %21
  store i32 1, i32* @ypdb_debug, align 4
  store i32 1, i32* @debug, align 4
  br label %45

24:                                               ; preds = %21
  %25 = call %struct.bindaddrlistent* @malloc(i32 24)
  store %struct.bindaddrlistent* %25, %struct.bindaddrlistent** %12, align 8
  %26 = load %struct.bindaddrlistent*, %struct.bindaddrlistent** %12, align 8
  %27 = icmp eq %struct.bindaddrlistent* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i8*, i8** @optarg, align 8
  %33 = load %struct.bindaddrlistent*, %struct.bindaddrlistent** %12, align 8
  %34 = getelementptr inbounds %struct.bindaddrlistent, %struct.bindaddrlistent* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.bindaddrlistent*, %struct.bindaddrlistent** %12, align 8
  %36 = load i32, i32* @ble_next, align 4
  %37 = call i32 @SLIST_INSERT_HEAD(i32* @ble_head, %struct.bindaddrlistent* %35, i32 %36)
  br label %45

38:                                               ; preds = %21
  store i32 1, i32* @do_dns, align 4
  br label %45

39:                                               ; preds = %21
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** @yp_dir, align 8
  br label %45

41:                                               ; preds = %21
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** @servname, align 8
  br label %45

43:                                               ; preds = %21
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %41, %39, %38, %31, %23
  br label %16

46:                                               ; preds = %16
  %47 = call i64 @SLIST_EMPTY(i32* @ble_head)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = call %struct.bindaddrlistent* @malloc(i32 24)
  store %struct.bindaddrlistent* %50, %struct.bindaddrlistent** %12, align 8
  %51 = load %struct.bindaddrlistent*, %struct.bindaddrlistent** %12, align 8
  %52 = icmp eq %struct.bindaddrlistent* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %49
  %56 = load %struct.bindaddrlistent*, %struct.bindaddrlistent** %12, align 8
  %57 = call i32 @memset(%struct.bindaddrlistent* %56, i32 0, i32 24)
  %58 = load %struct.bindaddrlistent*, %struct.bindaddrlistent** %12, align 8
  %59 = load i32, i32* @ble_next, align 4
  %60 = call i32 @SLIST_INSERT_HEAD(i32* @ble_head, %struct.bindaddrlistent* %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %46
  %62 = call i32 (...) @load_securenets()
  %63 = call i32 (...) @yp_init_resolver()
  %64 = call i8* (...) @setnetconfig()
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @NETCONFIG, align 4
  %69 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = bitcast %struct.__rpc_sockinfo* %11 to %struct.bindaddrlistent*
  %72 = call i64 @__rpc_fd2sockinfo(i32 0, %struct.bindaddrlistent* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  store i32 1, i32* @_rpcpmstart, align 4
  %75 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* @_rpcfdtype, align 8
  %77 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* @_rpcaf, align 8
  store i64 0, i64* @_rpcfd, align 8
  %79 = load i32, i32* @LOG_PID, align 4
  %80 = load i32, i32* @LOG_DAEMON, align 4
  %81 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %80)
  br label %98

82:                                               ; preds = %70
  %83 = load i32, i32* @debug, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = call i64 @daemon(i32 0, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32, i32* @LOG_PID, align 4
  %92 = load i32, i32* @LOG_DAEMON, align 4
  %93 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %82
  store i32 0, i32* @_rpcpmstart, align 4
  %95 = load i64, i64* @AF_INET, align 8
  store i64 %95, i64* @_rpcaf, align 8
  %96 = load i64, i64* @RPC_ANYFD, align 8
  store i64 %96, i64* @_rpcfd, align 8
  %97 = call i32 (...) @unregister()
  br label %98

98:                                               ; preds = %94, %74
  %99 = load i32, i32* @MADV_PROTECT, align 4
  %100 = call i64 @madvise(i32* null, i32 0, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @errno, align 4
  %104 = call i32 @strerror(i32 %103)
  %105 = call i32 (i8*, ...) @_msgout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %98
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %164, %148, %141, %123, %106
  %108 = load i8*, i8** %9, align 8
  %109 = call %struct.netconfig* @getnetconfig(i8* %108)
  store %struct.netconfig* %109, %struct.netconfig** %10, align 8
  %110 = icmp ne %struct.netconfig* %109, null
  br i1 %110, label %111, label %165

111:                                              ; preds = %107
  %112 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %113 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NC_VISIBLE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %164

118:                                              ; preds = %111
  %119 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %120 = bitcast %struct.__rpc_sockinfo* %11 to %struct.bindaddrlistent*
  %121 = call i64 @__rpc_nconf2sockinfo(%struct.netconfig* %119, %struct.bindaddrlistent* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %125 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @_msgout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  br label %107

128:                                              ; preds = %118
  %129 = load i32, i32* @_rpcpmstart, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @_rpcfdtype, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @_rpcaf, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136, %131
  br label %107

142:                                              ; preds = %136
  br label %150

143:                                              ; preds = %128
  %144 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %11, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @_rpcaf, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %107

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %142
  %151 = load i64, i64* @_rpcfd, align 8
  %152 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %153 = bitcast %struct.__rpc_sockinfo* %11 to %struct.bindaddrlistent*
  %154 = call i32 @create_service(i64 %151, %struct.netconfig* %152, %struct.bindaddrlistent* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @endnetconfig(i8* %158)
  %160 = call i32 @exit(i32 1) #3
  unreachable

161:                                              ; preds = %150
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %161, %111
  br label %107

165:                                              ; preds = %107
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @endnetconfig(i8* %166)
  br label %168

168:                                              ; preds = %172, %165
  %169 = call i64 @SLIST_EMPTY(i32* @ble_head)
  %170 = icmp ne i64 %169, 0
  %171 = xor i1 %170, true
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @ble_next, align 4
  %174 = call i32 @SLIST_REMOVE_HEAD(i32* @ble_head, i32 %173)
  br label %168

175:                                              ; preds = %168
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = call i32 (i8*, ...) @_msgout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %180 = call i32 @exit(i32 1) #3
  unreachable

181:                                              ; preds = %175
  %182 = load i32, i32* @_rpcpmstart, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load i32, i32* @SIGALRM, align 4
  %186 = load i64, i64* @closedown, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @signal(i32 %185, i32 %187)
  %189 = load i32, i32* @_RPCSVC_CLOSEDOWN, align 4
  %190 = sdiv i32 %189, 2
  %191 = call i32 @alarm(i32 %190)
  br label %192

192:                                              ; preds = %184, %181
  %193 = load i32, i32* @SIGPIPE, align 4
  %194 = load i32, i32* @SIG_IGN, align 4
  %195 = call i32 @signal(i32 %193, i32 %194)
  %196 = load i32, i32* @SIGCHLD, align 4
  %197 = load i64, i64* @reaper, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @signal(i32 %196, i32 %198)
  %200 = load i32, i32* @SIGTERM, align 4
  %201 = load i64, i64* @reaper, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 @signal(i32 %200, i32 %202)
  %204 = load i32, i32* @SIGINT, align 4
  %205 = load i64, i64* @reaper, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @signal(i32 %204, i32 %206)
  %208 = load i32, i32* @SIGHUP, align 4
  %209 = load i64, i64* @reaper, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @signal(i32 %208, i32 %210)
  %212 = call i32 (...) @yp_svc_run()
  %213 = call i32 (i8*, ...) @_msgout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %214 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @memset(%struct.bindaddrlistent*, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local %struct.bindaddrlistent* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.bindaddrlistent*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @load_securenets(...) #1

declare dso_local i32 @yp_init_resolver(...) #1

declare dso_local i8* @setnetconfig(...) #1

declare dso_local i64 @__rpc_fd2sockinfo(i32, %struct.bindaddrlistent*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @unregister(...) #1

declare dso_local i64 @madvise(i32*, i32, i32) #1

declare dso_local i32 @_msgout(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.netconfig* @getnetconfig(i8*) #1

declare dso_local i64 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.bindaddrlistent*) #1

declare dso_local i32 @create_service(i64, %struct.netconfig*, %struct.bindaddrlistent*) #1

declare dso_local i32 @endnetconfig(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @yp_svc_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
