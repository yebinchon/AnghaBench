; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_report_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_report_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32, %struct.threadinfo* }
%struct.threadinfo = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptrace_lwpinfo = type { i64, i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SIGNAL %u (%s)\00", align 1
@PL_EVENT_SIGNAL = common dso_local global i64 0, align 8
@PL_FLAG_SI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trussinfo*, %struct.TYPE_3__*, %struct.ptrace_lwpinfo*)* @report_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_signal(%struct.trussinfo* %0, %struct.TYPE_3__* %1, %struct.ptrace_lwpinfo* %2) #0 {
  %4 = alloca %struct.trussinfo*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ptrace_lwpinfo*, align 8
  %7 = alloca %struct.threadinfo*, align 8
  %8 = alloca i8*, align 8
  store %struct.trussinfo* %0, %struct.trussinfo** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store %struct.ptrace_lwpinfo* %2, %struct.ptrace_lwpinfo** %6, align 8
  %9 = load %struct.trussinfo*, %struct.trussinfo** %4, align 8
  %10 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %9, i32 0, i32 1
  %11 = load %struct.threadinfo*, %struct.threadinfo** %10, align 8
  store %struct.threadinfo* %11, %struct.threadinfo** %7, align 8
  %12 = load i32, i32* @CLOCK_REALTIME, align 4
  %13 = load %struct.threadinfo*, %struct.threadinfo** %7, align 8
  %14 = getelementptr inbounds %struct.threadinfo, %struct.threadinfo* %13, i32 0, i32 0
  %15 = call i32 @clock_gettime(i32 %12, i32* %14)
  %16 = load %struct.trussinfo*, %struct.trussinfo** %4, align 8
  %17 = call i32 @print_line_prefix(%struct.trussinfo* %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @sysdecode_signal(i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.trussinfo*, %struct.trussinfo** %4, align 8
  %27 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  %34 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %6, align 8
  %35 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PL_EVENT_SIGNAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %25
  %40 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %6, align 8
  %41 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PL_FLAG_SI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.trussinfo*, %struct.trussinfo** %4, align 8
  %48 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ptrace_lwpinfo*, %struct.ptrace_lwpinfo** %6, align 8
  %51 = getelementptr inbounds %struct.ptrace_lwpinfo, %struct.ptrace_lwpinfo* %50, i32 0, i32 2
  %52 = call i32 @decode_siginfo(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %46, %39, %25
  %54 = load %struct.trussinfo*, %struct.trussinfo** %4, align 8
  %55 = getelementptr inbounds %struct.trussinfo, %struct.trussinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @print_line_prefix(%struct.trussinfo*) #1

declare dso_local i8* @sysdecode_signal(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @decode_siginfo(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
