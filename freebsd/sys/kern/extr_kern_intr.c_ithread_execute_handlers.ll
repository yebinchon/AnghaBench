; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_ithread_execute_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_ithread_execute_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.intr_event = type { i32, i64, i8*, i32, i32 (i32)*, i32, i32 }

@IE_SOFT = common dso_local global i32 0, align 4
@intr_storm_threshold = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"interrupt storm detected on \22%s\22; throttling interrupt source\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"istorm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.intr_event*)* @ithread_execute_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ithread_execute_handlers(%struct.proc* %0, %struct.intr_event* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.intr_event*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.intr_event* %1, %struct.intr_event** %4, align 8
  %5 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %6 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IE_SOFT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @THREAD_NO_SLEEPING()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %16 = call i32 @intr_event_execute_handlers(%struct.proc* %14, %struct.intr_event* %15)
  %17 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %18 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IE_SOFT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  %24 = call i32 (...) @THREAD_SLEEPING_OK()
  br label %25

25:                                               ; preds = %23, %13
  %26 = load i64, i64* @intr_storm_threshold, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %30 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @intr_storm_threshold, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %36 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IE_SOFT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %34
  %42 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %43 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %42, i32 0, i32 6
  %44 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %45 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %44, i32 0, i32 5
  %46 = call i64 @ppsratecheck(i32* %43, i32* %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %50 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %60

55:                                               ; preds = %34, %28, %25
  %56 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %57 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %53
  %61 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %62 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %61, i32 0, i32 4
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = icmp ne i32 (i32)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %67 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %66, i32 0, i32 4
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %70 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %68(i32 %71)
  br label %73

73:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @THREAD_NO_SLEEPING(...) #1

declare dso_local i32 @intr_event_execute_handlers(%struct.proc*, %struct.intr_event*) #1

declare dso_local i32 @THREAD_SLEEPING_OK(...) #1

declare dso_local i64 @ppsratecheck(i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
