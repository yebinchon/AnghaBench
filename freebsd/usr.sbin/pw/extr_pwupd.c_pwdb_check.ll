; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pwupd.c_pwdb_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pwupd.c_pwdb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@_PATH_PWD_MKDB = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_PATH_PWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@_MASTERPASSWD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pwdb_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwdb_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i8*], align 16
  store i32 0, i32* %1, align 4
  %4 = load i8*, i8** @_PATH_PWD_MKDB, align 8
  %5 = load i32, i32* %1, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %1, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %7
  store i8* %4, i8** %8, align 8
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %14 = load i32, i32* @_PATH_PWD, align 4
  %15 = call i64 @strcmp(i8* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %0
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %20
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %25
  store i8* %22, i8** %26, align 8
  br label %27

27:                                               ; preds = %17, %0
  %28 = load i32, i32* @_MASTERPASSWD, align 4
  %29 = call i8* @getpwpath(i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %32
  store i8* %29, i8** %33, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 %35
  store i8* null, i8** %36, align 8
  %37 = call i32 (...) @fork()
  store i32 %37, i32* %2, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %1, align 4
  br label %60

41:                                               ; preds = %27
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %46 = load i8*, i8** %45, align 16
  %47 = getelementptr inbounds [10 x i8*], [10 x i8*]* %3, i64 0, i64 0
  %48 = call i32 @execv(i8* %46, i8** %47)
  %49 = call i32 @_exit(i32 1) #3
  unreachable

50:                                               ; preds = %41
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @waitpid(i32 %51, i32* %1, i32 0)
  %53 = load i32, i32* %1, align 4
  %54 = call i64 @WEXITSTATUS(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %50
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @getpwpath(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @execv(i8*, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
