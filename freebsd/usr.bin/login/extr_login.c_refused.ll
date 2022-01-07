; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_refused.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_refused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s.\0A\00", align 1
@hflag = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"LOGIN %s REFUSED (%s) FROM %s ON TTY %s\00", align 1
@pwd = common dso_local global %struct.TYPE_2__* null, align 8
@hostname = common dso_local global i32 0, align 4
@tty = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"LOGIN %s REFUSED (%s) ON TTY %s\00", align 1
@SLEEP_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @refused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refused(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i64, i64* @hflag, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32, i32* @LOG_NOTICE, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @hostname, align 4
  %22 = load i32, i32* @tty, align 4
  %23 = call i32 (i32, i8*, i32, i8*, i32, ...) @syslog(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %19, i8* %20, i32 %21, i32 %22)
  br label %32

24:                                               ; preds = %12
  %25 = load i32, i32* @LOG_NOTICE, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pwd, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @tty, align 4
  %31 = call i32 (i32, i8*, i32, i8*, i32, ...) @syslog(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %15
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @SLEEP_EXIT, align 4
  %37 = call i32 @bail(i32 %36, i32 1)
  br label %38

38:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @bail(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
