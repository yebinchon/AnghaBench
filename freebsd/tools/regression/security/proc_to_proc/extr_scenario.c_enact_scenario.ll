; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/security/proc_to_proc/extr_scenario.c_enact_scenario.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/security/proc_to_proc/extr_scenario.c_enact_scenario.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32 }

@LOOP_MAX = common dso_local global i32 0, align 4
@scenarios = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"cred_set\00", align 1
@errno = common dso_local global i32 0, align 4
@PT_ATTACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ptrace\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"/tmp/testuid_ktrace.XXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@KTROP_SET = common dso_local global i32 0, align 4
@KTRFAC_SYSCALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ktrace\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"sighup\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"sigsegv\00", align 1
@PRIO_PROCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"see\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"broken\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"[%s].%s: expected %s, got %s\0A  \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @enact_scenario to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enact_scenario(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %182, %1
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @LOOP_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %185

16:                                               ; preds = %11
  %17 = call i32 (...) @fork()
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %36 [
    i32 -1, label %19
    i32 0, label %20
  ]

19:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %186

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cred_set(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %186

33:                                               ; preds = %20
  %34 = call i32 @sleep(i32 200)
  %35 = call i32 @exit(i32 0) #3
  unreachable

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = call i32 @sleep(i32 1)
  %39 = call i32 (...) @fork()
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %173 [
    i32 -1, label %41
    i32 0, label %42
  ]

41:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %186

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cred_set(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %186

55:                                               ; preds = %42
  store i32 0, i32* @errno, align 4
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %134 [
    i32 132, label %57
    i32 133, label %68
    i32 129, label %90
    i32 128, label %101
    i32 130, label %112
    i32 131, label %123
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @PT_ATTACH, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ptrace(i32 %58, i32 %59, i32* null, i32 0)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @errno, align 4
  store i32 %61, i32* %8, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %9, align 4
  br label %135

68:                                               ; preds = %55
  %69 = call i8* @mktemp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %8, align 4
  %74 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %135

75:                                               ; preds = %68
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @KTROP_SET, align 4
  %78 = load i32, i32* @KTRFAC_SYSCALL, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @ktrace(i8* %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @errno, align 4
  store i32 %81, i32* %8, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @unlink(i8* %88)
  br label %135

90:                                               ; preds = %55
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @SIGHUP, align 4
  %93 = call i32 @kill(i32 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @errno, align 4
  store i32 %94, i32* %8, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %9, align 4
  br label %135

101:                                              ; preds = %55
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @SIGSEGV, align 4
  %104 = call i32 @kill(i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @errno, align 4
  store i32 %105, i32* %8, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %9, align 4
  br label %135

112:                                              ; preds = %55
  %113 = load i32, i32* @PRIO_PROCESS, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @getpriority(i32 %113, i32 %114)
  %116 = load i32, i32* @errno, align 4
  store i32 %116, i32* %8, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %9, align 4
  br label %135

123:                                              ; preds = %55
  %124 = load i32, i32* @PRIO_PROCESS, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @setpriority(i32 %124, i32 %125, i32 0)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @errno, align 4
  store i32 %127, i32* %8, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %9, align 4
  br label %135

134:                                              ; preds = %55
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %6, align 8
  br label %135

135:                                              ; preds = %134, %123, %112, %101, %90, %75, %72, %57
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %171

139:                                              ; preds = %135
  %140 = load i32, i32* @stdout, align 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 6
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i8* @errno_to_string(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = call i8* @errno_to_string(i32 %150)
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %146, i8* %147, i8* %149, i8* %151)
  %153 = load i32, i32* @stdout, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @cred_print(i32 %153, i32 %159)
  %161 = load i32, i32* @stdout, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scenarios, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @cred_print(i32 %161, i32 %167)
  %169 = load i32, i32* @stdout, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %171

171:                                              ; preds = %139, %135
  %172 = call i32 @exit(i32 0) #3
  unreachable

173:                                              ; preds = %37
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @waitpid(i32 %175, i32* null, i32 0)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @SIGKILL, align 4
  %179 = call i32 @kill(i32 %177, i32 %178)
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @waitpid(i32 %180, i32* null, i32 0)
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %174
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %11

185:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %52, %41, %30, %19
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @cred_set(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i8* @mktemp(i8*) #1

declare dso_local i32 @ktrace(i8*, i32, i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @getpriority(i32, i32) #1

declare dso_local i32 @setpriority(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @errno_to_string(i32) #1

declare dso_local i32 @cred_print(i32, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
