; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_eventloop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_eventloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ptrace_lwpinfo = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@detaching = common dso_local global i64 0, align 8
@P_ALL = common dso_local global i32 0, align 4
@WTRAPPED = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unexpected error from waitid\00", align 1
@SIGCHLD = common dso_local global i64 0, align 8
@COUNTONLY = common dso_local global i32 0, align 4
@PT_LWPINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ptrace(PT_LWPINFO)\00", align 1
@PL_FLAG_CHILD = common dso_local global i32 0, align 4
@PL_FLAG_BORN = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@PL_FLAG_EXITED = common dso_local global i32 0, align 4
@PL_FLAG_SCE = common dso_local global i32 0, align 4
@PL_FLAG_SCX = common dso_local global i32 0, align 4
@NOSIGS = common dso_local global i32 0, align 4
@PT_SYSCALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"waitid reported CLD_STOPPED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eventloop(%struct.trussinfo* %0) #0 {
  %2 = alloca %struct.trussinfo*, align 8
  %3 = alloca %struct.ptrace_lwpinfo, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i32, align 4
  store %struct.trussinfo* %0, %struct.trussinfo** %2, align 8
  br label %6

6:                                                ; preds = %244, %29, %1
  %7 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %8 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %7, i32 0, i32 2
  %9 = call i32 @LIST_EMPTY(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %245

12:                                               ; preds = %6
  %13 = load i64, i64* @detaching, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %17 = call i32 @detach_all_procs(%struct.trussinfo* %16)
  br label %245

18:                                               ; preds = %12
  %19 = load i32, i32* @P_ALL, align 4
  %20 = load i32, i32* @WTRAPPED, align 4
  %21 = load i32, i32* @WEXITED, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @waitid(i32 %19, i32 0, %struct.TYPE_8__* %4, i32 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %6

30:                                               ; preds = %25
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %18
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SIGCHLD, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %244 [
    i32 131, label %41
    i32 130, label %41
    i32 132, label %41
    i32 128, label %71
    i32 129, label %241
    i32 133, label %243
  ]

41:                                               ; preds = %32, %32, %32
  %42 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @find_exit_thread(%struct.trussinfo* %42, i32 %44)
  %46 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %47 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @COUNTONLY, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 131
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %58 = call i32 @thread_exit_syscall(%struct.trussinfo* %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %61 = call i32 @report_exit(%struct.trussinfo* %60, %struct.TYPE_8__* %4)
  br label %62

62:                                               ; preds = %59, %41
  %63 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %64 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @free_proc(i32 %67)
  %69 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %70 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %69, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %70, align 8
  br label %244

71:                                               ; preds = %32
  %72 = load i32, i32* @PT_LWPINFO, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = ptrtoint %struct.ptrace_lwpinfo* %3 to i32
  %76 = call i32 @ptrace(i32 %72, i32 %74, i32 %75, i32 8)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %71
  %81 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PL_FLAG_CHILD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @new_proc(%struct.trussinfo* %87, i32 %89, i32 %91)
  %93 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %94 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %93, i32 0, i32 2
  %95 = call %struct.TYPE_10__* @LIST_FIRST(i32* %94)
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  br label %116

101:                                              ; preds = %80
  %102 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @PL_FLAG_BORN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @find_proc(%struct.trussinfo* %108, i32 %110)
  %112 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @new_thread(i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %107, %101
  br label %116

116:                                              ; preds = %115, %86
  %117 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @find_thread(%struct.trussinfo* %117, i32 %119, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SIGTRAP, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %204

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PL_FLAG_BORN, align 4
  %131 = load i32, i32* @PL_FLAG_EXITED, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @PL_FLAG_SCE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @PL_FLAG_SCX, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %129, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %204

139:                                              ; preds = %127
  %140 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @PL_FLAG_BORN, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %147 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @COUNTONLY, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %154 = call i32 @report_thread_birth(%struct.trussinfo* %153)
  br label %155

155:                                              ; preds = %152, %145
  br label %203

156:                                              ; preds = %139
  %157 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @PL_FLAG_EXITED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %156
  %163 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %164 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @COUNTONLY, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %171 = call i32 @report_thread_death(%struct.trussinfo* %170)
  br label %172

172:                                              ; preds = %169, %162
  %173 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %174 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = call i32 @free_thread(%struct.TYPE_9__* %175)
  %177 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %178 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %177, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %178, align 8
  br label %202

179:                                              ; preds = %156
  %180 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @PL_FLAG_SCE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %187 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %188 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = call i32 @enter_syscall(%struct.trussinfo* %186, %struct.TYPE_9__* %189, %struct.ptrace_lwpinfo* %3)
  br label %201

191:                                              ; preds = %179
  %192 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @PL_FLAG_SCX, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %199 = call i32 @exit_syscall(%struct.trussinfo* %198, %struct.ptrace_lwpinfo* %3)
  br label %200

200:                                              ; preds = %197, %191
  br label %201

201:                                              ; preds = %200, %185
  br label %202

202:                                              ; preds = %201, %172
  br label %203

203:                                              ; preds = %202, %155
  store i32 0, i32* %5, align 4
  br label %235

204:                                              ; preds = %127, %116
  %205 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %3, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PL_FLAG_CHILD, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %204
  %211 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %212 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @COUNTONLY, align 4
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %219 = call i32 @report_new_child(%struct.trussinfo* %218)
  br label %220

220:                                              ; preds = %217, %210
  store i32 0, i32* %5, align 4
  br label %234

221:                                              ; preds = %204
  %222 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %223 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @NOSIGS, align 4
  %226 = and i32 %224, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load %struct.trussinfo*, %struct.trussinfo** %2, align 8
  %230 = call i32 @report_signal(%struct.trussinfo* %229, %struct.TYPE_8__* %4, %struct.ptrace_lwpinfo* %3)
  br label %231

231:                                              ; preds = %228, %221
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %231, %220
  br label %235

235:                                              ; preds = %234, %203
  %236 = load i32, i32* @PT_SYSCALL, align 4
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = call i32 @ptrace(i32 %236, i32 %238, i32 1, i32 %239)
  br label %244

241:                                              ; preds = %32
  %242 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %243

243:                                              ; preds = %32, %241
  br label %244

244:                                              ; preds = %32, %243, %235, %62
  br label %6

245:                                              ; preds = %15, %6
  ret void
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @detach_all_procs(%struct.trussinfo*) #1

declare dso_local i32 @waitid(i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @find_exit_thread(%struct.trussinfo*, i32) #1

declare dso_local i32 @thread_exit_syscall(%struct.trussinfo*) #1

declare dso_local i32 @report_exit(%struct.trussinfo*, %struct.TYPE_8__*) #1

declare dso_local i32 @free_proc(i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @new_proc(%struct.trussinfo*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @LIST_FIRST(i32*) #1

declare dso_local i32 @new_thread(i32, i32) #1

declare dso_local i32 @find_proc(%struct.trussinfo*, i32) #1

declare dso_local i32 @find_thread(%struct.trussinfo*, i32, i32) #1

declare dso_local i32 @report_thread_birth(%struct.trussinfo*) #1

declare dso_local i32 @report_thread_death(%struct.trussinfo*) #1

declare dso_local i32 @free_thread(%struct.TYPE_9__*) #1

declare dso_local i32 @enter_syscall(%struct.trussinfo*, %struct.TYPE_9__*, %struct.ptrace_lwpinfo*) #1

declare dso_local i32 @exit_syscall(%struct.trussinfo*, %struct.ptrace_lwpinfo*) #1

declare dso_local i32 @report_new_child(%struct.trussinfo*) #1

declare dso_local i32 @report_signal(%struct.trussinfo*, %struct.TYPE_8__*, %struct.ptrace_lwpinfo*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
