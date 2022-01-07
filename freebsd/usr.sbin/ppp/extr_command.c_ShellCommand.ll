; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ShellCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ShellCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Can't start an interactive shell from a config file\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't start an interactive shell from a socket connection\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Can only start an interactive shell in the foreground mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@LogALERT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Failed to open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@MAXARGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Truncating shell command to %d args\0A\00", align 1
@LogERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"%ld: daemon: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"ppp: Pausing until %s finishes\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"exec() of %s failed: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Fork failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*, i32)* @ShellCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShellCommand(%struct.cmdargs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdargs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %25 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @LogWARN, align 4
  %30 = call i32 (i32, i8*, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %264

31:                                               ; preds = %23
  %32 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @LogWARN, align 4
  %40 = call i32 (i32, i8*, ...) @log_Printf(i32 %39, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %264

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @LogWARN, align 4
  %46 = call i32 (i32, i8*, ...) @log_Printf(i32 %45, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %264

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %2
  %51 = call i64 (...) @getpid()
  store i64 %51, i64* %8, align 8
  %52 = call i64 (...) @fork()
  store i64 %52, i64* %7, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %235

54:                                               ; preds = %50
  %55 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %55, i8** %6, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i8*, i8** @_PATH_BSHELL, align 8
  store i8* %58, i8** %6, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i32 (...) @timer_TermService()
  %61 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %62 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %67 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %66, i32 0, i32 3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %10, align 4
  br label %84

71:                                               ; preds = %59
  %72 = load i32, i32* @_PATH_DEVNULL, align 4
  %73 = load i32, i32* @O_RDWR, align 4
  %74 = call i32 @open(i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* @LogALERT, align 4
  %78 = load i32, i32* @_PATH_DEVNULL, align 4
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 (i32, i8*, ...) @log_Printf(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %80)
  %82 = call i32 @exit(i32 1) #4
  unreachable

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %65
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @STDIN_FILENO, align 4
  %87 = call i32 @dup2(i32 %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @STDOUT_FILENO, align 4
  %90 = call i32 @dup2(i32 %88, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @STDERR_FILENO, align 4
  %93 = call i32 @dup2(i32 %91, i32 %92)
  %94 = call i32 (...) @getdtablesize()
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %103, %84
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @STDERR_FILENO, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @F_SETFD, align 4
  %102 = call i32 @fcntl(i32 %100, i32 %101, i32 1)
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %9, align 4
  br label %95

106:                                              ; preds = %95
  %107 = call i32 (...) @ID0realuid()
  %108 = call i32 @setuid(i32 %107)
  %109 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %110 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %113 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %192

116:                                              ; preds = %106
  %117 = load i32, i32* @MAXARGS, align 4
  %118 = zext i32 %117 to i64
  %119 = call i8* @llvm.stacksave()
  store i8* %119, i8** %11, align 8
  %120 = alloca i8*, i64 %118, align 16
  store i64 %118, i64* %12, align 8
  %121 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %122 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %125 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = mul nuw i64 8, %118
  %130 = udiv i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = icmp sge i32 %128, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %116
  %134 = mul nuw i64 8, %118
  %135 = udiv i64 %134, 8
  %136 = sub i64 %135, 1
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* @LogWARN, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 (i32, i8*, ...) @log_Printf(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %133, %116
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %144 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %143, i32 0, i32 2
  %145 = load i8**, i8*** %144, align 8
  %146 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %147 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %145, i64 %149
  %151 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %152 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @command_Expand(i8** %120, i32 %142, i8** %150, i32 %153, i32 0, i64 %154)
  %156 = load i32, i32* %5, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %141
  %159 = call i64 (...) @getpid()
  store i64 %159, i64* %14, align 8
  %160 = call i32 @daemon(i32 1, i32 1)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* @LogERROR, align 4
  %164 = load i64, i64* %14, align 8
  %165 = load i32, i32* @errno, align 4
  %166 = call i32 @strerror(i32 %165)
  %167 = call i32 (i32, i8*, ...) @log_Printf(i32 %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i64 %164, i32 %166)
  %168 = call i32 @exit(i32 1) #4
  unreachable

169:                                              ; preds = %158
  br label %187

170:                                              ; preds = %141
  %171 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %172 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %171, i32 0, i32 3
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = icmp ne %struct.TYPE_3__* %173, null
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %177 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %176, i32 0, i32 2
  %178 = load i8**, i8*** %177, align 8
  %179 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %180 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %178, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %175, %170
  br label %187

187:                                              ; preds = %186, %169
  %188 = getelementptr inbounds i8*, i8** %120, i64 0
  %189 = load i8*, i8** %188, align 16
  %190 = call i32 @execvp(i8* %189, i8** %120)
  %191 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %191)
  br label %208

192:                                              ; preds = %106
  %193 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %194 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %193, i32 0, i32 3
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = icmp ne %struct.TYPE_3__* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %197, %192
  %201 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %202 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %201, i32 0, i32 3
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %202, align 8
  %204 = call i32 @prompt_TtyOldMode(%struct.TYPE_3__* %203)
  %205 = load i8*, i8** %6, align 8
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @execl(i8* %205, i8* %206, i8* null)
  br label %208

208:                                              ; preds = %200, %187
  %209 = load i32, i32* @LogWARN, align 4
  %210 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %211 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %214 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %212, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %208
  %218 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %219 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %218, i32 0, i32 2
  %220 = load i8**, i8*** %219, align 8
  %221 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %222 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %220, i64 %224
  %226 = load i8*, i8** %225, align 8
  br label %229

227:                                              ; preds = %208
  %228 = load i8*, i8** %6, align 8
  br label %229

229:                                              ; preds = %227, %217
  %230 = phi i8* [ %226, %217 ], [ %228, %227 ]
  %231 = load i32, i32* @errno, align 4
  %232 = call i32 @strerror(i32 %231)
  %233 = call i32 (i32, i8*, ...) @log_Printf(i32 %209, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %230, i32 %232)
  %234 = call i32 @_exit(i32 255) #4
  unreachable

235:                                              ; preds = %50
  %236 = load i64, i64* %7, align 8
  %237 = icmp eq i64 %236, -1
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* @LogERROR, align 4
  %240 = load i32, i32* @errno, align 4
  %241 = call i32 @strerror(i32 %240)
  %242 = call i32 (i32, i8*, ...) @log_Printf(i32 %239, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %241)
  br label %246

243:                                              ; preds = %235
  %244 = load i64, i64* %7, align 8
  %245 = call i32 @waitpid(i64 %244, i32* %15, i32 0)
  br label %246

246:                                              ; preds = %243, %238
  %247 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %248 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %247, i32 0, i32 3
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = icmp ne %struct.TYPE_3__* %249, null
  br i1 %250, label %251, label %263

251:                                              ; preds = %246
  %252 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %253 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %252, i32 0, i32 3
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %263, label %258

258:                                              ; preds = %251
  %259 = load %struct.cmdargs*, %struct.cmdargs** %4, align 8
  %260 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %259, i32 0, i32 3
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = call i32 @prompt_TtyCommandMode(%struct.TYPE_3__* %261)
  br label %263

263:                                              ; preds = %258, %251, %246
  store i32 0, i32* %3, align 4
  br label %264

264:                                              ; preds = %263, %44, %38, %28
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @timer_TermService(...) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @getdtablesize(...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @ID0realuid(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @command_Expand(i8**, i32, i8**, i32, i32, i64) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @prompt_TtyOldMode(%struct.TYPE_3__*) #1

declare dso_local i32 @execl(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @prompt_TtyCommandMode(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
