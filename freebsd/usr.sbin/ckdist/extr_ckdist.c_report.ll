; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%s: Unknown format\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Invalid MD5 format\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Invalid .inf format\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: Can't derive component name\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: %s: Size mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: %s: Checksum mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@sys_errlist = common dso_local global i8** null, align 8
@errno = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"%s: %s: OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @stripath(i8* %10)
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %42 [
    i32 128, label %14
    i32 133, label %17
    i32 134, label %20
    i32 129, label %23
    i32 130, label %26
    i32 132, label %30
    i32 131, label %34
  ]

14:                                               ; preds = %12
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %46

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %46

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %46

23:                                               ; preds = %12
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  br label %46

26:                                               ; preds = %12
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %27, i8* %28)
  br label %46

30:                                               ; preds = %12
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %31, i8* %32)
  br label %46

34:                                               ; preds = %12
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i8**, i8*** @sys_errlist, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %35, i8* %36, i8* %40)
  br label %46

42:                                               ; preds = %12
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %34, %30, %26, %23, %20, %17, %14
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i8* @stripath(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
