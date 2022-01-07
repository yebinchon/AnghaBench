; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_routepr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_routepr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@live = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"net.my_fibnum\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"net.fibs\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%d: invalid fib\00", align 1
@CLOCK_UPTIME = common dso_local global i32 0, align 4
@uptime = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"clock_gettime() failed\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"route-information\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"{T:Routing tables}\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" ({L:fib}: {:fib/%d})\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @routepr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @live, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %54

10:                                               ; preds = %2
  store i64 4, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = call i32 @sysctlbyname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %3, i64* %5, i32* null, i32 0)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %13, %10
  %18 = call i32 @sysctlbyname(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %6, i64* %5, i32* null, i32 0)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @EX_USAGE, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @errx(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* @CLOCK_UPTIME, align 4
  %35 = call i64 @clock_gettime(i32 %34, i32* @uptime)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EX_OSERR, align 4
  %39 = call i32 @err(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33
  %41 = call i32 @xo_open_container(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %40
  %49 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @p_rtable_sysctl(i32 %50, i32 %51)
  %53 = call i32 @xo_close_container(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %48, %9
  ret void
}

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i64 @clock_gettime(i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @p_rtable_sysctl(i32, i32) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
