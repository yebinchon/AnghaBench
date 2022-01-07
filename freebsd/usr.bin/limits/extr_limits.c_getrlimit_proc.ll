; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/limits/extr_limits.c_getrlimit_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/limits/extr_limits.c_getrlimit_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_RLIMIT = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sysctl: kern.proc.rlimit: %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sysctl() returns wrong size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.rlimit*)* @getrlimit_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getrlimit_proc(i32 %0, i32 %1, %struct.rlimit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rlimit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rlimit* %2, %struct.rlimit** %6, align 8
  %10 = load i32, i32* @CTL_KERN, align 4
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load i32, i32* @KERN_PROC, align 4
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @KERN_PROC_RLIMIT, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %18, i32* %19, align 16
  store i64 4, i64* %9, align 8
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %21 = load %struct.rlimit*, %struct.rlimit** %6, align 8
  %22 = call i32 @sysctl(i32* %20, i32 5, %struct.rlimit* %21, i64* %9, i32* null, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  %34 = call i32 @errx(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @sysctl(i32*, i32, %struct.rlimit*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
