; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_logerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_logerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logerror.recursed = internal global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@LOG_SYSLOG = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@LocalHostName = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"syslogd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @logerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logerror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @logerror.recursed, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load i32, i32* @logerror.recursed, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @logerror.recursed, align 4
  %10 = load i64, i64* @errno, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* @errno, align 8
  %16 = call i8* @strerror(i64 %15)
  %17 = call i32 @snprintf(i8* %13, i32 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %16)
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  store i8* %18, i8** %2, align 8
  br label %19

19:                                               ; preds = %12, %7
  store i64 0, i64* @errno, align 8
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %21 = call i32 @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @LOG_SYSLOG, align 4
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @LocalHostName, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @logmsg(i32 %24, i32* null, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* null, i8* %26, i32 0)
  %28 = load i32, i32* @logerror.recursed, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* @logerror.recursed, align 4
  br label %30

30:                                               ; preds = %19, %6
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

declare dso_local i32 @logmsg(i32, i32*, i32, i8*, i32*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
