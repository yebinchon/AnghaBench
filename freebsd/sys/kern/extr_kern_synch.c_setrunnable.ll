; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_setrunnable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_setrunnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PRS_ZOMBIE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"setrunnable: pid %d is a zombie\00", align 1
@TDI_SWAPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"state is 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"setrunnable(2)\00", align 1
@TDF_INMEM = common dso_local global i32 0, align 4
@TDF_SWAPINREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setrunnable(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %4 = load %struct.thread*, %struct.thread** %3, align 8
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %4, i32 %5)
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PRS_ZOMBIE, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %14, i8* %21)
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %36 [
    i32 129, label %26
    i32 128, label %26
    i32 130, label %27
    i32 131, label %35
  ]

26:                                               ; preds = %1, %1
  store i32 0, i32* %2, align 4
  br label %67

27:                                               ; preds = %1
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TDI_SWAPPED, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %67

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %1, %34
  br label %42

36:                                               ; preds = %1
  %37 = load %struct.thread*, %struct.thread** %3, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %35
  %43 = load %struct.thread*, %struct.thread** %3, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TDF_INMEM, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load %struct.thread*, %struct.thread** %3, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TDF_SWAPINREQ, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @TDF_SWAPINREQ, align 4
  %58 = load %struct.thread*, %struct.thread** %3, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  store i32 1, i32* %2, align 4
  br label %67

62:                                               ; preds = %49
  br label %66

63:                                               ; preds = %42
  %64 = load %struct.thread*, %struct.thread** %3, align 8
  %65 = call i32 @sched_wakeup(%struct.thread* %64)
  br label %66

66:                                               ; preds = %63, %62
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %56, %33, %26
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @sched_wakeup(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
