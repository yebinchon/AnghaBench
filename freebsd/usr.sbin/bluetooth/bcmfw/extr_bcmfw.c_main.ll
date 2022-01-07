; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bcmfw/extr_bcmfw.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bcmfw/extr_bcmfw.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"f:hn:m:\00", align 1
@optarg = common dso_local global i8* null, align 8
@BCMFW = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %24 [
    i32 102, label %17
    i32 110, label %19
    i32 109, label %21
    i32 104, label %23
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** %8, align 8
  br label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %6, align 8
  br label %26

21:                                               ; preds = %15
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %7, align 8
  br label %26

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %15, %23
  %25 = call i32 (...) @bcmfw_usage()
  br label %26

26:                                               ; preds = %24, %21, %19, %17
  br label %10

27:                                               ; preds = %10
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30, %27
  %37 = call i32 (...) @bcmfw_usage()
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* @BCMFW, align 4
  %40 = load i32, i32* @LOG_NDELAY, align 4
  %41 = load i32, i32* @LOG_PERROR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @LOG_PID, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @LOG_USER, align 4
  %46 = call i32 @openlog(i32 %39, i32 %44, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @bcmfw_check_device(i8* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %38
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @bcmfw_load_firmware(i8* %53, i8* %54, i8* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %52
  %61 = call i32 (...) @closelog()
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @bcmfw_usage(...) #1

declare dso_local i32 @openlog(i32, i32, i32) #1

declare dso_local i64 @bcmfw_check_device(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @bcmfw_load_firmware(i8*, i8*, i8*) #1

declare dso_local i32 @closelog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
