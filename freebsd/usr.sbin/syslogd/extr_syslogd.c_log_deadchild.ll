; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_log_deadchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_log_deadchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"due to signal\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"with status\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Logging subprocess %d (%s) exited %s %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @log_deadchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_deadchild(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @WIFSIGNALED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @WTERMSIG(i32 %14)
  store i32 %15, i32* %7, align 4
  br label %23

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @WEXITSTATUS(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %32

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %13
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %25 = load i32, i32* %4, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @snprintf(i8* %24, i32 256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %25, i8* %26, i8* %27, i32 %28)
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %31 = call i32 @logerror(i8* %30)
  br label %32

32:                                               ; preds = %23, %21
  ret void
}

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @logerror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
