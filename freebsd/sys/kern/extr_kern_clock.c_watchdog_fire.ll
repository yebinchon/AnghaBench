; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clock.c_watchdog_fire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clock.c_watchdog_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intrcnt = common dso_local global i64* null, align 8
@intrnames = common dso_local global i8* null, align 8
@sintrcnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"interrupt                   total\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%-12s %20lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Total        %20ju\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"watchdog timeout\00", align 1
@KDB_WHY_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @watchdog_fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_fire() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = load i64*, i64** @intrcnt, align 8
  store i64* %5, i64** %3, align 8
  %6 = load i8*, i8** @intrnames, align 8
  store i8* %6, i8** %4, align 8
  store i64 0, i64* %2, align 8
  %7 = load i32, i32* @sintrcnt, align 4
  %8 = sext i32 %7 to i64
  %9 = udiv i64 %8, 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %1, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %25, %0
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %1, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %21, i64 %23)
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add nsw i64 %27, 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 %28
  store i8* %30, i8** %4, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %3, align 8
  %33 = load i64, i64* %31, align 8
  %34 = load i64, i64* %2, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %2, align 8
  br label %12

36:                                               ; preds = %12
  %37 = load i64, i64* %2, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = call i32 @panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
