; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { %struct.bundle* }
%struct.bundle = type { %struct.TYPE_6__, %struct.TYPE_10__*, %struct.TYPE_9__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.switches = type { i64, i32, i32, i64, i32 }
%struct.stat = type { i32 }

@_PATH_DEVNULL = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Cannot open %s !\0A\00", align 1
@la = common dso_local global i32 0, align 4
@PHYS_INTERACTIVE = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot open %s for input !\0A\00", align 1
@PHYS_DIRECT = common dso_local global i64 0, align 8
@PROMPT_STD = common dso_local global i32 0, align 4
@SignalPrompt = common dso_local global %struct.prompt* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PPP_CONFDIR = common dso_local global i8* null, align 8
@CONFFILE = common dso_local global i8* null, align 8
@S_IWOTH = common dso_local global i32 0, align 4
@LogALERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"ppp: Access violation: Please protect %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Working in %s mode\0A\00", align 1
@TUN_PREFIX = common dso_local global i32 0, align 4
@EX_START = common dso_local global i32 0, align 4
@SignalBundle = common dso_local global %struct.bundle* null, align 8
@OPT_IFACEALIAS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"Warning: No default entry found in config file.\0A\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@CloseSession = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@CloseConnection = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@TerminalStop = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@RestartServer = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@BringDownServer = common dso_local global i32 0, align 4
@PHYS_AUTO = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [59 x i8] c"You must ``set ifaddr'' with a peer address in auto mode.\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Using interface: %s\0A\00", align 1
@PHYS_BACKGROUND = common dso_local global i64 0, align 8
@LogERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"pipe: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EX_SOCK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"fork: %s\0A\00", align 1
@BGPid = common dso_local global i32 0, align 4
@KillChild = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"PPP enabled\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"Parent: PPP enabled\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Attempting redial\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Attempting reconnect\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Child failed (%s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Parent: Child failed (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Child exit, no status.\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Parent: Child exit, no status.\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"PPP Started (%s mode).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bundle*, align 8
  %13 = alloca %struct.prompt*, align 8
  %14 = alloca %struct.switches, align 8
  %15 = alloca [200 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca %struct.stat, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = call i32 (...) @probe_Init()
  %23 = load i8*, i8** @_PATH_DEVNULL, align 8
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = icmp eq i32 %25, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @stderr, align 4
  %30 = load i8*, i8** @_PATH_DEVNULL, align 8
  %31 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 2, i32* %3, align 4
  br label %521

32:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp ult i64 %35, 3
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dup(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strrchr(i8* %50, i8 signext 47)
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  br label %61

57:                                               ; preds = %47
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i8* [ %56, %54 ], [ %60, %57 ]
  %63 = call i32 @log_Open(i8* %62)
  %64 = call i32 @LibAliasInit(i32* null)
  store i32 %64, i32* @la, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = call i32 @ProcessArgs(i32 %65, i8** %66, %struct.switches* %14)
  store i32 %67, i32* %10, align 4
  %68 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PHYS_INTERACTIVE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %61
  %73 = load i32, i32* @STDIN_FILENO, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i8*, i8** @_PATH_TTY, align 8
  %76 = load i32, i32* @O_RDONLY, align 4
  %77 = call i32 @open(i8* %75, i32 %76)
  %78 = load i32, i32* @STDIN_FILENO, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** @_PATH_TTY, align 8
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  store i32 2, i32* %3, align 4
  br label %521

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %61
  %86 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PHYS_DIRECT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store %struct.prompt* null, %struct.prompt** %13, align 8
  br label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @PROMPT_STD, align 4
  %93 = call %struct.prompt* @prompt_Create(i32* null, i32* null, i32 %92)
  store %struct.prompt* %93, %struct.prompt** %13, align 8
  store %struct.prompt* %93, %struct.prompt** @SignalPrompt, align 8
  br label %94

94:                                               ; preds = %91, %90
  %95 = call i32 (...) @ID0init()
  %96 = call i64 (...) @ID0realuid()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %144

98:                                               ; preds = %94
  %99 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %100 = load i8*, i8** @PPP_CONFDIR, align 8
  %101 = load i8*, i8** @CONFFILE, align 8
  %102 = call i32 @snprintf(i8* %99, i32 200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %100, i8* %101)
  br label %103

103:                                              ; preds = %139, %98
  %104 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %105 = call i64 @stat(i8* %104, %struct.stat* %17)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @S_IWOTH, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @LogALERT, align 4
  %115 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %116 = call i32 (i32, i8*, ...) @log_Printf(i32 %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  store i32 -1, i32* %3, align 4
  br label %521

117:                                              ; preds = %107, %103
  %118 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %119 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %120 = call i32 @strlen(i8* %119)
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = getelementptr inbounds i8, i8* %122, i64 -2
  store i8* %123, i8** %16, align 8
  br label %124

124:                                              ; preds = %135, %117
  %125 = load i8*, i8** %16, align 8
  %126 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %127 = icmp ugt i8* %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i8*, i8** %16, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 47
  br label %133

133:                                              ; preds = %128, %124
  %134 = phi i1 [ false, %124 ], [ %132, %128 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i8*, i8** %16, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 -1
  store i8* %137, i8** %16, align 8
  store i8 0, i8* %136, align 1
  br label %124

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138
  %140 = load i8*, i8** %16, align 8
  %141 = getelementptr inbounds [200 x i8], [200 x i8]* %15, i64 0, i64 0
  %142 = icmp uge i8* %140, %141
  br i1 %142, label %103, label %143

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143, %94
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %164, %148
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.prompt*, %struct.prompt** %13, align 8
  %161 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @CheckLabel(i8* %159, %struct.prompt* %160, i64 %162)
  br label %164

164:                                              ; preds = %154
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %150

167:                                              ; preds = %150
  br label %173

168:                                              ; preds = %144
  %169 = load %struct.prompt*, %struct.prompt** %13, align 8
  %170 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @CheckLabel(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.prompt* %169, i64 %171)
  br label %173

173:                                              ; preds = %168, %167
  %174 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = load %struct.prompt*, %struct.prompt** %13, align 8
  %179 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i8* @mode2Nam(i64 %180)
  %182 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %178, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %181)
  br label %183

183:                                              ; preds = %177, %173
  %184 = load i32, i32* @TUN_PREFIX, align 4
  %185 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call %struct.bundle* @bundle_Create(i32 %184, i64 %186, i32 %188)
  store %struct.bundle* %189, %struct.bundle** %12, align 8
  %190 = icmp eq %struct.bundle* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* @EX_START, align 4
  store i32 %192, i32* %3, align 4
  br label %521

193:                                              ; preds = %183
  %194 = load %struct.bundle*, %struct.bundle** %12, align 8
  store %struct.bundle* %194, %struct.bundle** @SignalBundle, align 8
  %195 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.bundle*, %struct.bundle** %12, align 8
  %198 = getelementptr inbounds %struct.bundle, %struct.bundle* %197, i32 0, i32 3
  store i64 %196, i64* %198, align 8
  %199 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = load %struct.bundle*, %struct.bundle** %12, align 8
  %204 = load i32, i32* @OPT_IFACEALIAS, align 4
  %205 = call i32 @opt_enable(%struct.bundle* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %193
  %207 = load %struct.bundle*, %struct.bundle** %12, align 8
  %208 = load i8*, i8** @CONFFILE, align 8
  %209 = load %struct.prompt*, %struct.prompt** %13, align 8
  %210 = call i64 @system_Select(%struct.bundle* %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %208, %struct.prompt* %209, i32* null)
  %211 = icmp slt i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load %struct.prompt*, %struct.prompt** %13, align 8
  %214 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %213, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %206
  %216 = load i32, i32* @SIGHUP, align 4
  %217 = load i32, i32* @CloseSession, align 4
  %218 = call i32 @sig_signal(i32 %216, i32 %217)
  %219 = load i32, i32* @SIGTERM, align 4
  %220 = load i32, i32* @CloseSession, align 4
  %221 = call i32 @sig_signal(i32 %219, i32 %220)
  %222 = load i32, i32* @SIGINT, align 4
  %223 = load i32, i32* @CloseConnection, align 4
  %224 = call i32 @sig_signal(i32 %222, i32 %223)
  %225 = load i32, i32* @SIGQUIT, align 4
  %226 = load i32, i32* @CloseSession, align 4
  %227 = call i32 @sig_signal(i32 %225, i32 %226)
  %228 = load i32, i32* @SIGALRM, align 4
  %229 = load i32, i32* @SIG_IGN, align 4
  %230 = call i32 @sig_signal(i32 %228, i32 %229)
  %231 = load i32, i32* @SIGPIPE, align 4
  %232 = load i32, i32* @SIG_IGN, align 4
  %233 = call i32 @signal(i32 %231, i32 %232)
  %234 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @PHYS_INTERACTIVE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %215
  %239 = load i32, i32* @SIGTSTP, align 4
  %240 = load i32, i32* @TerminalStop, align 4
  %241 = call i32 @sig_signal(i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %238, %215
  %243 = load i32, i32* @SIGUSR1, align 4
  %244 = load i32, i32* @RestartServer, align 4
  %245 = call i32 @sig_signal(i32 %243, i32 %244)
  %246 = load i32, i32* @SIGUSR2, align 4
  %247 = load i32, i32* @BringDownServer, align 4
  %248 = call i32 @sig_signal(i32 %246, i32 %247)
  %249 = load i8**, i8*** %5, align 8
  %250 = load i32, i32* %4, align 4
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %249, i64 %252
  %254 = load i8*, i8** %253, align 8
  store i8* %254, i8** %7, align 8
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %273, %242
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %4, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %276

260:                                              ; preds = %256
  %261 = load %struct.bundle*, %struct.bundle** %12, align 8
  %262 = load i8*, i8** %7, align 8
  %263 = call i32 @bundle_SetLabel(%struct.bundle* %261, i8* %262)
  %264 = load %struct.bundle*, %struct.bundle** %12, align 8
  %265 = load i8**, i8*** %5, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = load i8*, i8** @CONFFILE, align 8
  %271 = load %struct.prompt*, %struct.prompt** %13, align 8
  %272 = call i64 @system_Select(%struct.bundle* %264, i8* %269, i8* %270, %struct.prompt* %271, i32* null)
  br label %273

273:                                              ; preds = %260
  %274 = load i32, i32* %8, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %8, align 4
  br label %256

276:                                              ; preds = %256
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %4, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load %struct.bundle*, %struct.bundle** %12, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = call i32 @bundle_SetLabel(%struct.bundle* %281, i8* %282)
  br label %284

284:                                              ; preds = %280, %276
  %285 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @PHYS_AUTO, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %303

289:                                              ; preds = %284
  %290 = load %struct.bundle*, %struct.bundle** %12, align 8
  %291 = getelementptr inbounds %struct.bundle, %struct.bundle* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = call i64 @ncprange_family(i32* %294)
  %296 = load i64, i64* @AF_UNSPEC, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %303

298:                                              ; preds = %289
  %299 = load %struct.prompt*, %struct.prompt** %13, align 8
  %300 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %299, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %301 = load i32, i32* @EX_START, align 4
  %302 = call i32 @AbortProgram(i32 %301)
  br label %303

303:                                              ; preds = %298, %289, %284
  %304 = load %struct.prompt*, %struct.prompt** %13, align 8
  %305 = icmp ne %struct.prompt* %304, null
  br i1 %305, label %306, label %322

306:                                              ; preds = %303
  %307 = load %struct.bundle*, %struct.bundle** %12, align 8
  %308 = load %struct.prompt*, %struct.prompt** %13, align 8
  %309 = getelementptr inbounds %struct.prompt, %struct.prompt* %308, i32 0, i32 0
  store %struct.bundle* %307, %struct.bundle** %309, align 8
  %310 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %306
  %314 = load %struct.prompt*, %struct.prompt** %13, align 8
  %315 = load %struct.bundle*, %struct.bundle** %12, align 8
  %316 = getelementptr inbounds %struct.bundle, %struct.bundle* %315, i32 0, i32 1
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %319)
  br label %321

321:                                              ; preds = %313, %306
  br label %322

322:                                              ; preds = %321, %303
  %323 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @PHYS_INTERACTIVE, align 8
  %326 = icmp ne i64 %324, %325
  br i1 %326, label %327, label %489

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @PHYS_DIRECT, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %484

332:                                              ; preds = %327
  %333 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %469, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @PHYS_BACKGROUND, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %352

341:                                              ; preds = %336
  %342 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %343 = call i64 @pipe(i32* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %341
  %346 = load i32, i32* @LogERROR, align 4
  %347 = load i32, i32* @errno, align 4
  %348 = call i8* @strerror(i32 %347)
  %349 = call i32 (i32, i8*, ...) @log_Printf(i32 %346, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %348)
  %350 = load i32, i32* @EX_SOCK, align 4
  %351 = call i32 @AbortProgram(i32 %350)
  br label %352

352:                                              ; preds = %345, %341, %336
  %353 = call i32 (...) @fork()
  store i32 %353, i32* %19, align 4
  %354 = load i32, i32* %19, align 4
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %356, label %363

356:                                              ; preds = %352
  %357 = load i32, i32* @LogERROR, align 4
  %358 = load i32, i32* @errno, align 4
  %359 = call i8* @strerror(i32 %358)
  %360 = call i32 (i32, i8*, ...) @log_Printf(i32 %357, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %359)
  %361 = load i32, i32* @EX_SOCK, align 4
  %362 = call i32 @AbortProgram(i32 %361)
  br label %363

363:                                              ; preds = %356, %352
  %364 = load i32, i32* %19, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %449

366:                                              ; preds = %363
  store i8 -126, i8* %20, align 1
  %367 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @PHYS_BACKGROUND, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %446

371:                                              ; preds = %366
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @close(i32 %373)
  %375 = load i32, i32* %19, align 4
  store i32 %375, i32* @BGPid, align 4
  %376 = load i32, i32* @SIGHUP, align 4
  %377 = load i32, i32* @KillChild, align 4
  %378 = call i32 @signal(i32 %376, i32 %377)
  %379 = load i32, i32* @SIGTERM, align 4
  %380 = load i32, i32* @KillChild, align 4
  %381 = call i32 @signal(i32 %379, i32 %380)
  %382 = load i32, i32* @SIGINT, align 4
  %383 = load i32, i32* @KillChild, align 4
  %384 = call i32 @signal(i32 %382, i32 %383)
  %385 = load i32, i32* @SIGQUIT, align 4
  %386 = load i32, i32* @KillChild, align 4
  %387 = call i32 @signal(i32 %385, i32 %386)
  br label %388

388:                                              ; preds = %421, %413, %371
  %389 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @read(i32 %390, i8* %20, i32 1)
  store i32 %391, i32* %21, align 4
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %393, label %434

393:                                              ; preds = %388
  %394 = load i8, i8* %20, align 1
  %395 = sext i8 %394 to i32
  switch i32 %395, label %422 [
    i32 130, label %396
    i32 128, label %406
    i32 129, label %414
  ]

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 2
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %405, label %400

400:                                              ; preds = %396
  %401 = load %struct.prompt*, %struct.prompt** %13, align 8
  %402 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %401, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %403 = load i32, i32* @LogPHASE, align 4
  %404 = call i32 (i32, i8*, ...) @log_Printf(i32 %403, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %405

405:                                              ; preds = %400, %396
  br label %433

406:                                              ; preds = %393
  %407 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %413, label %410

410:                                              ; preds = %406
  %411 = load %struct.prompt*, %struct.prompt** %13, align 8
  %412 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %411, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %413

413:                                              ; preds = %410, %406
  br label %388

414:                                              ; preds = %393
  %415 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %414
  %419 = load %struct.prompt*, %struct.prompt** %13, align 8
  %420 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %419, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %421

421:                                              ; preds = %418, %414
  br label %388

422:                                              ; preds = %393
  %423 = load %struct.prompt*, %struct.prompt** %13, align 8
  %424 = load i8, i8* %20, align 1
  %425 = sext i8 %424 to i32
  %426 = call i8* @ex_desc(i32 %425)
  %427 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %423, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %426)
  %428 = load i32, i32* @LogPHASE, align 4
  %429 = load i8, i8* %20, align 1
  %430 = sext i8 %429 to i32
  %431 = call i8* @ex_desc(i32 %430)
  %432 = call i32 (i32, i8*, ...) @log_Printf(i32 %428, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %431)
  br label %433

433:                                              ; preds = %422, %405
  br label %434

434:                                              ; preds = %433, %388
  %435 = load i32, i32* %21, align 4
  %436 = icmp ne i32 %435, 1
  br i1 %436, label %437, label %442

437:                                              ; preds = %434
  %438 = load %struct.prompt*, %struct.prompt** %13, align 8
  %439 = call i32 (%struct.prompt*, i8*, ...) @prompt_Printf(%struct.prompt* %438, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %440 = load i32, i32* @LogPHASE, align 4
  %441 = call i32 (i32, i8*, ...) @log_Printf(i32 %440, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0))
  br label %442

442:                                              ; preds = %437, %434
  %443 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @close(i32 %444)
  br label %446

446:                                              ; preds = %442, %366
  %447 = load i8, i8* %20, align 1
  %448 = sext i8 %447 to i32
  store i32 %448, i32* %3, align 4
  br label %521

449:                                              ; preds = %363
  %450 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @PHYS_BACKGROUND, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %463

454:                                              ; preds = %449
  %455 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @close(i32 %456)
  %458 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.bundle*, %struct.bundle** %12, align 8
  %461 = getelementptr inbounds %struct.bundle, %struct.bundle* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 0
  store i32 %459, i32* %462, align 8
  br label %463

463:                                              ; preds = %454, %449
  br label %464

464:                                              ; preds = %463
  %465 = load %struct.bundle*, %struct.bundle** %12, align 8
  %466 = call i32 @bundle_ChangedPID(%struct.bundle* %465)
  %467 = load %struct.bundle*, %struct.bundle** %12, align 8
  %468 = call i32 @bundle_LockTun(%struct.bundle* %467)
  br label %469

469:                                              ; preds = %464, %332
  %470 = load %struct.prompt*, %struct.prompt** %13, align 8
  %471 = call i32 @prompt_Destroy(%struct.prompt* %470, i32 0)
  %472 = load i32, i32* @STDOUT_FILENO, align 4
  %473 = call i32 @close(i32 %472)
  %474 = load i32, i32* @STDERR_FILENO, align 4
  %475 = call i32 @close(i32 %474)
  %476 = load i32, i32* @STDIN_FILENO, align 4
  %477 = call i32 @close(i32 %476)
  %478 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %483, label %481

481:                                              ; preds = %469
  %482 = call i32 (...) @setsid()
  br label %483

483:                                              ; preds = %481, %469
  br label %488

484:                                              ; preds = %327
  %485 = call i32 @prompt_TtyInit(%struct.prompt* null)
  %486 = load i32, i32* @STDERR_FILENO, align 4
  %487 = call i32 @close(i32 %486)
  br label %488

488:                                              ; preds = %484, %483
  br label %498

489:                                              ; preds = %322
  %490 = load i32, i32* @STDERR_FILENO, align 4
  %491 = call i32 @close(i32 %490)
  %492 = load %struct.prompt*, %struct.prompt** %13, align 8
  %493 = call i32 @prompt_TtyInit(%struct.prompt* %492)
  %494 = load %struct.prompt*, %struct.prompt** %13, align 8
  %495 = call i32 @prompt_TtyCommandMode(%struct.prompt* %494)
  %496 = load %struct.prompt*, %struct.prompt** %13, align 8
  %497 = call i32 @prompt_Required(%struct.prompt* %496)
  br label %498

498:                                              ; preds = %489, %488
  store i32 0, i32* %11, align 4
  br label %499

499:                                              ; preds = %509, %498
  %500 = load i32, i32* %11, align 4
  %501 = zext i32 %500 to i64
  %502 = icmp ult i64 %501, 3
  br i1 %502, label %503, label %512

503:                                              ; preds = %499
  %504 = load i32, i32* %11, align 4
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @close(i32 %507)
  br label %509

509:                                              ; preds = %503
  %510 = load i32, i32* %11, align 4
  %511 = add i32 %510, 1
  store i32 %511, i32* %11, align 4
  br label %499

512:                                              ; preds = %499
  %513 = load i32, i32* @LogPHASE, align 4
  %514 = getelementptr inbounds %struct.switches, %struct.switches* %14, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = call i8* @mode2Nam(i64 %515)
  %517 = call i32 (i32, i8*, ...) @log_Printf(i32 %513, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* %516)
  %518 = load %struct.bundle*, %struct.bundle** %12, align 8
  %519 = call i32 @DoLoop(%struct.bundle* %518)
  %520 = call i32 @AbortProgram(i32 130)
  store i32 130, i32* %3, align 4
  br label %521

521:                                              ; preds = %512, %446, %191, %113, %80, %28
  %522 = load i32, i32* %3, align 4
  ret i32 %522
}

declare dso_local i32 @probe_Init(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @log_Open(i8*) #1

declare dso_local i32 @LibAliasInit(i32*) #1

declare dso_local i32 @ProcessArgs(i32, i8**, %struct.switches*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.prompt* @prompt_Create(i32*, i32*, i32) #1

declare dso_local i32 @ID0init(...) #1

declare dso_local i64 @ID0realuid(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CheckLabel(i8*, %struct.prompt*, i64) #1

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, ...) #1

declare dso_local i8* @mode2Nam(i64) #1

declare dso_local %struct.bundle* @bundle_Create(i32, i64, i32) #1

declare dso_local i32 @opt_enable(%struct.bundle*, i32) #1

declare dso_local i64 @system_Select(%struct.bundle*, i8*, i8*, %struct.prompt*, i32*) #1

declare dso_local i32 @sig_signal(i32, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @bundle_SetLabel(%struct.bundle*, i8*) #1

declare dso_local i64 @ncprange_family(i32*) #1

declare dso_local i32 @AbortProgram(i32) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @ex_desc(i32) #1

declare dso_local i32 @bundle_ChangedPID(%struct.bundle*) #1

declare dso_local i32 @bundle_LockTun(%struct.bundle*) #1

declare dso_local i32 @prompt_Destroy(%struct.prompt*, i32) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @prompt_TtyInit(%struct.prompt*) #1

declare dso_local i32 @prompt_TtyCommandMode(%struct.prompt*) #1

declare dso_local i32 @prompt_Required(%struct.prompt*) #1

declare dso_local i32 @DoLoop(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
