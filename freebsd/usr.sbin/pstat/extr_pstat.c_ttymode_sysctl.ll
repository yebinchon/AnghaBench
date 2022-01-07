; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_ttymode_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_ttymode_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xtty = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@hdr = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"kern.ttys\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"sysctlbyname()\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"realloc()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ttymode_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttymode_sysctl() #0 {
  %1 = alloca %struct.xtty*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @hdr, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %5)
  store i64 4, i64* %2, align 8
  %7 = call %struct.xtty* @malloc(i64 4)
  store %struct.xtty* %7, %struct.xtty** %1, align 8
  %8 = icmp eq %struct.xtty* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  br label %12

12:                                               ; preds = %31, %11
  %13 = load %struct.xtty*, %struct.xtty** %1, align 8
  %14 = call i32 @sysctlbyname(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.xtty* %13, i64* %2, i32 0, i32 0)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOMEM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %2, align 8
  %24 = mul i64 %23, 2
  store i64 %24, i64* %2, align 8
  %25 = load %struct.xtty*, %struct.xtty** %1, align 8
  %26 = load i64, i64* %2, align 8
  %27 = call %struct.xtty* @realloc(%struct.xtty* %25, i64 %26)
  store %struct.xtty* %27, %struct.xtty** %1, align 8
  %28 = icmp eq %struct.xtty* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  br label %12

32:                                               ; preds = %12
  %33 = load i64, i64* %2, align 8
  %34 = udiv i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %46, %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.xtty*, %struct.xtty** %1, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xtty, %struct.xtty* %41, i64 %43
  %45 = call i32 @ttyprt(%struct.xtty* %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %36

49:                                               ; preds = %36
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local %struct.xtty* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, %struct.xtty*, i64*, i32, i32) #1

declare dso_local %struct.xtty* @realloc(%struct.xtty*, i64) #1

declare dso_local i32 @ttyprt(%struct.xtty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
