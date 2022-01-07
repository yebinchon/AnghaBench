; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cron/cron/extr_cron.c_open_pidfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cron/cron/extr_cron.c_open_pidfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FNAME = common dso_local global i32 0, align 4
@MAX_TEMPSTR = common dso_local global i32 0, align 4
@PIDFILE = common dso_local global i8* null, align 8
@PIDDIR = common dso_local global i32 0, align 4
@pfh = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"cron already running, pid: %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't open or create %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CRON\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DEATH\00", align 1
@ERROR_EXIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @open_pidfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_pidfile() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_FNAME, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @MAX_TEMPSTR, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %12 = trunc i64 %6 to i32
  %13 = load i8*, i8** @PIDFILE, align 8
  %14 = load i32, i32* @PIDDIR, align 4
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %8, i32 %12, i8* %13, i32 %14)
  %16 = call i32* @pidfile_open(i8* %8, i32 384, i32* %4)
  store i32* %16, i32** @pfh, align 8
  %17 = load i32*, i32** @pfh, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %0
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EEXIST, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = trunc i64 %10 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %32

27:                                               ; preds = %19
  %28 = trunc i64 %10 to i32
  %29 = load i64, i64* @errno, align 8
  %30 = call i8* @strerror(i64 %29)
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %8, i8* %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = call i32 (...) @getpid()
  %34 = call i32 @log_it(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %11)
  %35 = load i32, i32* @ERROR_EXIT, align 4
  %36 = call i32 @errx(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  br label %37

37:                                               ; preds = %32, %0
  %38 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32* @pidfile_open(i8*, i32, i32*) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @log_it(i8*, i32, i8*, i8*) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
