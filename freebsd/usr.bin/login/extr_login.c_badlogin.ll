; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_badlogin.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_badlogin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@failures = common dso_local global i32 0, align 4
@hflag = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%d LOGIN FAILURE%s FROM %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hostname = common dso_local global i32 0, align 4
@LOG_AUTHPRIV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%d LOGIN FAILURE%s FROM %s, %s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%d LOGIN FAILURE%s ON %s\00", align 1
@tty = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"%d LOGIN FAILURE%s ON %s, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @badlogin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badlogin(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @failures, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %50

6:                                                ; preds = %1
  %7 = load i64, i64* @hflag, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load i32, i32* @LOG_NOTICE, align 4
  %11 = load i32, i32* @failures, align 4
  %12 = load i32, i32* @failures, align 4
  %13 = icmp sgt i32 %12, 1
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %16 = load i32, i32* @hostname, align 4
  %17 = call i32 (i32, i8*, i32, i8*, i32, ...) @syslog(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %15, i32 %16)
  %18 = load i32, i32* @LOG_AUTHPRIV, align 4
  %19 = load i32, i32* @LOG_NOTICE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @failures, align 4
  %22 = load i32, i32* @failures, align 4
  %23 = icmp sgt i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* @hostname, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 (i32, i8*, i32, i8*, i32, ...) @syslog(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %21, i8* %25, i32 %26, i8* %27)
  br label %49

29:                                               ; preds = %6
  %30 = load i32, i32* @LOG_NOTICE, align 4
  %31 = load i32, i32* @failures, align 4
  %32 = load i32, i32* @failures, align 4
  %33 = icmp sgt i32 %32, 1
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load i32, i32* @tty, align 4
  %37 = call i32 (i32, i8*, i32, i8*, i32, ...) @syslog(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %31, i8* %35, i32 %36)
  %38 = load i32, i32* @LOG_AUTHPRIV, align 4
  %39 = load i32, i32* @LOG_NOTICE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @failures, align 4
  %42 = load i32, i32* @failures, align 4
  %43 = icmp sgt i32 %42, 1
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = load i32, i32* @tty, align 4
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 (i32, i8*, i32, i8*, i32, ...) @syslog(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %41, i8* %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %29, %9
  store i32 0, i32* @failures, align 4
  br label %50

50:                                               ; preds = %49, %5
  ret void
}

declare dso_local i32 @syslog(i32, i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
