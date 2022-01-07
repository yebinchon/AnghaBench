; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_ExecStr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_ExecStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAXARGS = common dso_local global i32 0, align 4
@LogCHAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Exec: %s\0A\00", align 1
@PARSE_REDUCE = common dso_local global i32 0, align 4
@PARSE_NOHASH = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Syntax error in exec command\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to create pipe in ExecStr: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"execvp: %s: %s\0A\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%s: signal %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%s: exit %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s: Unexpected exit result\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*, i8*, i8*, i32)* @ExecStr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecStr(%struct.physical* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* @MAXARGS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8*, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32, i32* @MAXARGS, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8*, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %29 = load i32, i32* @LogCHAT, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i32, i8*, ...) @log_Printf(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @VECSIZE(i8** %28)
  %34 = load i32, i32* @PARSE_REDUCE, align 4
  %35 = load i32, i32* @PARSE_NOHASH, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @MakeArgs(i8* %32, i8** %28, i32 %33, i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %4
  %40 = load i32, i32* %18, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @LogWARN, align 4
  %44 = call i32 (i32, i8*, ...) @log_Printf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** %7, align 8
  store i8 0, i8* %46, align 1
  store i32 1, i32* %20, align 4
  br label %218

47:                                               ; preds = %4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %49 = call i64 @pipe(i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @LogCHAT, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 (i32, i8*, ...) @log_Printf(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** %7, align 8
  store i8 0, i8* %56, align 1
  store i32 1, i32* %20, align 4
  br label %218

57:                                               ; preds = %47
  %58 = call i32 (...) @fork()
  store i32 %58, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %129

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  %62 = load %struct.physical*, %struct.physical** %5, align 8
  %63 = getelementptr inbounds %struct.physical, %struct.physical* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (...) @getpid()
  %68 = call i32 @command_Expand(i8** %25, i32 %61, i8** %28, i32 %66, i32 0, i32 %67)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @close(i32 %70)
  %72 = call i32 (...) @timer_TermService()
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @STDIN_FILENO, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dup(i32 %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %60
  %83 = load %struct.physical*, %struct.physical** %5, align 8
  %84 = getelementptr inbounds %struct.physical, %struct.physical* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @STDIN_FILENO, align 4
  %87 = call i32 @dup2(i32 %85, i32 %86)
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @STDERR_FILENO, align 4
  %91 = call i32 @dup2(i32 %89, i32 %90)
  %92 = load i32, i32* @STDIN_FILENO, align 4
  %93 = load i32, i32* @STDOUT_FILENO, align 4
  %94 = call i32 @dup2(i32 %92, i32 %93)
  %95 = call i32 @close(i32 3)
  %96 = load i32, i32* @_PATH_TTY, align 4
  %97 = load i32, i32* @O_RDWR, align 4
  %98 = call i32 @open(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 3
  br i1 %99, label %100, label %104

100:                                              ; preds = %82
  %101 = load i32, i32* @_PATH_DEVNULL, align 4
  %102 = load i32, i32* @O_RDWR, align 4
  %103 = call i32 @open(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %82
  %105 = call i32 (...) @getdtablesize()
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %113, %104
  %107 = load i32, i32* %19, align 4
  %108 = icmp sgt i32 %107, 3
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* @F_SETFD, align 4
  %112 = call i32 @fcntl(i32 %110, i32 %111, i32 1)
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %19, align 4
  br label %106

116:                                              ; preds = %106
  %117 = call i32 (...) @ID0realuid()
  %118 = call i32 @setuid(i32 %117)
  %119 = getelementptr inbounds i8*, i8** %25, i64 0
  %120 = load i8*, i8** %119, align 16
  %121 = call i32 @execvp(i8* %120, i8** %25)
  %122 = load i32, i32* @stderr, align 4
  %123 = getelementptr inbounds i8*, i8** %25, i64 0
  %124 = load i8*, i8** %123, align 16
  %125 = load i32, i32* @errno, align 4
  %126 = call i8* @strerror(i32 %125)
  %127 = call i32 @fprintf(i32 %122, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %124, i8* %126)
  %128 = call i32 @_exit(i32 127) #4
  unreachable

129:                                              ; preds = %57
  %130 = getelementptr inbounds i8*, i8** %28, i64 0
  %131 = load i8*, i8** %130, align 16
  %132 = call i8* @strdup(i8* %131)
  store i8* %132, i8** %21, align 8
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @close(i32 %134)
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = getelementptr inbounds i8, i8* %139, i64 -1
  store i8* %140, i8** %15, align 8
  %141 = load i8*, i8** %7, align 8
  store i8* %141, i8** %14, align 8
  br label %142

142:                                              ; preds = %154, %129
  %143 = load i8*, i8** %7, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = icmp ult i8* %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %142
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @read(i32 %148, i8* %149, i32 1)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %157

154:                                              ; preds = %146
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %7, align 8
  br label %142

157:                                              ; preds = %153, %142
  %158 = load i8*, i8** %7, align 8
  store i8 0, i8* %158, align 1
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @close(i32 %160)
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @close(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @WNOHANG, align 4
  %167 = call i32 @waitpid(i32 %165, i32* %16, i32 %166)
  %168 = load i32, i32* %16, align 4
  %169 = call i64 @WIFSIGNALED(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %157
  %172 = load i32, i32* @LogWARN, align 4
  %173 = load i8*, i8** %21, align 8
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @WTERMSIG(i32 %174)
  %176 = call i32 (i32, i8*, ...) @log_Printf(i32 %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %173, i32 %175)
  %177 = load i8*, i8** %21, align 8
  %178 = call i32 @free(i8* %177)
  %179 = load i8*, i8** %7, align 8
  store i8 0, i8* %179, align 1
  store i32 1, i32* %20, align 4
  br label %218

180:                                              ; preds = %157
  %181 = load i32, i32* %16, align 4
  %182 = call i64 @WIFEXITED(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %208

184:                                              ; preds = %180
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @WEXITSTATUS(i32 %185)
  switch i32 %186, label %198 [
    i32 0, label %187
    i32 127, label %190
  ]

187:                                              ; preds = %184
  %188 = load i8*, i8** %21, align 8
  %189 = call i32 @free(i8* %188)
  br label %207

190:                                              ; preds = %184
  %191 = load i32, i32* @LogWARN, align 4
  %192 = load i8*, i8** %21, align 8
  %193 = load i8*, i8** %14, align 8
  %194 = call i32 (i32, i8*, ...) @log_Printf(i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %192, i8* %193)
  %195 = load i8*, i8** %21, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load i8*, i8** %7, align 8
  store i8 0, i8* %197, align 1
  store i32 1, i32* %20, align 4
  br label %218

198:                                              ; preds = %184
  %199 = load i32, i32* @LogWARN, align 4
  %200 = load i8*, i8** %21, align 8
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @WEXITSTATUS(i32 %201)
  %203 = call i32 (i32, i8*, ...) @log_Printf(i32 %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %200, i32 %202)
  %204 = load i8*, i8** %21, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load i8*, i8** %7, align 8
  store i8 0, i8* %206, align 1
  store i32 1, i32* %20, align 4
  br label %218

207:                                              ; preds = %187
  br label %215

208:                                              ; preds = %180
  %209 = load i32, i32* @LogWARN, align 4
  %210 = load i8*, i8** %21, align 8
  %211 = call i32 (i32, i8*, ...) @log_Printf(i32 %209, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %210)
  %212 = load i8*, i8** %21, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load i8*, i8** %7, align 8
  store i8 0, i8* %214, align 1
  store i32 1, i32* %20, align 4
  br label %218

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  store i32 0, i32* %20, align 4
  br label %218

218:                                              ; preds = %217, %208, %198, %190, %171, %51, %45
  %219 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %20, align 4
  switch i32 %220, label %222 [
    i32 0, label %221
    i32 1, label %221
  ]

221:                                              ; preds = %218, %218
  ret void

222:                                              ; preds = %218
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #2

declare dso_local i32 @MakeArgs(i8*, i8**, i32, i32) #2

declare dso_local i32 @VECSIZE(i8**) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @command_Expand(i8**, i32, i8**, i32, i32, i32) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @timer_TermService(...) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i32 @dup2(i32, i32) #2

declare dso_local i32 @open(i32, i32) #2

declare dso_local i32 @getdtablesize(...) #2

declare dso_local i32 @fcntl(i32, i32, i32) #2

declare dso_local i32 @setuid(i32) #2

declare dso_local i32 @ID0realuid(...) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #3

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i64 @WIFSIGNALED(i32) #2

declare dso_local i32 @WTERMSIG(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
