; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }
%struct.env = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, %struct.env* }
%struct.TYPE_3__ = type { i32 }
%struct.event = type { i32 }
%struct.timeval = type { i32 }

@PROC_MAIN = common dso_local global i32 0, align 4
@ypldap_process = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dD:nf:v\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not parse macro definition %s\00", align 1
@YPLDAP_OPT_NOACTION = common dso_local global i32 0, align 4
@opts = common dso_local global i32 0, align 4
@conffile = common dso_local global i32 0, align 4
@YPLDAP_OPT_VERBOSE = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"configuration OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"need root privileges\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"failed to daemonize\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"startup%s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" [debug mode]\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@pipe_main2client = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@client_pid = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@main_sig_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@main_dispatch_client = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@YPLDAP_USER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"cannot drop privileges\00", align 1
@main_init_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca %struct.env, align 8
  %10 = alloca %struct.event, align 4
  %11 = alloca %struct.event, align 4
  %12 = alloca %struct.event, align 4
  %13 = alloca %struct.event, align 4
  %14 = alloca %struct.event, align 4
  %15 = alloca %struct.timeval, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* @PROC_MAIN, align 4
  store i32 %16, i32* @ypldap_process, align 4
  %17 = call i32 @log_init(i32 1)
  br label %18

18:                                               ; preds = %46, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %44 [
    i32 100, label %25
    i32 68, label %26
    i32 110, label %34
    i32 102, label %38
    i32 118, label %40
  ]

25:                                               ; preds = %23
  store i32 2, i32* %7, align 4
  br label %46

26:                                               ; preds = %23
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @cmdline_symset(i32 %27)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @log_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %46

34:                                               ; preds = %23
  store i32 2, i32* %7, align 4
  %35 = load i32, i32* @YPLDAP_OPT_NOACTION, align 4
  %36 = load i32, i32* @opts, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @opts, align 4
  br label %46

38:                                               ; preds = %23
  %39 = load i32, i32* @optarg, align 4
  store i32 %39, i32* @conffile, align 4
  br label %46

40:                                               ; preds = %23
  %41 = load i32, i32* @YPLDAP_OPT_VERBOSE, align 4
  %42 = load i32, i32* @opts, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @opts, align 4
  br label %46

44:                                               ; preds = %23
  %45 = call i32 (...) @usage()
  br label %46

46:                                               ; preds = %44, %40, %38, %34, %33, %25
  br label %18

47:                                               ; preds = %18
  %48 = load i64, i64* @optind, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load i64, i64* @optind, align 8
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53
  store i8** %55, i8*** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %47
  %61 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 2
  %62 = call i32 @RB_INIT(i32* %61)
  %63 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 1
  %64 = call i32 @RB_INIT(i32* %63)
  %65 = load i32, i32* @conffile, align 4
  %66 = load i32, i32* @opts, align 4
  %67 = call i64 @parse_config(%struct.env* %9, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %60
  %72 = load i32, i32* @opts, align 4
  %73 = load i32, i32* @YPLDAP_OPT_NOACTION, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %79 = call i32 @exit(i32 0) #3
  unreachable

80:                                               ; preds = %71
  %81 = call i64 (...) @geteuid()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %80
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @log_init(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = call i32 @daemon(i32 1, i32 0)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %85
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %97, 1
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %101 = call i32 @log_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @AF_UNIX, align 4
  %103 = load i32, i32* @SOCK_STREAM, align 4
  %104 = load i32, i32* @SOCK_NONBLOCK, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @PF_UNSPEC, align 4
  %107 = load i32*, i32** @pipe_main2client, align 8
  %108 = call i32 @socketpair(i32 %102, i32 %105, i32 %106, i32* %107)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = call i32 @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %96
  %113 = load i32*, i32** @pipe_main2client, align 8
  %114 = call i32 @ldapclient(i32* %113)
  store i32 %114, i32* @client_pid, align 4
  %115 = call i32 @setproctitle(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %116 = call i32 (...) @event_init()
  %117 = load i32, i32* @SIGINT, align 4
  %118 = load i32, i32* @main_sig_handler, align 4
  %119 = call i32 @signal_set(%struct.event* %10, i32 %117, i32 %118, %struct.env* %9)
  %120 = load i32, i32* @SIGTERM, align 4
  %121 = load i32, i32* @main_sig_handler, align 4
  %122 = call i32 @signal_set(%struct.event* %11, i32 %120, i32 %121, %struct.env* %9)
  %123 = load i32, i32* @SIGHUP, align 4
  %124 = load i32, i32* @main_sig_handler, align 4
  %125 = call i32 @signal_set(%struct.event* %13, i32 %123, i32 %124, %struct.env* %9)
  %126 = load i32, i32* @SIGCHLD, align 4
  %127 = load i32, i32* @main_sig_handler, align 4
  %128 = call i32 @signal_set(%struct.event* %12, i32 %126, i32 %127, %struct.env* %9)
  %129 = call i32 @signal_add(%struct.event* %10, i32* null)
  %130 = call i32 @signal_add(%struct.event* %11, i32* null)
  %131 = call i32 @signal_add(%struct.event* %13, i32* null)
  %132 = call i32 @signal_add(%struct.event* %12, i32* null)
  %133 = load i32*, i32** @pipe_main2client, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @close(i32 %135)
  %137 = call %struct.TYPE_4__* @calloc(i32 1, i32 24)
  %138 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %138, align 8
  %139 = icmp eq %struct.TYPE_4__* %137, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %112
  %141 = call i32 @fatal(i8* null)
  br label %142

142:                                              ; preds = %140, %112
  %143 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 3
  %146 = load i32*, i32** @pipe_main2client, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @imsg_init(%struct.TYPE_3__* %145, i32 %148)
  %150 = load i32, i32* @main_dispatch_client, align 4
  %151 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @EV_READ, align 4
  %155 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  %158 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 4
  store %struct.env* %9, %struct.env** %160, align 8
  %161 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @event_set(i32* %163, i32 %168, i32 %172, i32 %176, %struct.env* %9)
  %178 = getelementptr inbounds %struct.env, %struct.env* %9, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = call i32 @event_add(i32* %180, i32* null)
  %182 = call i32 @yp_init(%struct.env* %9)
  %183 = load i32, i32* @YPLDAP_USER, align 4
  %184 = call %struct.passwd* @getpwnam(i32 %183)
  store %struct.passwd* %184, %struct.passwd** %8, align 8
  %185 = icmp eq %struct.passwd* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %142
  %187 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %142
  %189 = load %struct.passwd*, %struct.passwd** %8, align 8
  %190 = getelementptr inbounds %struct.passwd, %struct.passwd* %189, i32 0, i32 1
  %191 = call i64 @setgroups(i32 1, i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %217, label %193

193:                                              ; preds = %188
  %194 = load %struct.passwd*, %struct.passwd** %8, align 8
  %195 = getelementptr inbounds %struct.passwd, %struct.passwd* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.passwd*, %struct.passwd** %8, align 8
  %198 = getelementptr inbounds %struct.passwd, %struct.passwd* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.passwd*, %struct.passwd** %8, align 8
  %201 = getelementptr inbounds %struct.passwd, %struct.passwd* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @setresgid(i32 %196, i32 %199, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %217, label %205

205:                                              ; preds = %193
  %206 = load %struct.passwd*, %struct.passwd** %8, align 8
  %207 = getelementptr inbounds %struct.passwd, %struct.passwd* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.passwd*, %struct.passwd** %8, align 8
  %210 = getelementptr inbounds %struct.passwd, %struct.passwd* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.passwd*, %struct.passwd** %8, align 8
  %213 = getelementptr inbounds %struct.passwd, %struct.passwd* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @setresuid(i32 %208, i32 %211, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %205, %193, %188
  %218 = call i32 @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %205
  %220 = call i32 @memset(%struct.timeval* %15, i32 0, i32 4)
  %221 = load i32, i32* @main_init_timer, align 4
  %222 = call i32 @evtimer_set(%struct.event* %14, i32 %221, %struct.env* %9)
  %223 = call i32 @evtimer_add(%struct.event* %14, %struct.timeval* %15)
  %224 = call i32 (...) @yp_enable_events()
  %225 = call i32 (...) @event_dispatch()
  %226 = call i32 (...) @main_shutdown()
  ret i32 0
}

declare dso_local i32 @log_init(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @cmdline_symset(i32) #1

declare dso_local i32 @log_warnx(i8*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i64 @parse_config(%struct.env*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @ldapclient(i32*) #1

declare dso_local i32 @setproctitle(i8*) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @signal_set(%struct.event*, i32, i32, %struct.env*) #1

declare dso_local i32 @signal_add(%struct.event*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @imsg_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.env*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @yp_init(%struct.env*) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i64 @setgroups(i32, i32*) #1

declare dso_local i64 @setresgid(i32, i32, i32) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i32 @evtimer_set(%struct.event*, i32, %struct.env*) #1

declare dso_local i32 @evtimer_add(%struct.event*, %struct.timeval*) #1

declare dso_local i32 @yp_enable_events(...) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @main_shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
