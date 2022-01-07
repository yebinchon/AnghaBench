; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_start_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_sync_kloop_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32 }

@THRET_FAILURE = common dso_local global i8* null, align 8
@sync_kloop_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pthread_create(kloop): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pthread_join(kloop): %s\0A\00", align 1
@THRET_SUCCESS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @sync_kloop_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_kloop_start_stop(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %7 = load i8*, i8** @THRET_FAILURE, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i32, i32* @sync_kloop_worker, align 4
  %9 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %10 = call i32 @pthread_create(i32* %4, i32* null, i32 %8, %struct.TestContext* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @strerror(i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 -1, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %19 = call i32 @sync_kloop_stop(%struct.TestContext* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pthread_join(i32 %25, i8** %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @strerror(i32 %30)
  %32 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** @THRET_SUCCESS, align 8
  %36 = icmp eq i8* %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 -1
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %22, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TestContext*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sync_kloop_stop(%struct.TestContext*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
