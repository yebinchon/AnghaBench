; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nfsd/extr_nfsd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.nfsd_addsock_args = type { i32, i32, %struct.nfsd_addsock_args* }
%struct.addrinfo = type { i8*, i8*, i8*, i32, i32, i8* }
%struct.netconfig = type { i32 }
%struct.netbuf = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.nfsd_nfsd_args = type { i32, i64, i32* }
%struct.sockaddr = type { i32 }

@NFS_VER2 = common dso_local global i32 0, align 4
@DEFNFSDCNT = common dso_local global i32 0, align 4
@nfsdcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ah:n:rdtuep:m:V:\00", align 1
@getopt_shortopts = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [235 x i8] c"usage:\0A  nfsd [-ardtue] [-h bindip]\0A       [-n numservers] [--minthreads #] [--maxthreads #]\0A       [-p/--pnfs dsserver0:/dsserver0-mounted-on-dir,...,dsserverN:/dsserverN-mounted-on-dir] [-m mirrorlevel]\0A       [-V virtual_hostname]\0A\00", align 1
@getopt_usage = common dso_local global i8* null, align 8
@longopts = common dso_local global %struct.TYPE_3__* null, align 8
@optarg = common dso_local global i8* null, align 8
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Virtual host name (%s) is too long\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@NFSDEV_MAXMIRRORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Mirror level out of range 2<-->%d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"minthreads\00", align 1
@minthreads = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"maxthreads\00", align 1
@maxthreads = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@minthreads_set = common dso_local global i64 0, align 8
@maxthreads_set = common dso_local global i64 0, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"error: minthreads(%d) can't be greater than maxthreads(%d)\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"NFS server is not available\00", align 1
@AF_INET6 = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"vfs.nfsd.server_min_nfsvers\00", align 1
@NFS_VER4 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [70 x i8] c"sysctlbyname(vfs.nfsd.server_min_nfsvers) failed, defaulting to NFSv2\00", align 1
@AI_PASSIVE = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"getaddrinfo udp: %s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"getnetconfigent udp failed\00", align 1
@NFS_PROGRAM = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"rpcb_set udp failed\00", align 1
@NFS_VER3 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"getaddrinfo udp6: %s\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"getnetconfigent udp6 failed\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"rpcb_set udp6 failed\00", align 1
@SOCK_STREAM = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [20 x i8] c"getaddrinfo tcp: %s\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"getnetconfigent tcp failed\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"rpcb_set tcp failed\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"getaddrinfo tcp6: %s\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"getnetconfigent tcp6 failed\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"rpcb_set tcp6 failed\00", align 1
@debug = common dso_local global i64 0, align 8
@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@nonfs = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@reapchild = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@backup_stable = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@stablefd = common dso_local global i64 0, align 8
@backupfd = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"Can't open %s: %m\0A\00", align 1
@NFSD_STABLERESTART = common dso_local global i32 0, align 4
@NFSSVC_BACKUPSTABLE = common dso_local global i32 0, align 4
@NFSSVC_STABLERESTART = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [36 x i8] c"Can't read stable storage file: %m\0A\00", align 1
@NFSSVC_NFSDADDSOCK = common dso_local global i32 0, align 4
@NFSSVC_NFSDNFSD = common dso_local global i32 0, align 4
@NFSSVC_NEWSTRUCT = common dso_local global i32 0, align 4
@nfssvc_nfsd = common dso_local global i32 0, align 4
@masterpid = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"fork: %m\00", align 1
@children = common dso_local global i32* null, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@child_cleanup = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@cleanup = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [24 x i8] c"can't create udp socket\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"can't bind udp addr %s: %m\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"can't Add UDP socket\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"can't create udp6 socket\00", align 1
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [46 x i8] c"can't set v6-only binding for udp6 socket: %m\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"can't bind udp6 addr %s: %m\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"can't add UDP6 socket\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"can't create tcp socket\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [28 x i8] c"setsockopt SO_REUSEADDR: %m\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"can't bind tcp addr %s: %m\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"listen failed\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"can't create tcp6 socket\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"can't set v6-only binding for tcp6 socket: %m\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"can't bind tcp6 addr %s: %m\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"rpcb_set() failed, nothing to do: %m\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"tcp connects == 0, nothing to do: %m\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.52 = private unnamed_addr constant [18 x i8] c"select failed: %m\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"accept failed: %m\00", align 1
@ECONNABORTED = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [28 x i8] c"setsockopt SO_KEEPALIVE: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nfsd_addsock_args, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo, align 8
  %12 = alloca %struct.netconfig*, align 8
  %13 = alloca %struct.netconfig*, align 8
  %14 = alloca %struct.netconfig*, align 8
  %15 = alloca %struct.netconfig*, align 8
  %16 = alloca %struct.netbuf, align 4
  %17 = alloca %struct.netbuf, align 4
  %18 = alloca %struct.netbuf, align 4
  %19 = alloca %struct.netbuf, align 4
  %20 = alloca %struct.sockaddr_storage, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  %49 = alloca i8*, align 8
  %50 = alloca i8**, align 8
  %51 = alloca i32, align 4
  %52 = alloca %struct.nfsd_nfsd_args, align 8
  %53 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %29, align 4
  store i32 0, i32* %46, align 4
  %54 = load i32, i32* @NFS_VER2, align 4
  store i32 %54, i32* %47, align 4
  store i8** null, i8*** %50, align 8
  store i8* null, i8** %53, align 8
  %55 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %52, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %52, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %52, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* @DEFNFSDCNT, align 4
  store i32 %58, i32* @nfsdcnt, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %42, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** @getopt_shortopts, align 8
  store i8* getelementptr inbounds ([235 x i8], [235 x i8]* @.str.1, i64 0, i64 0), i8** @getopt_usage, align 8
  br label %59

59:                                               ; preds = %166, %2
  %60 = load i32, i32* %4, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** @getopt_shortopts, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @longopts, align 8
  %64 = call i32 @getopt_long(i32 %60, i8** %61, i8* %62, %struct.TYPE_3__* %63, i32* %46)
  store i32 %64, i32* %23, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %167

66:                                               ; preds = %59
  %67 = load i32, i32* %23, align 4
  switch i32 %67, label %163 [
    i32 86, label %68
    i32 97, label %79
    i32 110, label %80
    i32 104, label %84
    i32 114, label %115
    i32 100, label %116
    i32 116, label %117
    i32 117, label %118
    i32 101, label %119
    i32 112, label %120
    i32 109, label %123
    i32 0, label %139
    i32 63, label %164
  ]

68:                                               ; preds = %66
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i8*, i8** @optarg, align 8
  store i8* %74, i8** %53, align 8
  br label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %73
  br label %166

79:                                               ; preds = %66
  store i32 1, i32* %42, align 4
  br label %166

80:                                               ; preds = %66
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i8* @atoi(i8* %81)
  %83 = call i32 @set_nfsdcnt(i8* %82)
  br label %166

84:                                               ; preds = %66
  %85 = load i32, i32* %41, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %41, align 4
  %87 = load i8**, i8*** %50, align 8
  %88 = load i32, i32* %41, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = call i8** @realloc(i8** %87, i32 %91)
  store i8** %92, i8*** %50, align 8
  %93 = load i8**, i8*** %50, align 8
  %94 = icmp eq i8** %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %84
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i8* @strdup(i8* %98)
  %100 = load i8**, i8*** %50, align 8
  %101 = load i32, i32* %41, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  store i8* %99, i8** %104, align 8
  %105 = load i8**, i8*** %50, align 8
  %106 = load i32, i32* %41, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %97
  %113 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %97
  br label %166

115:                                              ; preds = %66
  store i32 1, i32* %31, align 4
  br label %166

116:                                              ; preds = %66
  store i32 1, i32* %30, align 4
  br label %166

117:                                              ; preds = %66
  store i32 1, i32* %35, align 4
  br label %166

118:                                              ; preds = %66
  store i32 1, i32* %37, align 4
  br label %166

119:                                              ; preds = %66
  br label %166

120:                                              ; preds = %66
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i32 @parse_dsserver(i8* %121, %struct.nfsd_nfsd_args* %52)
  br label %166

123:                                              ; preds = %66
  %124 = load i8*, i8** @optarg, align 8
  %125 = call i8* @atoi(i8* %124)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %25, align 4
  %127 = load i32, i32* %25, align 4
  %128 = icmp slt i32 %127, 2
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %25, align 4
  %131 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129, %123
  %134 = load i32, i32* @NFSDEV_MAXMIRRORS, align 4
  %135 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %25, align 4
  %138 = getelementptr inbounds %struct.nfsd_nfsd_args, %struct.nfsd_nfsd_args* %52, i32 0, i32 0
  store i32 %137, i32* %138, align 8
  br label %166

139:                                              ; preds = %66
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @longopts, align 8
  %141 = load i32, i32* %46, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %49, align 8
  %146 = load i8*, i8** %49, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %139
  %150 = load i8*, i8** @optarg, align 8
  %151 = call i8* @atoi(i8* %150)
  %152 = ptrtoint i8* %151 to i64
  store i64 %152, i64* @minthreads, align 8
  br label %162

153:                                              ; preds = %139
  %154 = load i8*, i8** %49, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i8*, i8** @optarg, align 8
  %159 = call i8* @atoi(i8* %158)
  %160 = ptrtoint i8* %159 to i64
  store i64 %160, i64* @maxthreads, align 8
  br label %161

161:                                              ; preds = %157, %153
  br label %162

162:                                              ; preds = %161, %149
  br label %166

163:                                              ; preds = %66
  br label %164

164:                                              ; preds = %66, %163
  %165 = call i32 (...) @usage()
  br label %166

166:                                              ; preds = %164, %162, %136, %120, %119, %118, %117, %116, %115, %114, %80, %79, %78
  br label %59

167:                                              ; preds = %59
  %168 = load i32, i32* %35, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %37, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  store i32 1, i32* %37, align 4
  br label %174

174:                                              ; preds = %173, %170, %167
  %175 = load i64, i64* @optind, align 8
  %176 = load i8**, i8*** %5, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 %175
  store i8** %177, i8*** %5, align 8
  %178 = load i64, i64* @optind, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = sub nsw i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %4, align 4
  %183 = load i64, i64* @minthreads_set, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %174
  %186 = load i64, i64* @maxthreads_set, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load i64, i64* @minthreads, align 8
  %190 = load i64, i64* @maxthreads, align 8
  %191 = icmp sgt i64 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i32, i32* @EX_USAGE, align 4
  %194 = load i64, i64* @minthreads, align 8
  %195 = load i64, i64* @maxthreads, align 8
  %196 = call i32 (i32, i8*, ...) @errx(i32 %193, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i64 %194, i64 %195)
  br label %197

197:                                              ; preds = %192, %188, %185, %174
  %198 = load i32, i32* %4, align 4
  %199 = icmp sgt i32 %198, 1
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = call i32 (...) @usage()
  br label %202

202:                                              ; preds = %200, %197
  %203 = load i32, i32* %4, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i8**, i8*** %5, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i8* @atoi(i8* %208)
  %210 = call i32 @set_nfsdcnt(i8* %209)
  br label %211

211:                                              ; preds = %205, %202
  %212 = call i64 @modfind(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %211
  %215 = call i64 @kldload(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %216 = icmp slt i64 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = call i64 @modfind(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217, %214
  %221 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %217
  br label %223

223:                                              ; preds = %222, %211
  store i32 1, i32* %34, align 4
  %224 = load i8*, i8** @AF_INET6, align 8
  %225 = load i8*, i8** @SOCK_DGRAM, align 8
  %226 = load i8*, i8** @IPPROTO_UDP, align 8
  %227 = call i32 @socket(i8* %224, i8* %225, i8* %226)
  store i32 %227, i32* %40, align 4
  %228 = load i32, i32* %40, align 4
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %241

230:                                              ; preds = %223
  %231 = load i32, i32* @errno, align 4
  %232 = load i32, i32* @EPROTONOSUPPORT, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load i32, i32* @errno, align 4
  %236 = load i32, i32* @EAFNOSUPPORT, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %234, %230
  store i32 0, i32* %34, align 4
  br label %249

241:                                              ; preds = %223
  %242 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %243 = icmp eq %struct.netconfig* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %246 = icmp eq %struct.netconfig* %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %244, %241
  store i32 0, i32* %34, align 4
  br label %248

248:                                              ; preds = %247, %244
  br label %249

249:                                              ; preds = %248, %240
  %250 = load i32, i32* %40, align 4
  %251 = icmp ne i32 %250, -1
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* %40, align 4
  %254 = call i32 @close(i32 %253)
  br label %255

255:                                              ; preds = %252, %249
  %256 = load i32, i32* %41, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %42, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %291

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %41, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %41, align 4
  %264 = load i8**, i8*** %50, align 8
  %265 = load i32, i32* %41, align 4
  %266 = sext i32 %265 to i64
  %267 = mul i64 8, %266
  %268 = trunc i64 %267 to i32
  %269 = call i8** @realloc(i8** %264, i32 %268)
  store i8** %269, i8*** %50, align 8
  %270 = load i8**, i8*** %50, align 8
  %271 = icmp eq i8** %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %261
  %273 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %261
  %275 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %276 = load i8**, i8*** %50, align 8
  %277 = load i32, i32* %41, align 4
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %276, i64 %279
  store i8* %275, i8** %280, align 8
  %281 = load i8**, i8*** %50, align 8
  %282 = load i32, i32* %41, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %281, i64 %284
  %286 = load i8*, i8** %285, align 8
  %287 = icmp eq i8* %286, null
  br i1 %287, label %288, label %290

288:                                              ; preds = %274
  %289 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %274
  br label %291

291:                                              ; preds = %290, %258
  store i64 4, i64* %48, align 8
  %292 = call i32 @sysctlbyname(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32* %47, i64* %48, i32* null, i32 0)
  store i32 %292, i32* %39, align 4
  %293 = load i32, i32* %39, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %291
  %296 = load i32, i32* %47, align 4
  %297 = load i32, i32* @NFS_VER2, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %303, label %299

299:                                              ; preds = %295
  %300 = load i32, i32* %47, align 4
  %301 = load i32, i32* @NFS_VER4, align 4
  %302 = icmp sgt i32 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %299, %295, %291
  %304 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i64 0, i64 0))
  %305 = load i32, i32* @NFS_VER2, align 4
  store i32 %305, i32* %47, align 4
  br label %306

306:                                              ; preds = %303, %299
  %307 = load i32, i32* %30, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = call i32 (...) @unregistration()
  %311 = call i32 @exit(i32 0) #3
  unreachable

312:                                              ; preds = %306
  %313 = load i32, i32* %31, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %571

315:                                              ; preds = %312
  %316 = load i32, i32* %37, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %377

318:                                              ; preds = %315
  %319 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %320 = load i8*, i8** @AI_PASSIVE, align 8
  %321 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %320, i8** %321, align 8
  %322 = load i8*, i8** @AF_INET, align 8
  %323 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %322, i8** %323, align 8
  %324 = load i8*, i8** @SOCK_DGRAM, align 8
  %325 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %324, i8** %325, align 8
  %326 = load i8*, i8** @IPPROTO_UDP, align 8
  %327 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %326, i8** %327, align 8
  %328 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %7)
  store i32 %328, i32* %38, align 4
  %329 = load i32, i32* %38, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %318
  %332 = load i32, i32* %38, align 4
  %333 = call i32 @gai_strerror(i32 %332)
  %334 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %333)
  br label %335

335:                                              ; preds = %331, %318
  %336 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  store %struct.netconfig* %336, %struct.netconfig** %12, align 8
  %337 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %338 = icmp eq %struct.netconfig* %337, null
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %341

341:                                              ; preds = %339, %335
  %342 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %343 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %16, i32 0, i32 2
  store i32 %344, i32* %345, align 4
  %346 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %347 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %16, i32 0, i32 0
  store i32 %348, i32* %349, align 4
  %350 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %16, i32 0, i32 1
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* %47, align 4
  %352 = load i32, i32* @NFS_VER2, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %362

354:                                              ; preds = %341
  %355 = load i32, i32* @NFS_PROGRAM, align 4
  %356 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %357 = call i32 @rpcb_set(i32 %355, i32 2, %struct.netconfig* %356, %struct.netbuf* %16)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %354
  %360 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %361

361:                                              ; preds = %359, %354
  br label %362

362:                                              ; preds = %361, %341
  %363 = load i32, i32* %47, align 4
  %364 = load i32, i32* @NFS_VER3, align 4
  %365 = icmp sle i32 %363, %364
  br i1 %365, label %366, label %374

366:                                              ; preds = %362
  %367 = load i32, i32* @NFS_PROGRAM, align 4
  %368 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %369 = call i32 @rpcb_set(i32 %367, i32 3, %struct.netconfig* %368, %struct.netbuf* %16)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %366
  %372 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %373

373:                                              ; preds = %371, %366
  br label %374

374:                                              ; preds = %373, %362
  %375 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %376 = call i32 @freeaddrinfo(%struct.addrinfo* %375)
  br label %377

377:                                              ; preds = %374, %315
  %378 = load i32, i32* %37, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %442

380:                                              ; preds = %377
  %381 = load i32, i32* %34, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %442

383:                                              ; preds = %380
  %384 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %385 = load i8*, i8** @AI_PASSIVE, align 8
  %386 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %385, i8** %386, align 8
  %387 = load i8*, i8** @AF_INET6, align 8
  %388 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %387, i8** %388, align 8
  %389 = load i8*, i8** @SOCK_DGRAM, align 8
  %390 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %389, i8** %390, align 8
  %391 = load i8*, i8** @IPPROTO_UDP, align 8
  %392 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %391, i8** %392, align 8
  %393 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %9)
  store i32 %393, i32* %38, align 4
  %394 = load i32, i32* %38, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %383
  %397 = load i32, i32* %38, align 4
  %398 = call i32 @gai_strerror(i32 %397)
  %399 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %398)
  br label %400

400:                                              ; preds = %396, %383
  %401 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store %struct.netconfig* %401, %struct.netconfig** %14, align 8
  %402 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %403 = icmp eq %struct.netconfig* %402, null
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  br label %406

406:                                              ; preds = %404, %400
  %407 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %408 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 4
  %410 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 2
  store i32 %409, i32* %410, align 4
  %411 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %412 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 0
  store i32 %413, i32* %414, align 4
  %415 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 1
  store i32 %413, i32* %415, align 4
  %416 = load i32, i32* %47, align 4
  %417 = load i32, i32* @NFS_VER2, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %419, label %427

419:                                              ; preds = %406
  %420 = load i32, i32* @NFS_PROGRAM, align 4
  %421 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %422 = call i32 @rpcb_set(i32 %420, i32 2, %struct.netconfig* %421, %struct.netbuf* %18)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %419
  %425 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  br label %426

426:                                              ; preds = %424, %419
  br label %427

427:                                              ; preds = %426, %406
  %428 = load i32, i32* %47, align 4
  %429 = load i32, i32* @NFS_VER3, align 4
  %430 = icmp sle i32 %428, %429
  br i1 %430, label %431, label %439

431:                                              ; preds = %427
  %432 = load i32, i32* @NFS_PROGRAM, align 4
  %433 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %434 = call i32 @rpcb_set(i32 %432, i32 3, %struct.netconfig* %433, %struct.netbuf* %18)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %438, label %436

436:                                              ; preds = %431
  %437 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  br label %438

438:                                              ; preds = %436, %431
  br label %439

439:                                              ; preds = %438, %427
  %440 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %441 = call i32 @freeaddrinfo(%struct.addrinfo* %440)
  br label %442

442:                                              ; preds = %439, %380, %377
  %443 = load i32, i32* %35, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %504

445:                                              ; preds = %442
  %446 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %447 = load i8*, i8** @AI_PASSIVE, align 8
  %448 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %447, i8** %448, align 8
  %449 = load i8*, i8** @AF_INET, align 8
  %450 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %449, i8** %450, align 8
  %451 = load i8*, i8** @SOCK_STREAM, align 8
  %452 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %451, i8** %452, align 8
  %453 = load i8*, i8** @IPPROTO_TCP, align 8
  %454 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %453, i8** %454, align 8
  %455 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %8)
  store i32 %455, i32* %38, align 4
  %456 = load i32, i32* %38, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %445
  %459 = load i32, i32* %38, align 4
  %460 = call i32 @gai_strerror(i32 %459)
  %461 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %460)
  br label %462

462:                                              ; preds = %458, %445
  %463 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  store %struct.netconfig* %463, %struct.netconfig** %13, align 8
  %464 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %465 = icmp eq %struct.netconfig* %464, null
  br i1 %465, label %466, label %468

466:                                              ; preds = %462
  %467 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  br label %468

468:                                              ; preds = %466, %462
  %469 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %470 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %469, i32 0, i32 4
  %471 = load i32, i32* %470, align 4
  %472 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %17, i32 0, i32 2
  store i32 %471, i32* %472, align 4
  %473 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %474 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 8
  %476 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %17, i32 0, i32 0
  store i32 %475, i32* %476, align 4
  %477 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %17, i32 0, i32 1
  store i32 %475, i32* %477, align 4
  %478 = load i32, i32* %47, align 4
  %479 = load i32, i32* @NFS_VER2, align 4
  %480 = icmp eq i32 %478, %479
  br i1 %480, label %481, label %489

481:                                              ; preds = %468
  %482 = load i32, i32* @NFS_PROGRAM, align 4
  %483 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %484 = call i32 @rpcb_set(i32 %482, i32 2, %struct.netconfig* %483, %struct.netbuf* %17)
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %481
  %487 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  br label %488

488:                                              ; preds = %486, %481
  br label %489

489:                                              ; preds = %488, %468
  %490 = load i32, i32* %47, align 4
  %491 = load i32, i32* @NFS_VER3, align 4
  %492 = icmp sle i32 %490, %491
  br i1 %492, label %493, label %501

493:                                              ; preds = %489
  %494 = load i32, i32* @NFS_PROGRAM, align 4
  %495 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %496 = call i32 @rpcb_set(i32 %494, i32 3, %struct.netconfig* %495, %struct.netbuf* %17)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %493
  %499 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  br label %500

500:                                              ; preds = %498, %493
  br label %501

501:                                              ; preds = %500, %489
  %502 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %503 = call i32 @freeaddrinfo(%struct.addrinfo* %502)
  br label %504

504:                                              ; preds = %501, %442
  %505 = load i32, i32* %35, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %569

507:                                              ; preds = %504
  %508 = load i32, i32* %34, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %569

510:                                              ; preds = %507
  %511 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %512 = load i8*, i8** @AI_PASSIVE, align 8
  %513 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %512, i8** %513, align 8
  %514 = load i8*, i8** @AF_INET6, align 8
  %515 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %514, i8** %515, align 8
  %516 = load i8*, i8** @SOCK_STREAM, align 8
  %517 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %516, i8** %517, align 8
  %518 = load i8*, i8** @IPPROTO_TCP, align 8
  %519 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %518, i8** %519, align 8
  %520 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %10)
  store i32 %520, i32* %38, align 4
  %521 = load i32, i32* %38, align 4
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %527

523:                                              ; preds = %510
  %524 = load i32, i32* %38, align 4
  %525 = call i32 @gai_strerror(i32 %524)
  %526 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %525)
  br label %527

527:                                              ; preds = %523, %510
  %528 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.netconfig* %528, %struct.netconfig** %15, align 8
  %529 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %530 = icmp eq %struct.netconfig* %529, null
  br i1 %530, label %531, label %533

531:                                              ; preds = %527
  %532 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  br label %533

533:                                              ; preds = %531, %527
  %534 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %535 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 4
  %537 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 2
  store i32 %536, i32* %537, align 4
  %538 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %539 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %538, i32 0, i32 3
  %540 = load i32, i32* %539, align 8
  %541 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 0
  store i32 %540, i32* %541, align 4
  %542 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 1
  store i32 %540, i32* %542, align 4
  %543 = load i32, i32* %47, align 4
  %544 = load i32, i32* @NFS_VER2, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %554

546:                                              ; preds = %533
  %547 = load i32, i32* @NFS_PROGRAM, align 4
  %548 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %549 = call i32 @rpcb_set(i32 %547, i32 2, %struct.netconfig* %548, %struct.netbuf* %19)
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %553, label %551

551:                                              ; preds = %546
  %552 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  br label %553

553:                                              ; preds = %551, %546
  br label %554

554:                                              ; preds = %553, %533
  %555 = load i32, i32* %47, align 4
  %556 = load i32, i32* @NFS_VER3, align 4
  %557 = icmp sle i32 %555, %556
  br i1 %557, label %558, label %566

558:                                              ; preds = %554
  %559 = load i32, i32* @NFS_PROGRAM, align 4
  %560 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %561 = call i32 @rpcb_set(i32 %559, i32 3, %struct.netconfig* %560, %struct.netbuf* %19)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %565, label %563

563:                                              ; preds = %558
  %564 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  br label %565

565:                                              ; preds = %563, %558
  br label %566

566:                                              ; preds = %565, %554
  %567 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %568 = call i32 @freeaddrinfo(%struct.addrinfo* %567)
  br label %569

569:                                              ; preds = %566, %507, %504
  %570 = call i32 @exit(i32 0) #3
  unreachable

571:                                              ; preds = %312
  %572 = load i64, i64* @debug, align 8
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %574, label %588

574:                                              ; preds = %571
  %575 = call i32 @daemon(i32 0, i32 0)
  %576 = load i32, i32* @SIGHUP, align 4
  %577 = load i32, i32* @SIG_IGN, align 4
  %578 = call i32 @signal(i32 %576, i32 %577)
  %579 = load i32, i32* @SIGINT, align 4
  %580 = load i32, i32* @SIG_IGN, align 4
  %581 = call i32 @signal(i32 %579, i32 %580)
  %582 = load i32, i32* @SIGTERM, align 4
  %583 = load i32, i32* @SIG_IGN, align 4
  %584 = call i32 @signal(i32 %582, i32 %583)
  %585 = load i32, i32* @SIGQUIT, align 4
  %586 = load i32, i32* @SIG_IGN, align 4
  %587 = call i32 @signal(i32 %585, i32 %586)
  br label %588

588:                                              ; preds = %574, %571
  %589 = load i32, i32* @SIGSYS, align 4
  %590 = load i32, i32* @nonfs, align 4
  %591 = call i32 @signal(i32 %589, i32 %590)
  %592 = load i32, i32* @SIGCHLD, align 4
  %593 = load i32, i32* @reapchild, align 4
  %594 = call i32 @signal(i32 %592, i32 %593)
  %595 = load i32, i32* @SIGUSR2, align 4
  %596 = load i32, i32* @backup_stable, align 4
  %597 = call i32 @signal(i32 %595, i32 %596)
  %598 = load i32, i32* @LOG_PID, align 4
  %599 = load i64, i64* @debug, align 8
  %600 = icmp ne i64 %599, 0
  br i1 %600, label %601, label %603

601:                                              ; preds = %588
  %602 = load i32, i32* @LOG_PERROR, align 4
  br label %604

603:                                              ; preds = %588
  br label %604

604:                                              ; preds = %603, %601
  %605 = phi i32 [ %602, %601 ], [ 0, %603 ]
  %606 = or i32 %598, %605
  %607 = load i32, i32* @LOG_DAEMON, align 4
  %608 = call i32 @openlog(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %606, i32 %607)
  %609 = call i32 @open_stable(i64* @stablefd, i32* @backupfd)
  %610 = load i64, i64* @stablefd, align 8
  %611 = icmp slt i64 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %604
  %613 = load i32, i32* @LOG_ERR, align 4
  %614 = load i32, i32* @NFSD_STABLERESTART, align 4
  %615 = call i32 (i32, i8*, ...) @syslog(i32 %613, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %614)
  %616 = call i32 @exit(i32 1) #3
  unreachable

617:                                              ; preds = %604
  %618 = load i32, i32* @NFSSVC_BACKUPSTABLE, align 4
  %619 = call i64 @nfssvc(i32 %618, %struct.nfsd_addsock_args* null)
  %620 = load i32, i32* @NFSSVC_STABLERESTART, align 4
  %621 = call i64 @nfssvc(i32 %620, %struct.nfsd_addsock_args* bitcast (i64* @stablefd to %struct.nfsd_addsock_args*))
  %622 = icmp slt i64 %621, 0
  br i1 %622, label %623, label %627

623:                                              ; preds = %617
  %624 = load i32, i32* @LOG_ERR, align 4
  %625 = call i32 (i32, i8*, ...) @syslog(i32 %624, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0))
  %626 = call i32 @exit(i32 1) #3
  unreachable

627:                                              ; preds = %617
  %628 = load i32, i32* @NFSSVC_NFSDADDSOCK, align 4
  store i32 %628, i32* %45, align 4
  %629 = load i32, i32* @NFSSVC_NFSDNFSD, align 4
  %630 = load i32, i32* @NFSSVC_NEWSTRUCT, align 4
  %631 = or i32 %629, %630
  store i32 %631, i32* @nfssvc_nfsd, align 4
  %632 = load i32, i32* %35, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %658

634:                                              ; preds = %627
  %635 = call i32 (...) @getpid()
  store i32 %635, i32* @masterpid, align 4
  %636 = call i32 (...) @fork()
  store i32 %636, i32* %51, align 4
  %637 = load i32, i32* %51, align 4
  %638 = icmp eq i32 %637, -1
  br i1 %638, label %639, label %643

639:                                              ; preds = %634
  %640 = load i32, i32* @LOG_ERR, align 4
  %641 = call i32 (i32, i8*, ...) @syslog(i32 %640, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  %642 = call i32 @nfsd_exit(i32 1)
  br label %643

643:                                              ; preds = %639, %634
  %644 = load i32, i32* %51, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %650

646:                                              ; preds = %643
  %647 = load i32, i32* %51, align 4
  %648 = load i32*, i32** @children, align 8
  %649 = getelementptr inbounds i32, i32* %648, i64 0
  store i32 %647, i32* %649, align 4
  br label %657

650:                                              ; preds = %643
  %651 = load i32, i32* @SIGUSR1, align 4
  %652 = load i32, i32* @child_cleanup, align 4
  %653 = call i32 @signal(i32 %651, i32 %652)
  %654 = call i32 @setproctitle(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %655 = load i8*, i8** %53, align 8
  %656 = call i32 @start_server(i32 0, %struct.nfsd_nfsd_args* %52, i8* %655)
  br label %657

657:                                              ; preds = %650, %646
  br label %658

658:                                              ; preds = %657, %627
  %659 = load i32, i32* @SIGUSR1, align 4
  %660 = load i32, i32* @cleanup, align 4
  %661 = call i32 @signal(i32 %659, i32 %660)
  %662 = call i32 @FD_ZERO(i32* %22)
  store i32 0, i32* %44, align 4
  %663 = load i32, i32* %37, align 4
  %664 = icmp ne i32 %663, 0
  br i1 %664, label %665, label %810

665:                                              ; preds = %658
  store i32 0, i32* %43, align 4
  store i32 0, i32* %25, align 4
  br label %666

666:                                              ; preds = %742, %665
  %667 = load i32, i32* %25, align 4
  %668 = load i32, i32* %41, align 4
  %669 = icmp slt i32 %667, %668
  br i1 %669, label %670, label %745

670:                                              ; preds = %666
  %671 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %672 = load i8*, i8** @AI_PASSIVE, align 8
  %673 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %672, i8** %673, align 8
  %674 = load i8*, i8** @AF_INET, align 8
  %675 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %674, i8** %675, align 8
  %676 = load i8*, i8** @SOCK_DGRAM, align 8
  %677 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %676, i8** %677, align 8
  %678 = load i8*, i8** @IPPROTO_UDP, align 8
  %679 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %678, i8** %679, align 8
  %680 = load i8**, i8*** %50, align 8
  %681 = load i32, i32* %25, align 4
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i8*, i8** %680, i64 %682
  %684 = load i8*, i8** %683, align 8
  %685 = call i64 @setbindhost(%struct.addrinfo** %7, i8* %684, %struct.addrinfo* byval(%struct.addrinfo) align 8 %11)
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %687, label %741

687:                                              ; preds = %670
  store i32 1, i32* %43, align 4
  %688 = load i32, i32* %44, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %44, align 4
  %690 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %691 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %690, i32 0, i32 0
  %692 = load i8*, i8** %691, align 8
  %693 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %694 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %693, i32 0, i32 1
  %695 = load i8*, i8** %694, align 8
  %696 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %697 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %696, i32 0, i32 2
  %698 = load i8*, i8** %697, align 8
  %699 = call i32 @socket(i8* %692, i8* %695, i8* %698)
  store i32 %699, i32* %32, align 4
  %700 = icmp slt i32 %699, 0
  br i1 %700, label %701, label %705

701:                                              ; preds = %687
  %702 = load i32, i32* @LOG_ERR, align 4
  %703 = call i32 (i32, i8*, ...) @syslog(i32 %702, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i64 0, i64 0))
  %704 = call i32 @nfsd_exit(i32 1)
  br label %705

705:                                              ; preds = %701, %687
  %706 = load i32, i32* %32, align 4
  %707 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %708 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %707, i32 0, i32 4
  %709 = load i32, i32* %708, align 4
  %710 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %711 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %710, i32 0, i32 3
  %712 = load i32, i32* %711, align 8
  %713 = call i64 @bind(i32 %706, i32 %709, i32 %712)
  %714 = icmp slt i64 %713, 0
  br i1 %714, label %715, label %724

715:                                              ; preds = %705
  %716 = load i32, i32* @LOG_ERR, align 4
  %717 = load i8**, i8*** %50, align 8
  %718 = load i32, i32* %25, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds i8*, i8** %717, i64 %719
  %721 = load i8*, i8** %720, align 8
  %722 = call i32 (i32, i8*, ...) @syslog(i32 %716, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0), i8* %721)
  %723 = call i32 @nfsd_exit(i32 1)
  br label %724

724:                                              ; preds = %715, %705
  %725 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %726 = call i32 @freeaddrinfo(%struct.addrinfo* %725)
  %727 = load i32, i32* %32, align 4
  %728 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 0
  store i32 %727, i32* %728, align 8
  %729 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 2
  store %struct.nfsd_addsock_args* null, %struct.nfsd_addsock_args** %729, align 8
  %730 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 1
  store i32 0, i32* %730, align 4
  %731 = load i32, i32* %45, align 4
  %732 = call i64 @nfssvc(i32 %731, %struct.nfsd_addsock_args* %6)
  %733 = icmp slt i64 %732, 0
  br i1 %733, label %734, label %738

734:                                              ; preds = %724
  %735 = load i32, i32* @LOG_ERR, align 4
  %736 = call i32 (i32, i8*, ...) @syslog(i32 %735, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  %737 = call i32 @nfsd_exit(i32 1)
  br label %738

738:                                              ; preds = %734, %724
  %739 = load i32, i32* %32, align 4
  %740 = call i32 @close(i32 %739)
  br label %741

741:                                              ; preds = %738, %670
  br label %742

742:                                              ; preds = %741
  %743 = load i32, i32* %25, align 4
  %744 = add nsw i32 %743, 1
  store i32 %744, i32* %25, align 4
  br label %666

745:                                              ; preds = %666
  %746 = load i32, i32* %43, align 4
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %748, label %809

748:                                              ; preds = %745
  %749 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %750 = load i8*, i8** @AI_PASSIVE, align 8
  %751 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %750, i8** %751, align 8
  %752 = load i8*, i8** @AF_INET, align 8
  %753 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %752, i8** %753, align 8
  %754 = load i8*, i8** @SOCK_DGRAM, align 8
  %755 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %754, i8** %755, align 8
  %756 = load i8*, i8** @IPPROTO_UDP, align 8
  %757 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %756, i8** %757, align 8
  %758 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %7)
  store i32 %758, i32* %38, align 4
  %759 = load i32, i32* %38, align 4
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %767

761:                                              ; preds = %748
  %762 = load i32, i32* @LOG_ERR, align 4
  %763 = load i32, i32* %38, align 4
  %764 = call i32 @gai_strerror(i32 %763)
  %765 = call i32 (i32, i8*, ...) @syslog(i32 %762, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %764)
  %766 = call i32 @nfsd_exit(i32 1)
  br label %767

767:                                              ; preds = %761, %748
  %768 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  store %struct.netconfig* %768, %struct.netconfig** %12, align 8
  %769 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %770 = icmp eq %struct.netconfig* %769, null
  br i1 %770, label %771, label %773

771:                                              ; preds = %767
  %772 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  br label %773

773:                                              ; preds = %771, %767
  %774 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %775 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %774, i32 0, i32 4
  %776 = load i32, i32* %775, align 4
  %777 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %16, i32 0, i32 2
  store i32 %776, i32* %777, align 4
  %778 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %779 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %778, i32 0, i32 3
  %780 = load i32, i32* %779, align 8
  %781 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %16, i32 0, i32 0
  store i32 %780, i32* %781, align 4
  %782 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %16, i32 0, i32 1
  store i32 %780, i32* %782, align 4
  %783 = load i32, i32* %47, align 4
  %784 = load i32, i32* @NFS_VER2, align 4
  %785 = icmp eq i32 %783, %784
  br i1 %785, label %786, label %794

786:                                              ; preds = %773
  %787 = load i32, i32* @NFS_PROGRAM, align 4
  %788 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %789 = call i32 @rpcb_set(i32 %787, i32 2, %struct.netconfig* %788, %struct.netbuf* %16)
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %793, label %791

791:                                              ; preds = %786
  %792 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %793

793:                                              ; preds = %791, %786
  br label %794

794:                                              ; preds = %793, %773
  %795 = load i32, i32* %47, align 4
  %796 = load i32, i32* @NFS_VER3, align 4
  %797 = icmp sle i32 %795, %796
  br i1 %797, label %798, label %806

798:                                              ; preds = %794
  %799 = load i32, i32* @NFS_PROGRAM, align 4
  %800 = load %struct.netconfig*, %struct.netconfig** %12, align 8
  %801 = call i32 @rpcb_set(i32 %799, i32 3, %struct.netconfig* %800, %struct.netbuf* %16)
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %805, label %803

803:                                              ; preds = %798
  %804 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %805

805:                                              ; preds = %803, %798
  br label %806

806:                                              ; preds = %805, %794
  %807 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %808 = call i32 @freeaddrinfo(%struct.addrinfo* %807)
  br label %809

809:                                              ; preds = %806, %745
  br label %810

810:                                              ; preds = %809, %658
  %811 = load i32, i32* %37, align 4
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %971

813:                                              ; preds = %810
  %814 = load i32, i32* %34, align 4
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %971

816:                                              ; preds = %813
  store i32 0, i32* %43, align 4
  store i32 0, i32* %25, align 4
  br label %817

817:                                              ; preds = %903, %816
  %818 = load i32, i32* %25, align 4
  %819 = load i32, i32* %41, align 4
  %820 = icmp slt i32 %818, %819
  br i1 %820, label %821, label %906

821:                                              ; preds = %817
  %822 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %823 = load i8*, i8** @AI_PASSIVE, align 8
  %824 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %823, i8** %824, align 8
  %825 = load i8*, i8** @AF_INET6, align 8
  %826 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %825, i8** %826, align 8
  %827 = load i8*, i8** @SOCK_DGRAM, align 8
  %828 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %827, i8** %828, align 8
  %829 = load i8*, i8** @IPPROTO_UDP, align 8
  %830 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %829, i8** %830, align 8
  %831 = load i8**, i8*** %50, align 8
  %832 = load i32, i32* %25, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds i8*, i8** %831, i64 %833
  %835 = load i8*, i8** %834, align 8
  %836 = call i64 @setbindhost(%struct.addrinfo** %9, i8* %835, %struct.addrinfo* byval(%struct.addrinfo) align 8 %11)
  %837 = icmp eq i64 %836, 0
  br i1 %837, label %838, label %902

838:                                              ; preds = %821
  store i32 1, i32* %43, align 4
  %839 = load i32, i32* %44, align 4
  %840 = add nsw i32 %839, 1
  store i32 %840, i32* %44, align 4
  %841 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %842 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %841, i32 0, i32 0
  %843 = load i8*, i8** %842, align 8
  %844 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %845 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %844, i32 0, i32 1
  %846 = load i8*, i8** %845, align 8
  %847 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %848 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %847, i32 0, i32 2
  %849 = load i8*, i8** %848, align 8
  %850 = call i32 @socket(i8* %843, i8* %846, i8* %849)
  store i32 %850, i32* %32, align 4
  %851 = icmp slt i32 %850, 0
  br i1 %851, label %852, label %856

852:                                              ; preds = %838
  %853 = load i32, i32* @LOG_ERR, align 4
  %854 = call i32 (i32, i8*, ...) @syslog(i32 %853, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0))
  %855 = call i32 @nfsd_exit(i32 1)
  br label %856

856:                                              ; preds = %852, %838
  %857 = load i32, i32* %32, align 4
  %858 = load i32, i32* @IPPROTO_IPV6, align 4
  %859 = load i32, i32* @IPV6_V6ONLY, align 4
  %860 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %857, i32 %858, i32 %859, i32* %29, i64 4)
  %861 = icmp slt i64 %860, 0
  br i1 %861, label %862, label %866

862:                                              ; preds = %856
  %863 = load i32, i32* @LOG_ERR, align 4
  %864 = call i32 (i32, i8*, ...) @syslog(i32 %863, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i64 0, i64 0))
  %865 = call i32 @nfsd_exit(i32 1)
  br label %866

866:                                              ; preds = %862, %856
  %867 = load i32, i32* %32, align 4
  %868 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %869 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %868, i32 0, i32 4
  %870 = load i32, i32* %869, align 4
  %871 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %872 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %871, i32 0, i32 3
  %873 = load i32, i32* %872, align 8
  %874 = call i64 @bind(i32 %867, i32 %870, i32 %873)
  %875 = icmp slt i64 %874, 0
  br i1 %875, label %876, label %885

876:                                              ; preds = %866
  %877 = load i32, i32* @LOG_ERR, align 4
  %878 = load i8**, i8*** %50, align 8
  %879 = load i32, i32* %25, align 4
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds i8*, i8** %878, i64 %880
  %882 = load i8*, i8** %881, align 8
  %883 = call i32 (i32, i8*, ...) @syslog(i32 %877, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0), i8* %882)
  %884 = call i32 @nfsd_exit(i32 1)
  br label %885

885:                                              ; preds = %876, %866
  %886 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %887 = call i32 @freeaddrinfo(%struct.addrinfo* %886)
  %888 = load i32, i32* %32, align 4
  %889 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 0
  store i32 %888, i32* %889, align 8
  %890 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 2
  store %struct.nfsd_addsock_args* null, %struct.nfsd_addsock_args** %890, align 8
  %891 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 1
  store i32 0, i32* %891, align 4
  %892 = load i32, i32* %45, align 4
  %893 = call i64 @nfssvc(i32 %892, %struct.nfsd_addsock_args* %6)
  %894 = icmp slt i64 %893, 0
  br i1 %894, label %895, label %899

895:                                              ; preds = %885
  %896 = load i32, i32* @LOG_ERR, align 4
  %897 = call i32 (i32, i8*, ...) @syslog(i32 %896, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0))
  %898 = call i32 @nfsd_exit(i32 1)
  br label %899

899:                                              ; preds = %895, %885
  %900 = load i32, i32* %32, align 4
  %901 = call i32 @close(i32 %900)
  br label %902

902:                                              ; preds = %899, %821
  br label %903

903:                                              ; preds = %902
  %904 = load i32, i32* %25, align 4
  %905 = add nsw i32 %904, 1
  store i32 %905, i32* %25, align 4
  br label %817

906:                                              ; preds = %817
  %907 = load i32, i32* %43, align 4
  %908 = icmp eq i32 %907, 1
  br i1 %908, label %909, label %970

909:                                              ; preds = %906
  %910 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %911 = load i8*, i8** @AI_PASSIVE, align 8
  %912 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %911, i8** %912, align 8
  %913 = load i8*, i8** @AF_INET6, align 8
  %914 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %913, i8** %914, align 8
  %915 = load i8*, i8** @SOCK_DGRAM, align 8
  %916 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %915, i8** %916, align 8
  %917 = load i8*, i8** @IPPROTO_UDP, align 8
  %918 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %917, i8** %918, align 8
  %919 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %9)
  store i32 %919, i32* %38, align 4
  %920 = load i32, i32* %38, align 4
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %928

922:                                              ; preds = %909
  %923 = load i32, i32* @LOG_ERR, align 4
  %924 = load i32, i32* %38, align 4
  %925 = call i32 @gai_strerror(i32 %924)
  %926 = call i32 (i32, i8*, ...) @syslog(i32 %923, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %925)
  %927 = call i32 @nfsd_exit(i32 1)
  br label %928

928:                                              ; preds = %922, %909
  %929 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store %struct.netconfig* %929, %struct.netconfig** %14, align 8
  %930 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %931 = icmp eq %struct.netconfig* %930, null
  br i1 %931, label %932, label %934

932:                                              ; preds = %928
  %933 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0))
  br label %934

934:                                              ; preds = %932, %928
  %935 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %936 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %935, i32 0, i32 4
  %937 = load i32, i32* %936, align 4
  %938 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 2
  store i32 %937, i32* %938, align 4
  %939 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %940 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %939, i32 0, i32 3
  %941 = load i32, i32* %940, align 8
  %942 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 0
  store i32 %941, i32* %942, align 4
  %943 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %18, i32 0, i32 1
  store i32 %941, i32* %943, align 4
  %944 = load i32, i32* %47, align 4
  %945 = load i32, i32* @NFS_VER2, align 4
  %946 = icmp eq i32 %944, %945
  br i1 %946, label %947, label %955

947:                                              ; preds = %934
  %948 = load i32, i32* @NFS_PROGRAM, align 4
  %949 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %950 = call i32 @rpcb_set(i32 %948, i32 2, %struct.netconfig* %949, %struct.netbuf* %18)
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %954, label %952

952:                                              ; preds = %947
  %953 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  br label %954

954:                                              ; preds = %952, %947
  br label %955

955:                                              ; preds = %954, %934
  %956 = load i32, i32* %47, align 4
  %957 = load i32, i32* @NFS_VER3, align 4
  %958 = icmp sle i32 %956, %957
  br i1 %958, label %959, label %967

959:                                              ; preds = %955
  %960 = load i32, i32* @NFS_PROGRAM, align 4
  %961 = load %struct.netconfig*, %struct.netconfig** %14, align 8
  %962 = call i32 @rpcb_set(i32 %960, i32 3, %struct.netconfig* %961, %struct.netbuf* %18)
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %966, label %964

964:                                              ; preds = %959
  %965 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  br label %966

966:                                              ; preds = %964, %959
  br label %967

967:                                              ; preds = %966, %955
  %968 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %969 = call i32 @freeaddrinfo(%struct.addrinfo* %968)
  br label %970

970:                                              ; preds = %967, %906
  br label %971

971:                                              ; preds = %970, %813, %810
  %972 = load i32, i32* %35, align 4
  %973 = icmp ne i32 %972, 0
  br i1 %973, label %974, label %1121

974:                                              ; preds = %971
  store i32 0, i32* %43, align 4
  store i32 0, i32* %25, align 4
  br label %975

975:                                              ; preds = %1053, %974
  %976 = load i32, i32* %25, align 4
  %977 = load i32, i32* %41, align 4
  %978 = icmp slt i32 %976, %977
  br i1 %978, label %979, label %1056

979:                                              ; preds = %975
  %980 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %981 = load i8*, i8** @AI_PASSIVE, align 8
  %982 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %981, i8** %982, align 8
  %983 = load i8*, i8** @AF_INET, align 8
  %984 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %983, i8** %984, align 8
  %985 = load i8*, i8** @SOCK_STREAM, align 8
  %986 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %985, i8** %986, align 8
  %987 = load i8*, i8** @IPPROTO_TCP, align 8
  %988 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %987, i8** %988, align 8
  %989 = load i8**, i8*** %50, align 8
  %990 = load i32, i32* %25, align 4
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds i8*, i8** %989, i64 %991
  %993 = load i8*, i8** %992, align 8
  %994 = call i64 @setbindhost(%struct.addrinfo** %8, i8* %993, %struct.addrinfo* byval(%struct.addrinfo) align 8 %11)
  %995 = icmp eq i64 %994, 0
  br i1 %995, label %996, label %1052

996:                                              ; preds = %979
  store i32 1, i32* %43, align 4
  %997 = load i32, i32* %44, align 4
  %998 = add nsw i32 %997, 1
  store i32 %998, i32* %44, align 4
  %999 = load i8*, i8** @AF_INET, align 8
  %1000 = load i8*, i8** @SOCK_STREAM, align 8
  %1001 = call i32 @socket(i8* %999, i8* %1000, i8* null)
  store i32 %1001, i32* %36, align 4
  %1002 = icmp slt i32 %1001, 0
  br i1 %1002, label %1003, label %1007

1003:                                             ; preds = %996
  %1004 = load i32, i32* @LOG_ERR, align 4
  %1005 = call i32 (i32, i8*, ...) @syslog(i32 %1004, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.42, i64 0, i64 0))
  %1006 = call i32 @nfsd_exit(i32 1)
  br label %1007

1007:                                             ; preds = %1003, %996
  %1008 = load i32, i32* %36, align 4
  %1009 = load i32, i32* @SOL_SOCKET, align 4
  %1010 = load i32, i32* @SO_REUSEADDR, align 4
  %1011 = bitcast i32* %29 to i8*
  %1012 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %1008, i32 %1009, i32 %1010, i8* %1011, i64 4)
  %1013 = icmp slt i64 %1012, 0
  br i1 %1013, label %1014, label %1017

1014:                                             ; preds = %1007
  %1015 = load i32, i32* @LOG_ERR, align 4
  %1016 = call i32 (i32, i8*, ...) @syslog(i32 %1015, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0))
  br label %1017

1017:                                             ; preds = %1014, %1007
  %1018 = load i32, i32* %36, align 4
  %1019 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %1020 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1019, i32 0, i32 4
  %1021 = load i32, i32* %1020, align 4
  %1022 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %1023 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1022, i32 0, i32 3
  %1024 = load i32, i32* %1023, align 8
  %1025 = call i64 @bind(i32 %1018, i32 %1021, i32 %1024)
  %1026 = icmp slt i64 %1025, 0
  br i1 %1026, label %1027, label %1036

1027:                                             ; preds = %1017
  %1028 = load i32, i32* @LOG_ERR, align 4
  %1029 = load i8**, i8*** %50, align 8
  %1030 = load i32, i32* %25, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds i8*, i8** %1029, i64 %1031
  %1033 = load i8*, i8** %1032, align 8
  %1034 = call i32 (i32, i8*, ...) @syslog(i32 %1028, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i8* %1033)
  %1035 = call i32 @nfsd_exit(i32 1)
  br label %1036

1036:                                             ; preds = %1027, %1017
  %1037 = load i32, i32* %36, align 4
  %1038 = call i64 @listen(i32 %1037, i32 -1)
  %1039 = icmp slt i64 %1038, 0
  br i1 %1039, label %1040, label %1044

1040:                                             ; preds = %1036
  %1041 = load i32, i32* @LOG_ERR, align 4
  %1042 = call i32 (i32, i8*, ...) @syslog(i32 %1041, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0))
  %1043 = call i32 @nfsd_exit(i32 1)
  br label %1044

1044:                                             ; preds = %1040, %1036
  %1045 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %1046 = call i32 @freeaddrinfo(%struct.addrinfo* %1045)
  %1047 = load i32, i32* %36, align 4
  %1048 = call i32 @FD_SET(i32 %1047, i32* %22)
  %1049 = load i32, i32* %36, align 4
  store i32 %1049, i32* %26, align 4
  %1050 = load i32, i32* %24, align 4
  %1051 = add nsw i32 %1050, 1
  store i32 %1051, i32* %24, align 4
  br label %1052

1052:                                             ; preds = %1044, %979
  br label %1053

1053:                                             ; preds = %1052
  %1054 = load i32, i32* %25, align 4
  %1055 = add nsw i32 %1054, 1
  store i32 %1055, i32* %25, align 4
  br label %975

1056:                                             ; preds = %975
  %1057 = load i32, i32* %43, align 4
  %1058 = icmp eq i32 %1057, 1
  br i1 %1058, label %1059, label %1120

1059:                                             ; preds = %1056
  %1060 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %1061 = load i8*, i8** @AI_PASSIVE, align 8
  %1062 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %1061, i8** %1062, align 8
  %1063 = load i8*, i8** @AF_INET, align 8
  %1064 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %1063, i8** %1064, align 8
  %1065 = load i8*, i8** @SOCK_STREAM, align 8
  %1066 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %1065, i8** %1066, align 8
  %1067 = load i8*, i8** @IPPROTO_TCP, align 8
  %1068 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %1067, i8** %1068, align 8
  %1069 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %8)
  store i32 %1069, i32* %38, align 4
  %1070 = load i32, i32* %38, align 4
  %1071 = icmp ne i32 %1070, 0
  br i1 %1071, label %1072, label %1078

1072:                                             ; preds = %1059
  %1073 = load i32, i32* @LOG_ERR, align 4
  %1074 = load i32, i32* %38, align 4
  %1075 = call i32 @gai_strerror(i32 %1074)
  %1076 = call i32 (i32, i8*, ...) @syslog(i32 %1073, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %1075)
  %1077 = call i32 @nfsd_exit(i32 1)
  br label %1078

1078:                                             ; preds = %1072, %1059
  %1079 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  store %struct.netconfig* %1079, %struct.netconfig** %13, align 8
  %1080 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %1081 = icmp eq %struct.netconfig* %1080, null
  br i1 %1081, label %1082, label %1084

1082:                                             ; preds = %1078
  %1083 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  br label %1084

1084:                                             ; preds = %1082, %1078
  %1085 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %1086 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1085, i32 0, i32 4
  %1087 = load i32, i32* %1086, align 4
  %1088 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %17, i32 0, i32 2
  store i32 %1087, i32* %1088, align 4
  %1089 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %1090 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1089, i32 0, i32 3
  %1091 = load i32, i32* %1090, align 8
  %1092 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %17, i32 0, i32 0
  store i32 %1091, i32* %1092, align 4
  %1093 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %17, i32 0, i32 1
  store i32 %1091, i32* %1093, align 4
  %1094 = load i32, i32* %47, align 4
  %1095 = load i32, i32* @NFS_VER2, align 4
  %1096 = icmp eq i32 %1094, %1095
  br i1 %1096, label %1097, label %1105

1097:                                             ; preds = %1084
  %1098 = load i32, i32* @NFS_PROGRAM, align 4
  %1099 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %1100 = call i32 @rpcb_set(i32 %1098, i32 2, %struct.netconfig* %1099, %struct.netbuf* %17)
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1104, label %1102

1102:                                             ; preds = %1097
  %1103 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  br label %1104

1104:                                             ; preds = %1102, %1097
  br label %1105

1105:                                             ; preds = %1104, %1084
  %1106 = load i32, i32* %47, align 4
  %1107 = load i32, i32* @NFS_VER3, align 4
  %1108 = icmp sle i32 %1106, %1107
  br i1 %1108, label %1109, label %1117

1109:                                             ; preds = %1105
  %1110 = load i32, i32* @NFS_PROGRAM, align 4
  %1111 = load %struct.netconfig*, %struct.netconfig** %13, align 8
  %1112 = call i32 @rpcb_set(i32 %1110, i32 3, %struct.netconfig* %1111, %struct.netbuf* %17)
  %1113 = icmp ne i32 %1112, 0
  br i1 %1113, label %1116, label %1114

1114:                                             ; preds = %1109
  %1115 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  br label %1116

1116:                                             ; preds = %1114, %1109
  br label %1117

1117:                                             ; preds = %1116, %1105
  %1118 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %1119 = call i32 @freeaddrinfo(%struct.addrinfo* %1118)
  br label %1120

1120:                                             ; preds = %1117, %1056
  br label %1121

1121:                                             ; preds = %1120, %971
  %1122 = load i32, i32* %35, align 4
  %1123 = icmp ne i32 %1122, 0
  br i1 %1123, label %1124, label %1296

1124:                                             ; preds = %1121
  %1125 = load i32, i32* %34, align 4
  %1126 = icmp ne i32 %1125, 0
  br i1 %1126, label %1127, label %1296

1127:                                             ; preds = %1124
  store i32 0, i32* %43, align 4
  store i32 0, i32* %25, align 4
  br label %1128

1128:                                             ; preds = %1228, %1127
  %1129 = load i32, i32* %25, align 4
  %1130 = load i32, i32* %41, align 4
  %1131 = icmp slt i32 %1129, %1130
  br i1 %1131, label %1132, label %1231

1132:                                             ; preds = %1128
  %1133 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %1134 = load i8*, i8** @AI_PASSIVE, align 8
  %1135 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %1134, i8** %1135, align 8
  %1136 = load i8*, i8** @AF_INET6, align 8
  %1137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %1136, i8** %1137, align 8
  %1138 = load i8*, i8** @SOCK_STREAM, align 8
  %1139 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %1138, i8** %1139, align 8
  %1140 = load i8*, i8** @IPPROTO_TCP, align 8
  %1141 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %1140, i8** %1141, align 8
  %1142 = load i8**, i8*** %50, align 8
  %1143 = load i32, i32* %25, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds i8*, i8** %1142, i64 %1144
  %1146 = load i8*, i8** %1145, align 8
  %1147 = call i64 @setbindhost(%struct.addrinfo** %10, i8* %1146, %struct.addrinfo* byval(%struct.addrinfo) align 8 %11)
  %1148 = icmp eq i64 %1147, 0
  br i1 %1148, label %1149, label %1227

1149:                                             ; preds = %1132
  store i32 1, i32* %43, align 4
  %1150 = load i32, i32* %44, align 4
  %1151 = add nsw i32 %1150, 1
  store i32 %1151, i32* %44, align 4
  %1152 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1153 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1152, i32 0, i32 0
  %1154 = load i8*, i8** %1153, align 8
  %1155 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1156 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1155, i32 0, i32 1
  %1157 = load i8*, i8** %1156, align 8
  %1158 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1159 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1158, i32 0, i32 2
  %1160 = load i8*, i8** %1159, align 8
  %1161 = call i32 @socket(i8* %1154, i8* %1157, i8* %1160)
  store i32 %1161, i32* %33, align 4
  %1162 = icmp slt i32 %1161, 0
  br i1 %1162, label %1163, label %1167

1163:                                             ; preds = %1149
  %1164 = load i32, i32* @LOG_ERR, align 4
  %1165 = call i32 (i32, i8*, ...) @syslog(i32 %1164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0))
  %1166 = call i32 @nfsd_exit(i32 1)
  br label %1167

1167:                                             ; preds = %1163, %1149
  %1168 = load i32, i32* %33, align 4
  %1169 = load i32, i32* @SOL_SOCKET, align 4
  %1170 = load i32, i32* @SO_REUSEADDR, align 4
  %1171 = bitcast i32* %29 to i8*
  %1172 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %1168, i32 %1169, i32 %1170, i8* %1171, i64 4)
  %1173 = icmp slt i64 %1172, 0
  br i1 %1173, label %1174, label %1177

1174:                                             ; preds = %1167
  %1175 = load i32, i32* @LOG_ERR, align 4
  %1176 = call i32 (i32, i8*, ...) @syslog(i32 %1175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0))
  br label %1177

1177:                                             ; preds = %1174, %1167
  %1178 = load i32, i32* %33, align 4
  %1179 = load i32, i32* @IPPROTO_IPV6, align 4
  %1180 = load i32, i32* @IPV6_V6ONLY, align 4
  %1181 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %1178, i32 %1179, i32 %1180, i32* %29, i64 4)
  %1182 = icmp slt i64 %1181, 0
  br i1 %1182, label %1183, label %1187

1183:                                             ; preds = %1177
  %1184 = load i32, i32* @LOG_ERR, align 4
  %1185 = call i32 (i32, i8*, ...) @syslog(i32 %1184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.47, i64 0, i64 0))
  %1186 = call i32 @nfsd_exit(i32 1)
  br label %1187

1187:                                             ; preds = %1183, %1177
  %1188 = load i32, i32* %33, align 4
  %1189 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1190 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1189, i32 0, i32 4
  %1191 = load i32, i32* %1190, align 4
  %1192 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1193 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1192, i32 0, i32 3
  %1194 = load i32, i32* %1193, align 8
  %1195 = call i64 @bind(i32 %1188, i32 %1191, i32 %1194)
  %1196 = icmp slt i64 %1195, 0
  br i1 %1196, label %1197, label %1206

1197:                                             ; preds = %1187
  %1198 = load i32, i32* @LOG_ERR, align 4
  %1199 = load i8**, i8*** %50, align 8
  %1200 = load i32, i32* %25, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds i8*, i8** %1199, i64 %1201
  %1203 = load i8*, i8** %1202, align 8
  %1204 = call i32 (i32, i8*, ...) @syslog(i32 %1198, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i8* %1203)
  %1205 = call i32 @nfsd_exit(i32 1)
  br label %1206

1206:                                             ; preds = %1197, %1187
  %1207 = load i32, i32* %33, align 4
  %1208 = call i64 @listen(i32 %1207, i32 -1)
  %1209 = icmp slt i64 %1208, 0
  br i1 %1209, label %1210, label %1214

1210:                                             ; preds = %1206
  %1211 = load i32, i32* @LOG_ERR, align 4
  %1212 = call i32 (i32, i8*, ...) @syslog(i32 %1211, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0))
  %1213 = call i32 @nfsd_exit(i32 1)
  br label %1214

1214:                                             ; preds = %1210, %1206
  %1215 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1216 = call i32 @freeaddrinfo(%struct.addrinfo* %1215)
  %1217 = load i32, i32* %33, align 4
  %1218 = call i32 @FD_SET(i32 %1217, i32* %22)
  %1219 = load i32, i32* %26, align 4
  %1220 = load i32, i32* %33, align 4
  %1221 = icmp slt i32 %1219, %1220
  br i1 %1221, label %1222, label %1224

1222:                                             ; preds = %1214
  %1223 = load i32, i32* %33, align 4
  store i32 %1223, i32* %26, align 4
  br label %1224

1224:                                             ; preds = %1222, %1214
  %1225 = load i32, i32* %24, align 4
  %1226 = add nsw i32 %1225, 1
  store i32 %1226, i32* %24, align 4
  br label %1227

1227:                                             ; preds = %1224, %1132
  br label %1228

1228:                                             ; preds = %1227
  %1229 = load i32, i32* %25, align 4
  %1230 = add nsw i32 %1229, 1
  store i32 %1230, i32* %25, align 4
  br label %1128

1231:                                             ; preds = %1128
  %1232 = load i32, i32* %43, align 4
  %1233 = icmp eq i32 %1232, 1
  br i1 %1233, label %1234, label %1295

1234:                                             ; preds = %1231
  %1235 = call i32 @memset(%struct.addrinfo* %11, i32 0, i32 40)
  %1236 = load i8*, i8** @AI_PASSIVE, align 8
  %1237 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 5
  store i8* %1236, i8** %1237, align 8
  %1238 = load i8*, i8** @AF_INET6, align 8
  %1239 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 0
  store i8* %1238, i8** %1239, align 8
  %1240 = load i8*, i8** @SOCK_STREAM, align 8
  %1241 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 1
  store i8* %1240, i8** %1241, align 8
  %1242 = load i8*, i8** @IPPROTO_TCP, align 8
  %1243 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %11, i32 0, i32 2
  store i8* %1242, i8** %1243, align 8
  %1244 = call i32 @getaddrinfo(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), %struct.addrinfo* %11, %struct.addrinfo** %10)
  store i32 %1244, i32* %38, align 4
  %1245 = load i32, i32* %38, align 4
  %1246 = icmp ne i32 %1245, 0
  br i1 %1246, label %1247, label %1253

1247:                                             ; preds = %1234
  %1248 = load i32, i32* @LOG_ERR, align 4
  %1249 = load i32, i32* %38, align 4
  %1250 = call i32 @gai_strerror(i32 %1249)
  %1251 = call i32 (i32, i8*, ...) @syslog(i32 %1248, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %1250)
  %1252 = call i32 @nfsd_exit(i32 1)
  br label %1253

1253:                                             ; preds = %1247, %1234
  %1254 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.netconfig* %1254, %struct.netconfig** %15, align 8
  %1255 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %1256 = icmp eq %struct.netconfig* %1255, null
  br i1 %1256, label %1257, label %1259

1257:                                             ; preds = %1253
  %1258 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  br label %1259

1259:                                             ; preds = %1257, %1253
  %1260 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1261 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1260, i32 0, i32 4
  %1262 = load i32, i32* %1261, align 4
  %1263 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 2
  store i32 %1262, i32* %1263, align 4
  %1264 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1265 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %1264, i32 0, i32 3
  %1266 = load i32, i32* %1265, align 8
  %1267 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 0
  store i32 %1266, i32* %1267, align 4
  %1268 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %19, i32 0, i32 1
  store i32 %1266, i32* %1268, align 4
  %1269 = load i32, i32* %47, align 4
  %1270 = load i32, i32* @NFS_VER2, align 4
  %1271 = icmp eq i32 %1269, %1270
  br i1 %1271, label %1272, label %1280

1272:                                             ; preds = %1259
  %1273 = load i32, i32* @NFS_PROGRAM, align 4
  %1274 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %1275 = call i32 @rpcb_set(i32 %1273, i32 2, %struct.netconfig* %1274, %struct.netbuf* %19)
  %1276 = icmp ne i32 %1275, 0
  br i1 %1276, label %1279, label %1277

1277:                                             ; preds = %1272
  %1278 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  br label %1279

1279:                                             ; preds = %1277, %1272
  br label %1280

1280:                                             ; preds = %1279, %1259
  %1281 = load i32, i32* %47, align 4
  %1282 = load i32, i32* @NFS_VER3, align 4
  %1283 = icmp sle i32 %1281, %1282
  br i1 %1283, label %1284, label %1292

1284:                                             ; preds = %1280
  %1285 = load i32, i32* @NFS_PROGRAM, align 4
  %1286 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %1287 = call i32 @rpcb_set(i32 %1285, i32 3, %struct.netconfig* %1286, %struct.netbuf* %19)
  %1288 = icmp ne i32 %1287, 0
  br i1 %1288, label %1291, label %1289

1289:                                             ; preds = %1284
  %1290 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  br label %1291

1291:                                             ; preds = %1289, %1284
  br label %1292

1292:                                             ; preds = %1291, %1280
  %1293 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %1294 = call i32 @freeaddrinfo(%struct.addrinfo* %1293)
  br label %1295

1295:                                             ; preds = %1292, %1231
  br label %1296

1296:                                             ; preds = %1295, %1124, %1121
  %1297 = load i32, i32* %44, align 4
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1299, label %1303

1299:                                             ; preds = %1296
  %1300 = load i32, i32* @LOG_ERR, align 4
  %1301 = call i32 (i32, i8*, ...) @syslog(i32 %1300, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0))
  %1302 = call i32 @nfsd_exit(i32 1)
  br label %1303

1303:                                             ; preds = %1299, %1296
  %1304 = load i32, i32* %35, align 4
  %1305 = icmp ne i32 %1304, 0
  br i1 %1305, label %1306, label %1313

1306:                                             ; preds = %1303
  %1307 = load i32, i32* %24, align 4
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1309, label %1313

1309:                                             ; preds = %1306
  %1310 = load i32, i32* @LOG_ERR, align 4
  %1311 = call i32 (i32, i8*, ...) @syslog(i32 %1310, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.50, i64 0, i64 0))
  %1312 = call i32 @nfsd_exit(i32 1)
  br label %1313

1313:                                             ; preds = %1309, %1306, %1303
  %1314 = call i32 @setproctitle(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0))
  %1315 = load i32, i32* %35, align 4
  %1316 = icmp ne i32 %1315, 0
  br i1 %1316, label %1320, label %1317

1317:                                             ; preds = %1313
  %1318 = load i8*, i8** %53, align 8
  %1319 = call i32 @start_server(i32 1, %struct.nfsd_nfsd_args* %52, i8* %1318)
  br label %1320

1320:                                             ; preds = %1317, %1313
  br label %1321

1321:                                             ; preds = %1394, %1335, %1320
  %1322 = load i32, i32* %22, align 4
  store i32 %1322, i32* %21, align 4
  %1323 = load i32, i32* %24, align 4
  %1324 = icmp sgt i32 %1323, 1
  br i1 %1324, label %1325, label %1341

1325:                                             ; preds = %1321
  %1326 = load i32, i32* %26, align 4
  %1327 = add nsw i32 %1326, 1
  %1328 = call i32 @select(i32 %1327, i32* %21, i32* null, i32* null, i32* null)
  %1329 = icmp slt i32 %1328, 1
  br i1 %1329, label %1330, label %1340

1330:                                             ; preds = %1325
  %1331 = load i32, i32* @errno, align 4
  store i32 %1331, i32* %39, align 4
  %1332 = load i32, i32* %39, align 4
  %1333 = load i32, i32* @EINTR, align 4
  %1334 = icmp eq i32 %1332, %1333
  br i1 %1334, label %1335, label %1336

1335:                                             ; preds = %1330
  br label %1321

1336:                                             ; preds = %1330
  %1337 = load i32, i32* @LOG_ERR, align 4
  %1338 = call i32 (i32, i8*, ...) @syslog(i32 %1337, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i64 0, i64 0))
  %1339 = call i32 @nfsd_exit(i32 1)
  br label %1340

1340:                                             ; preds = %1336, %1325
  br label %1341

1341:                                             ; preds = %1340, %1321
  store i32 0, i32* %36, align 4
  br label %1342

1342:                                             ; preds = %1391, %1341
  %1343 = load i32, i32* %36, align 4
  %1344 = load i32, i32* %26, align 4
  %1345 = icmp sle i32 %1343, %1344
  br i1 %1345, label %1346, label %1394

1346:                                             ; preds = %1342
  %1347 = load i32, i32* %36, align 4
  %1348 = call i64 @FD_ISSET(i32 %1347, i32* %21)
  %1349 = icmp ne i64 %1348, 0
  br i1 %1349, label %1350, label %1390

1350:                                             ; preds = %1346
  store i32 4, i32* %28, align 4
  %1351 = load i32, i32* %36, align 4
  %1352 = bitcast %struct.sockaddr_storage* %20 to %struct.sockaddr*
  %1353 = call i32 @accept(i32 %1351, %struct.sockaddr* %1352, i32* %28)
  store i32 %1353, i32* %27, align 4
  %1354 = icmp slt i32 %1353, 0
  br i1 %1354, label %1355, label %1369

1355:                                             ; preds = %1350
  %1356 = load i32, i32* @errno, align 4
  store i32 %1356, i32* %39, align 4
  %1357 = load i32, i32* @LOG_ERR, align 4
  %1358 = call i32 (i32, i8*, ...) @syslog(i32 %1357, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0))
  %1359 = load i32, i32* %39, align 4
  %1360 = load i32, i32* @ECONNABORTED, align 4
  %1361 = icmp eq i32 %1359, %1360
  br i1 %1361, label %1366, label %1362

1362:                                             ; preds = %1355
  %1363 = load i32, i32* %39, align 4
  %1364 = load i32, i32* @EINTR, align 4
  %1365 = icmp eq i32 %1363, %1364
  br i1 %1365, label %1366, label %1367

1366:                                             ; preds = %1362, %1355
  br label %1391

1367:                                             ; preds = %1362
  %1368 = call i32 @nfsd_exit(i32 1)
  br label %1369

1369:                                             ; preds = %1367, %1350
  %1370 = load i32, i32* %27, align 4
  %1371 = load i32, i32* @SOL_SOCKET, align 4
  %1372 = load i32, i32* @SO_KEEPALIVE, align 4
  %1373 = bitcast i32* %29 to i8*
  %1374 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %1370, i32 %1371, i32 %1372, i8* %1373, i64 4)
  %1375 = icmp slt i64 %1374, 0
  br i1 %1375, label %1376, label %1379

1376:                                             ; preds = %1369
  %1377 = load i32, i32* @LOG_ERR, align 4
  %1378 = call i32 (i32, i8*, ...) @syslog(i32 %1377, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0))
  br label %1379

1379:                                             ; preds = %1376, %1369
  %1380 = load i32, i32* %27, align 4
  %1381 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 0
  store i32 %1380, i32* %1381, align 8
  %1382 = bitcast %struct.sockaddr_storage* %20 to %struct.nfsd_addsock_args*
  %1383 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 2
  store %struct.nfsd_addsock_args* %1382, %struct.nfsd_addsock_args** %1383, align 8
  %1384 = load i32, i32* %28, align 4
  %1385 = getelementptr inbounds %struct.nfsd_addsock_args, %struct.nfsd_addsock_args* %6, i32 0, i32 1
  store i32 %1384, i32* %1385, align 4
  %1386 = load i32, i32* %45, align 4
  %1387 = call i64 @nfssvc(i32 %1386, %struct.nfsd_addsock_args* %6)
  %1388 = load i32, i32* %27, align 4
  %1389 = call i32 @close(i32 %1388)
  br label %1390

1390:                                             ; preds = %1379, %1346
  br label %1391

1391:                                             ; preds = %1390, %1366
  %1392 = load i32, i32* %36, align 4
  %1393 = add nsw i32 %1392, 1
  store i32 %1393, i32* %36, align 4
  br label %1342

1394:                                             ; preds = %1342
  br label %1321
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @set_nfsdcnt(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @parse_dsserver(i8*, %struct.nfsd_nfsd_args*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @modfind(i8*) #1

declare dso_local i64 @kldload(i8*) #1

declare dso_local i32 @socket(i8*, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @unregistration(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @rpcb_set(i32, i32, %struct.netconfig*, %struct.netbuf*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @open_stable(i64*, i32*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i64 @nfssvc(i32, %struct.nfsd_addsock_args*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @nfsd_exit(i32) #1

declare dso_local i32 @setproctitle(i8*) #1

declare dso_local i32 @start_server(i32, %struct.nfsd_nfsd_args*, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @setbindhost(%struct.addrinfo**, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, ...) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
