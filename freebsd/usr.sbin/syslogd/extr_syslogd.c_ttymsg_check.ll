; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_ttymsg_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_ttymsg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i32 }
%struct.stat = type { i32 }

@ttymsg_check.device = internal global [1024 x i8] zeroinitializer, align 16
@ttymsg_check.errbuf = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iovec*, i32, i8*, i32)* @ttymsg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ttymsg_check(%struct.iovec* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  store %struct.iovec* %0, %struct.iovec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** @_PATH_DEV, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @snprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ttymsg_check.device, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  %14 = call i64 @stat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ttymsg_check.device, i64 0, i64 0), %struct.stat* %10)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @errno, align 4
  %18 = call i8* @strerror(i32 %17)
  %19 = call i32 @snprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ttymsg_check.errbuf, i64 0, i64 0), i32 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ttymsg_check.device, i64 0, i64 0), i8* %18)
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ttymsg_check.errbuf, i64 0, i64 0), i8** %5, align 8
  br label %33

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S_IWGRP, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8* null, i8** %5, align 8
  br label %33

27:                                               ; preds = %20
  %28 = load %struct.iovec*, %struct.iovec** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @ttymsg(%struct.iovec* %28, i32 %29, i8* %30, i32 %31)
  store i8* %32, i8** %5, align 8
  br label %33

33:                                               ; preds = %27, %26, %16
  %34 = load i8*, i8** %5, align 8
  ret i8* %34
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @ttymsg(%struct.iovec*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
