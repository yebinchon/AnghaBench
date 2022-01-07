; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.yppasswdd/extr_yppasswdd_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.yppasswdd/extr_yppasswdd_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }
%struct.sockaddr_in = type { i64 }
%struct.netconfig = type { i32* }
%struct.sigaction = type { i32 }
%struct.sockaddr = type { i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [15 x i8] c"t:d:p:sfamuivh\00", align 1
@optarg = common dso_local global i8* null, align 8
@passfile_default = common dso_local global i8* null, align 8
@yppasswd_domain = common dso_local global i32* null, align 8
@no_chsh = common dso_local global i32 0, align 4
@no_chfn = common dso_local global i32 0, align 4
@yp_dir = common dso_local global i8* null, align 8
@allow_additions = common dso_local global i32 0, align 4
@multidomain = common dso_local global i32 0, align 4
@inplace = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@resvport = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"no domain specified and system domain name isn't set -- aborting\00", align 1
@_localhost = common dso_local global i32 0, align 4
@YPPROG = common dso_local global i32 0, align 4
@YPVERS = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"no ypserv processes registered with local portmap\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"this host is not an NIS server -- aborting\00", align 1
@_passwd_byname = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"can't get name of NIS master server for domain %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"can't get local hostname: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"master of %s is %s, but we are %s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"passwd.byname\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"this host is not the NIS master server for the %s domain -- aborting\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_TYPE = common dso_local global i32 0, align 4
@_rpcfdtype = common dso_local global i32 0, align 4
@_rpcpmstart = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"cannot fork\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"rpc.yppasswdd\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@SA_NOCLDWAIT = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@YPPASSWDPROG = common dso_local global i32 0, align 4
@YPPASSWDVERS = common dso_local global i32 0, align 4
@MASTER_YPPASSWDPROG = common dso_local global i32 0, align 4
@MASTER_YPPASSWDVERS = common dso_local global i32 0, align 4
@RPC_SVC_CONNMAXREC_SET = common dso_local global i32 0, align 4
@yppasswdprog_1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"netpath\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"cannot create yppasswd service.\00", align 1
@master_yppasswdprog_1 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [39 x i8] c"cannot create master_yppasswd service.\00", align 1
@NC_LOOPBACK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"getnetconfigent unix: %s\00", align 1
@sockname = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"cannot create AF_LOCAL service.\00", align 1
@.str.16 = private unnamed_addr constant [75 x i8] c"unable to register (MASTER_YPPASSWDPROG, \09\09    MASTER_YPPASSWDVERS, unix).\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"chmod of %s failed\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"could not create a handle\00", align 1
@SIGALRM = common dso_local global i32 0, align 4
@closedown = common dso_local global i64 0, align 8
@_RPCSVC_CLOSEDOWN = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@RLIMIT_CPU = common dso_local global i32 0, align 4
@RLIMIT_FSIZE = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i32 0, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@RLIMIT_RSS = common dso_local global i32 0, align 4
@RLIMIT_CORE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@reload = common dso_local global i64 0, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@terminate = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"svc_run returned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.rlimit, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netconfig*, align 8
  %11 = alloca %struct.sigaction, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 8, i32* %9, align 4
  %19 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %20 = add nsw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i32, i32* @RPC_MAXDATASIZE, align 4
  store i32 %24, i32* %17, align 4
  store i32 1, i32* @debug, align 4
  br label %25

25:                                               ; preds = %61, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %13, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  switch i32 %31, label %58 [
    i32 116, label %32
    i32 100, label %34
    i32 115, label %37
    i32 102, label %40
    i32 112, label %43
    i32 97, label %45
    i32 109, label %48
    i32 105, label %51
    i32 118, label %54
    i32 117, label %57
    i32 104, label %59
  ]

32:                                               ; preds = %30
  %33 = load i8*, i8** @optarg, align 8
  store i8* %33, i8** @passfile_default, align 8
  br label %61

34:                                               ; preds = %30
  %35 = load i8*, i8** @optarg, align 8
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** @yppasswd_domain, align 8
  br label %61

37:                                               ; preds = %30
  %38 = load i32, i32* @no_chsh, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @no_chsh, align 4
  br label %61

40:                                               ; preds = %30
  %41 = load i32, i32* @no_chfn, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @no_chfn, align 4
  br label %61

43:                                               ; preds = %30
  %44 = load i8*, i8** @optarg, align 8
  store i8* %44, i8** @yp_dir, align 8
  br label %61

45:                                               ; preds = %30
  %46 = load i32, i32* @allow_additions, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @allow_additions, align 4
  br label %61

48:                                               ; preds = %30
  %49 = load i32, i32* @multidomain, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @multidomain, align 4
  br label %61

51:                                               ; preds = %30
  %52 = load i32, i32* @inplace, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @inplace, align 4
  br label %61

54:                                               ; preds = %30
  %55 = load i32, i32* @verbose, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @verbose, align 4
  br label %61

57:                                               ; preds = %30
  store i32 0, i32* @resvport, align 4
  br label %61

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %30, %58
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %57, %54, %51, %48, %45, %43, %40, %37, %34, %32
  br label %25

62:                                               ; preds = %25
  %63 = load i32*, i32** @yppasswd_domain, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = call i64 @yp_get_default_domain(i32** @yppasswd_domain)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i32 (...) @usage()
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %62
  %73 = call i32 (...) @load_securenets()
  %74 = load i32, i32* @_localhost, align 4
  %75 = load i32, i32* @YPPROG, align 4
  %76 = load i32, i32* @YPVERS, align 4
  %77 = load i32, i32* @IPPROTO_UDP, align 4
  %78 = call i64 @getrpcport(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 @exit(i32 1) #4
  unreachable

84:                                               ; preds = %72
  %85 = load i32*, i32** @yppasswd_domain, align 8
  %86 = load i32, i32* @_passwd_byname, align 4
  %87 = load i32, i32* @_localhost, align 4
  %88 = call i8* @ypxfr_get_master(i32* %85, i32 %86, i32 %87, i32 0)
  store i8* %88, i8** %14, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32*, i32** @yppasswd_domain, align 8
  %92 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32* %91)
  %93 = call i32 @exit(i32 1) #4
  unreachable

94:                                               ; preds = %84
  %95 = trunc i64 %21 to i32
  %96 = call i32 @gethostname(i8* %23, i32 %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @strerror(i32 %99)
  %101 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = call i32 @exit(i32 1) #4
  unreachable

103:                                              ; preds = %94
  %104 = load i8*, i8** %14, align 8
  %105 = trunc i64 %21 to i32
  %106 = call i64 @strncasecmp(i8* %104, i8* %23, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i8*, i8** %14, align 8
  %110 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %109, i8* %23)
  %111 = load i32*, i32** @yppasswd_domain, align 8
  %112 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i32* %111)
  %113 = call i32 @exit(i32 1) #4
  unreachable

114:                                              ; preds = %103
  store i32 0, i32* @debug, align 4
  %115 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %116 = call i64 @getsockname(i32 0, %struct.sockaddr* %115, i32* %9)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  store i32 4, i32* %18, align 4
  %119 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AF_INET, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = call i32 @exit(i32 1) #4
  unreachable

125:                                              ; preds = %118
  %126 = load i32, i32* @SOL_SOCKET, align 4
  %127 = load i32, i32* @SO_TYPE, align 4
  %128 = call i32 @getsockopt(i32 0, i32 %126, i32 %127, i8* bitcast (i32* @_rpcfdtype to i8*), i32* %18)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 @exit(i32 1) #4
  unreachable

132:                                              ; preds = %125
  store i32 1, i32* @_rpcpmstart, align 4
  br label %133

133:                                              ; preds = %132, %114
  %134 = load i32, i32* @debug, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @_rpcpmstart, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = call i64 @daemon(i32 0, i32 0)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %139
  br label %145

145:                                              ; preds = %144, %136, %133
  %146 = load i32, i32* @LOG_PID, align 4
  %147 = load i32, i32* @LOG_DAEMON, align 4
  %148 = call i32 @openlog(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %146, i32 %147)
  %149 = call i32 @memset(%struct.sigaction* %11, i32 0, i32 4)
  %150 = load i32, i32* @SA_NOCLDWAIT, align 4
  %151 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %11, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @SIGCHLD, align 4
  %153 = call i32 @sigaction(i32 %152, %struct.sigaction* %11, i32* null)
  %154 = load i32, i32* @YPPASSWDPROG, align 4
  %155 = load i32, i32* @YPPASSWDVERS, align 4
  %156 = call i32 @rpcb_unset(i32 %154, i32 %155, i32* null)
  %157 = load i32, i32* @MASTER_YPPASSWDPROG, align 4
  %158 = load i32, i32* @MASTER_YPPASSWDVERS, align 4
  %159 = call i32 @rpcb_unset(i32 %157, i32 %158, i32* null)
  %160 = load i32, i32* @RPC_SVC_CONNMAXREC_SET, align 4
  %161 = call i32 @rpc_control(i32 %160, i32* %17)
  %162 = load i32, i32* @yppasswdprog_1, align 4
  %163 = load i32, i32* @YPPASSWDPROG, align 4
  %164 = load i32, i32* @YPPASSWDVERS, align 4
  %165 = call i64 @svc_create(i32 %162, i32 %163, i32 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %145
  %168 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %169 = call i32 @exit(i32 1) #4
  unreachable

170:                                              ; preds = %145
  %171 = load i32, i32* @master_yppasswdprog_1, align 4
  %172 = load i32, i32* @MASTER_YPPASSWDPROG, align 4
  %173 = load i32, i32* @MASTER_YPPASSWDVERS, align 4
  %174 = call i64 @svc_create(i32 %171, i32 %172, i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %178 = call i32 @exit(i32 1) #4
  unreachable

179:                                              ; preds = %170
  store %struct.netconfig* null, %struct.netconfig** %10, align 8
  %180 = call i8* (...) @setnetconfig()
  store i8* %180, i8** %12, align 8
  br label %181

181:                                              ; preds = %198, %179
  %182 = load i8*, i8** %12, align 8
  %183 = call %struct.netconfig* @getnetconfig(i8* %182)
  store %struct.netconfig* %183, %struct.netconfig** %10, align 8
  %184 = icmp ne %struct.netconfig* %183, null
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %187 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %192 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* @NC_LOOPBACK, align 4
  %195 = call i64 @strcmp(i32* %193, i32 %194)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %199

198:                                              ; preds = %190, %185
  br label %181

199:                                              ; preds = %197, %181
  %200 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %201 = icmp eq %struct.netconfig* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = call i32 (...) @nc_sperror()
  %204 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %203)
  %205 = call i32 @exit(i32 1) #4
  unreachable

206:                                              ; preds = %199
  %207 = load i32, i32* @sockname, align 4
  %208 = call i32 @unlink(i32 %207)
  %209 = load i32, i32* @RPC_ANYSOCK, align 4
  %210 = load i32, i32* @sockname, align 4
  %211 = call i32* @svcunix_create(i32 %209, i32 0, i32 0, i32 %210)
  store i32* %211, i32** %7, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %216 = call i32 @exit(i32 1) #4
  unreachable

217:                                              ; preds = %206
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* @MASTER_YPPASSWDPROG, align 4
  %220 = load i32, i32* @MASTER_YPPASSWDVERS, align 4
  %221 = load i32, i32* @master_yppasswdprog_1, align 4
  %222 = load %struct.netconfig*, %struct.netconfig** %10, align 8
  %223 = call i32 @svc_reg(i32* %218, i32 %219, i32 %220, i32 %221, %struct.netconfig* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %217
  %226 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.16, i64 0, i64 0))
  %227 = call i32 @exit(i32 1) #4
  unreachable

228:                                              ; preds = %217
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @endnetconfig(i8* %229)
  %231 = load i32, i32* @sockname, align 4
  %232 = call i64 @chmod(i32 %231, i32 0)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i32, i32* @sockname, align 4
  %236 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %234, %228
  %238 = load i32*, i32** %7, align 8
  %239 = icmp eq i32* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %242 = call i32 @exit(i32 1) #4
  unreachable

243:                                              ; preds = %237
  %244 = load i32, i32* @_rpcpmstart, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load i32, i32* @SIGALRM, align 4
  %248 = load i64, i64* @closedown, align 8
  %249 = trunc i64 %248 to i32
  %250 = call i32 @signal(i32 %247, i32 %249)
  %251 = load i32, i32* @_RPCSVC_CLOSEDOWN, align 4
  %252 = sdiv i32 %251, 2
  %253 = call i32 @alarm(i32 %252)
  br label %254

254:                                              ; preds = %246, %243
  %255 = load i64, i64* @RLIM_INFINITY, align 8
  %256 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i64 %255, i64* %256, align 8
  %257 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = load i32, i32* @RLIMIT_CPU, align 4
  %259 = call i32 @setrlimit(i32 %258, %struct.rlimit* %6)
  %260 = load i32, i32* @RLIMIT_FSIZE, align 4
  %261 = call i32 @setrlimit(i32 %260, %struct.rlimit* %6)
  %262 = load i32, i32* @RLIMIT_STACK, align 4
  %263 = call i32 @setrlimit(i32 %262, %struct.rlimit* %6)
  %264 = load i32, i32* @RLIMIT_DATA, align 4
  %265 = call i32 @setrlimit(i32 %264, %struct.rlimit* %6)
  %266 = load i32, i32* @RLIMIT_RSS, align 4
  %267 = call i32 @setrlimit(i32 %266, %struct.rlimit* %6)
  %268 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i64 0, i64* %268, align 8
  %269 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  store i64 0, i64* %269, align 8
  %270 = load i32, i32* @RLIMIT_CORE, align 4
  %271 = call i32 @setrlimit(i32 %270, %struct.rlimit* %6)
  %272 = load i32, i32* @SIGALRM, align 4
  %273 = load i32, i32* @SIG_IGN, align 4
  %274 = call i32 @signal(i32 %272, i32 %273)
  %275 = load i32, i32* @SIGHUP, align 4
  %276 = load i64, i64* @reload, align 8
  %277 = trunc i64 %276 to i32
  %278 = call i32 @signal(i32 %275, i32 %277)
  %279 = load i32, i32* @SIGINT, align 4
  %280 = load i32, i32* @SIG_IGN, align 4
  %281 = call i32 @signal(i32 %279, i32 %280)
  %282 = load i32, i32* @SIGPIPE, align 4
  %283 = load i32, i32* @SIG_IGN, align 4
  %284 = call i32 @signal(i32 %282, i32 %283)
  %285 = load i32, i32* @SIGQUIT, align 4
  %286 = load i32, i32* @SIG_IGN, align 4
  %287 = call i32 @signal(i32 %285, i32 %286)
  %288 = load i32, i32* @SIGTERM, align 4
  %289 = load i64, i64* @terminate, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @signal(i32 %288, i32 %290)
  %292 = call i32 (...) @svc_run()
  %293 = call i32 (i8*, ...) @yp_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %294 = call i32 @exit(i32 1) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i64 @yp_get_default_domain(i32**) #2

declare dso_local i32 @yp_error(i8*, ...) #2

declare dso_local i32 @load_securenets(...) #2

declare dso_local i64 @getrpcport(i32, i32, i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @ypxfr_get_master(i32*, i32, i32, i32) #2

declare dso_local i32 @gethostname(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #2

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #2

declare dso_local i64 @daemon(i32, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @openlog(i8*, i32, i32) #2

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @rpcb_unset(i32, i32, i32*) #2

declare dso_local i32 @rpc_control(i32, i32*) #2

declare dso_local i64 @svc_create(i32, i32, i32, i8*) #2

declare dso_local i8* @setnetconfig(...) #2

declare dso_local %struct.netconfig* @getnetconfig(i8*) #2

declare dso_local i64 @strcmp(i32*, i32) #2

declare dso_local i32 @nc_sperror(...) #2

declare dso_local i32 @unlink(i32) #2

declare dso_local i32* @svcunix_create(i32, i32, i32, i32) #2

declare dso_local i32 @svc_reg(i32*, i32, i32, i32, %struct.netconfig*) #2

declare dso_local i32 @endnetconfig(i8*) #2

declare dso_local i64 @chmod(i32, i32) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @alarm(i32) #2

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @svc_run(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
