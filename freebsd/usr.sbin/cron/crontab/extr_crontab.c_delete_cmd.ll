; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cron/crontab/extr_crontab.c_delete_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cron/crontab/extr_crontab.c_delete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FNAME = common dso_local global i32 0, align 4
@fflag = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"remove crontab for %s? \00", align 1
@User = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@RealUser = common dso_local global i32 0, align 4
@Pid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ERROR_EXIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"no crontab for %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_cmd() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_FNAME, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @fflag, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = call i64 @isatty(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** @User, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 (...) @getchar()
  store i32 %20, i32* %3, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %30, %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = call i32 (...) @getchar()
  store i32 %31, i32* %3, align 4
  br label %21

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 121
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 89
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %65

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %12, %0
  %41 = load i32, i32* @RealUser, align 4
  %42 = load i32, i32* @Pid, align 4
  %43 = load i8*, i8** @User, align 8
  %44 = call i32 @log_it(i32 %41, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = trunc i64 %7 to i32
  %46 = load i8*, i8** @User, align 8
  %47 = call i8* @CRON_TAB(i8* %46)
  %48 = call i32 @snprintf(i8* %9, i32 %45, i8* %47)
  %49 = call i64 @unlink(i8* %9)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %40
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @ENOENT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @ERROR_EXIT, align 4
  %57 = load i8*, i8** @User, align 8
  %58 = call i32 @errx(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @ERROR_EXIT, align 4
  %61 = call i32 @err(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %40
  %64 = call i32 (...) @poke_daemon()
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %38
  %66 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %69 [
    i32 0, label %68
    i32 1, label %68
  ]

68:                                               ; preds = %65, %65
  ret void

69:                                               ; preds = %65
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isatty(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @getchar(...) #2

declare dso_local i32 @log_it(i32, i32, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @CRON_TAB(i8*) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @poke_daemon(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
