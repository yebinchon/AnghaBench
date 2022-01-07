; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_setaffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_nmreplay.c_setaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unable to set affinity: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@PRIO_PROCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to set priority: %s\00", align 1
@SCHED_RR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to set scheduler: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @setaffinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setaffinity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sched_param, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

9:                                                ; preds = %1
  %10 = call i32 @CPU_ZERO(i32* %4)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CPU_SET(i32 %11, i32* %4)
  %13 = call i32 (...) @pthread_self()
  %14 = call i64 @pthread_setaffinity_np(i32 %13, i32 4, i32* %4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @WWW(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %9
  %21 = load i32, i32* @PRIO_PROCESS, align 4
  %22 = call i64 @setpriority(i32 %21, i32 0, i32 -10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @WWW(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = call i32 @bzero(%struct.sched_param* %5, i32 4)
  %30 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  store i32 10, i32* %30, align 4
  %31 = load i32, i32* @SCHED_RR, align 4
  %32 = call i64 @sched_setscheduler(i32 0, i32 %31, %struct.sched_param* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @WWW(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %8
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @pthread_setaffinity_np(i32, i32, i32*) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @WWW(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @setpriority(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.sched_param*, i32) #1

declare dso_local i64 @sched_setscheduler(i32, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
