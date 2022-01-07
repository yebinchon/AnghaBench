; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ifmcstat/extr_ifmcstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ifmcstat/extr_ifmcstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@options = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ifindex = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: unknown interface\0A\00", align 1
@EX_NOHOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@AF_LINK = common dso_local global i64 0, align 8
@af = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: unknown address family\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@Kflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %44, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i32, i32* @options, align 4
  %12 = call i32 @getopt(i32 %9, i8** %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %42 [
    i32 105, label %16
    i32 102, label %27
    i32 118, label %39
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** @optarg, align 8
  %18 = call i32 @if_nametoindex(i8* %17)
  store i32 %18, i32* @ifindex, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @EX_NOHOST, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable

26:                                               ; preds = %16
  br label %44

27:                                               ; preds = %14
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @AF_LINK, align 8
  store i64 %32, i64* @af, align 8
  br label %44

33:                                               ; preds = %27
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EX_USAGE, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %14
  %40 = load i64, i64* @vflag, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @vflag, align 8
  br label %44

42:                                               ; preds = %14
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %42, %39, %31, %26
  br label %8

45:                                               ; preds = %8
  %46 = load i64, i64* @af, align 8
  %47 = load i64, i64* @AF_LINK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i64, i64* @vflag, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %49, %45
  %55 = call i32 (...) @ifmcstat_getifmaddrs()
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EX_OSERR, align 4
  %60 = call i32 @exit(i32 %59) #3
  unreachable

61:                                               ; preds = %54
  %62 = load i32, i32* @EX_OK, align 4
  %63 = call i32 @exit(i32 %62) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i32) #1

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @ifmcstat_getifmaddrs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
