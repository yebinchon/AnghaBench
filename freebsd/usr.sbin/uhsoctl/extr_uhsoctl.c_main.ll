; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.ctx = type { i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i64, i64, i32, i32*, i32*, i64, i32*, i32* }
%struct.itimerval = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@timers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@RESOLV_PATH = common dso_local global i8* null, align 8
@MODE_CONN = common dso_local global i32 0, align 4
@FLG_DELAYED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"?ha:p:c:u:k:r:f:dbn\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid context ID, defaulting to 1\00", align 1
@FLG_NODAEMON = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no interface given\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Disconnecting %s\0A\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@sig_handle = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@tmr_watchdog = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Failed to open %s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s does not appear to be a uhso device\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Failed to obtain a control port, try specifying one manually\00", align 1
@running = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@FLG_WDEXP = common dso_local global i32 0, align 4
@FLG_DAEMON = common dso_local global i32 0, align 4
@IPASSIGNED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Status: %s (%s)\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@network_access_type = common dso_local global i8** null, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c", signal: %d dBm\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\09\09\09\0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@syslog_open = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ctx, align 8
  %15 = alloca %struct.itimerval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %16 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @timers, i32 0, i32 1))
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @timers, i32 0, i32 0), align 4
  %17 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 3
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 2
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 1
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 4
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 10
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 17
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 16
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 15
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 5
  store i32 -1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** @RESOLV_PATH, align 8
  %29 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 7
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 14
  store i32* null, i32** %30, align 8
  %31 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 13
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 8
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @MODE_CONN, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @FLG_DELAYED, align 4
  %35 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %121, %2
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = call i32 @getopt(i32 %39, i8** %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %122

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %114 [
    i32 97, label %45
    i32 99, label %52
    i32 112, label %67
    i32 117, label %74
    i32 107, label %81
    i32 114, label %88
    i32 100, label %95
    i32 98, label %96
    i32 110, label %102
    i32 102, label %107
    i32 104, label %113
    i32 63, label %113
  ]

45:                                               ; preds = %43
  %46 = load i8**, i8*** %5, align 8
  %47 = load i64, i64* @optind, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  br label %121

52:                                               ; preds = %43
  %53 = load i8**, i8*** %5, align 8
  %54 = load i64, i64* @optind, align 8
  %55 = sub i64 %54, 1
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strtol(i8* %57, i32* null, i32 10)
  %59 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %52
  br label %121

67:                                               ; preds = %43
  %68 = load i8**, i8*** %5, align 8
  %69 = load i64, i64* @optind, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 4
  store i8* %72, i8** %73, align 8
  br label %121

74:                                               ; preds = %43
  %75 = load i8**, i8*** %5, align 8
  %76 = load i64, i64* @optind, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  br label %121

81:                                               ; preds = %43
  %82 = load i8**, i8*** %5, align 8
  %83 = load i64, i64* @optind, align 8
  %84 = sub i64 %83, 1
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 3
  store i8* %86, i8** %87, align 8
  br label %121

88:                                               ; preds = %43
  %89 = load i8**, i8*** %5, align 8
  %90 = load i64, i64* @optind, align 8
  %91 = sub i64 %90, 1
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 7
  store i8* %93, i8** %94, align 8
  br label %121

95:                                               ; preds = %43
  store i32 128, i32* %8, align 4
  br label %121

96:                                               ; preds = %43
  %97 = load i32, i32* @FLG_DELAYED, align 4
  %98 = xor i32 %97, -1
  %99 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %121

102:                                              ; preds = %43
  %103 = load i32, i32* @FLG_NODAEMON, align 4
  %104 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %121

107:                                              ; preds = %43
  %108 = load i8**, i8*** %5, align 8
  %109 = load i64, i64* @optind, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %10, align 8
  br label %121

113:                                              ; preds = %43, %43
  br label %114

114:                                              ; preds = %43, %113
  %115 = load i8**, i8*** %5, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @usage(i8* %117)
  %119 = load i32, i32* @EXIT_SUCCESS, align 4
  %120 = call i32 @exit(i32 %119) #3
  unreachable

121:                                              ; preds = %107, %102, %96, %95, %88, %81, %74, %67, %66, %45
  br label %38

122:                                              ; preds = %38
  %123 = load i64, i64* @optind, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %4, align 4
  %128 = load i64, i64* @optind, align 8
  %129 = load i8**, i8*** %5, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 %128
  store i8** %130, i8*** %5, align 8
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %122
  %136 = load i8**, i8*** %5, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %9, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @strdup(i8* %142)
  %144 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 12
  store i32 %143, i32* %144, align 8
  %145 = load i32, i32* %8, align 4
  switch i32 %145, label %153 [
    i32 128, label %146
  ]

146:                                              ; preds = %135
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %147)
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @send_disconnect(i8* %149)
  %151 = load i32, i32* @EXIT_SUCCESS, align 4
  %152 = call i32 @exit(i32 %151) #3
  unreachable

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* @SIGHUP, align 4
  %156 = load i32, i32* @sig_handle, align 4
  %157 = call i32 @signal(i32 %155, i32 %156)
  %158 = load i32, i32* @SIGINT, align 4
  %159 = load i32, i32* @sig_handle, align 4
  %160 = call i32 @signal(i32 %158, i32 %159)
  %161 = load i32, i32* @SIGQUIT, align 4
  %162 = load i32, i32* @sig_handle, align 4
  %163 = call i32 @signal(i32 %161, i32 %162)
  %164 = load i32, i32* @SIGTERM, align 4
  %165 = load i32, i32* @sig_handle, align 4
  %166 = call i32 @signal(i32 %164, i32 %165)
  %167 = load i32, i32* @SIGALRM, align 4
  %168 = load i32, i32* @sig_handle, align 4
  %169 = call i32 @signal(i32 %167, i32 %168)
  %170 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %15, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %15, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i64 0, i64* %173, align 8
  %174 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %15, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  %176 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %15, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i64 0, i64* %177, align 8
  %178 = load i32, i32* @ITIMER_REAL, align 4
  %179 = call i32 @setitimer(i32 %178, %struct.itimerval* %15, i32* null)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %154
  %183 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %154
  %185 = call i32 @tmr_add(%struct.TYPE_7__* @timers, i32 1, i32 5, i32* @tmr_watchdog, %struct.ctx* %14)
  %186 = call i32 @watchdog_reset(%struct.ctx* %14, i32 15)
  %187 = load i8*, i8** %10, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 @do_connect(%struct.ctx* %14, i8* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load i8*, i8** %10, align 8
  %196 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %189
  br label %231

198:                                              ; preds = %184
  %199 = call i8** @get_tty(%struct.ctx* %14)
  store i8** %199, i8*** %12, align 8
  %200 = load i8**, i8*** %12, align 8
  %201 = icmp eq i8** %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = load i8**, i8*** %12, align 8
  store i8** %206, i8*** %11, align 8
  br label %207

207:                                              ; preds = %221, %205
  %208 = load i8**, i8*** %11, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %224

211:                                              ; preds = %207
  %212 = load i8**, i8*** %11, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @do_connect(%struct.ctx* %14, i8* %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i8**, i8*** %11, align 8
  %219 = load i8*, i8** %218, align 8
  store i8* %219, i8** %10, align 8
  br label %224

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220
  %222 = load i8**, i8*** %11, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i32 1
  store i8** %223, i8*** %11, align 8
  br label %207

224:                                              ; preds = %217, %207
  %225 = load i8**, i8*** %11, align 8
  %226 = load i8*, i8** %225, align 8
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %224
  br label %231

231:                                              ; preds = %230, %197
  %232 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @FLG_DELAYED, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @FLG_NODAEMON, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %237
  %244 = call i32 @daemonize(%struct.ctx* %14)
  br label %245

245:                                              ; preds = %243, %237, %231
  %246 = call i32 @FD_ZERO(i32* %13)
  %247 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 11
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @FD_SET(i64 %248, i32* %13)
  br label %250

250:                                              ; preds = %335, %272, %265, %245
  %251 = call i32 @watchdog_disable(%struct.ctx* %14)
  %252 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 11
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %253, 1
  %255 = call i32 @select(i64 %254, i32* %13, i32* null, i32* null, i32* null)
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp sle i32 %256, 0
  br i1 %257, label %258, label %284

258:                                              ; preds = %250
  %259 = load i32, i32* @running, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = load i64, i64* @errno, align 8
  %263 = load i64, i64* @EINTR, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %250

266:                                              ; preds = %261, %258
  %267 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @FLG_WDEXP, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %266
  %273 = load i32, i32* @FLG_WDEXP, align 4
  %274 = xor i32 %273, -1
  %275 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, %274
  store i32 %277, i32* %275, align 4
  %278 = call i32 @watchdog_reset(%struct.ctx* %14, i32 5)
  %279 = call i32 @do_disconnect(%struct.ctx* %14)
  %280 = call i32 @watchdog_reset(%struct.ctx* %14, i32 15)
  %281 = load i8*, i8** %10, align 8
  %282 = call i32 @do_connect(%struct.ctx* %14, i8* %281)
  store i32 1, i32* @running, align 4
  br label %250

283:                                              ; preds = %266
  br label %336

284:                                              ; preds = %250
  %285 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 11
  %286 = load i64, i64* %285, align 8
  %287 = call i64 @FD_ISSET(i64 %286, i32* %13)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %284
  %290 = call i32 @watchdog_reset(%struct.ctx* %14, i32 15)
  %291 = call i32 @at_async(%struct.ctx* %14, %struct.ctx* %14)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  br label %336

295:                                              ; preds = %289
  br label %296

296:                                              ; preds = %295, %284
  %297 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 11
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @FD_SET(i64 %298, i32* %13)
  %300 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @FLG_DAEMON, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %335, label %305

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @IPASSIGNED, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %335

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 10
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0)
  %317 = load i8**, i8*** @network_access_type, align 8
  %318 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8*, i8** %317, i64 %320
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %316, i8* %322)
  %324 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 8
  %325 = load i32, i32* %324, align 8
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %311
  %328 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %327, %311
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %333 = load i32, i32* @stdout, align 4
  %334 = call i32 @fflush(i32 %333)
  br label %335

335:                                              ; preds = %331, %305, %296
  br label %250

336:                                              ; preds = %294, %283
  %337 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @FLG_DAEMON, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %350, label %342

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @IPASSIGNED, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %350

350:                                              ; preds = %348, %342, %336
  %351 = load i32, i32* @SIGHUP, align 4
  %352 = load i32, i32* @SIG_DFL, align 4
  %353 = call i32 @signal(i32 %351, i32 %352)
  %354 = load i32, i32* @SIGINT, align 4
  %355 = load i32, i32* @SIG_DFL, align 4
  %356 = call i32 @signal(i32 %354, i32 %355)
  %357 = load i32, i32* @SIGQUIT, align 4
  %358 = load i32, i32* @SIG_DFL, align 4
  %359 = call i32 @signal(i32 %357, i32 %358)
  %360 = load i32, i32* @SIGTERM, align 4
  %361 = load i32, i32* @SIG_DFL, align 4
  %362 = call i32 @signal(i32 %360, i32 %361)
  %363 = load i32, i32* @SIGALRM, align 4
  %364 = load i32, i32* @SIG_IGN, align 4
  %365 = call i32 @signal(i32 %363, i32 %364)
  %366 = call i32 @do_disconnect(%struct.ctx* %14)
  %367 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 6
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @FLG_DAEMON, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %381

372:                                              ; preds = %350
  %373 = getelementptr inbounds %struct.ctx, %struct.ctx* %14, i32 0, i32 9
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @pidfile_remove(i32 %374)
  %376 = load i64, i64* @syslog_open, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %372
  %379 = call i32 (...) @closelog()
  br label %380

380:                                              ; preds = %378, %372
  br label %381

381:                                              ; preds = %380, %350
  ret i32 0
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @usage(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @send_disconnect(i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @tmr_add(%struct.TYPE_7__*, i32, i32, i32*, %struct.ctx*) #1

declare dso_local i32 @watchdog_reset(%struct.ctx*, i32) #1

declare dso_local i32 @do_connect(%struct.ctx*, i8*) #1

declare dso_local i8** @get_tty(%struct.ctx*) #1

declare dso_local i32 @daemonize(%struct.ctx*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @watchdog_disable(%struct.ctx*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @do_disconnect(%struct.ctx*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @at_async(%struct.ctx*, %struct.ctx*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @pidfile_remove(i32) #1

declare dso_local i32 @closelog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
