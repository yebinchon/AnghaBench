; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_handler_barrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_handler_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_handler = type { i32, %struct.intr_event* }
%struct.intr_event = type { i32, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@IH_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"update for a removed handler\00", align 1
@IH_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ih_barr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intr_handler*)* @intr_handler_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intr_handler_barrier(%struct.intr_handler* %0) #0 {
  %2 = alloca %struct.intr_handler*, align 8
  %3 = alloca %struct.intr_event*, align 8
  store %struct.intr_handler* %0, %struct.intr_handler** %2, align 8
  %4 = load %struct.intr_handler*, %struct.intr_handler** %2, align 8
  %5 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %4, i32 0, i32 1
  %6 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  store %struct.intr_event* %6, %struct.intr_event** %3, align 8
  %7 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %8 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %7, i32 0, i32 0
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load %struct.intr_handler*, %struct.intr_handler** %2, align 8
  %12 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IH_DEAD, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %20 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %25 = call i32 @intr_event_barrier(%struct.intr_event* %24)
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.intr_handler*, %struct.intr_handler** %2, align 8
  %28 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IH_CHANGED, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, i32* @IH_CHANGED, align 4
  %35 = load %struct.intr_handler*, %struct.intr_handler** %2, align 8
  %36 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %40 = call i32 @intr_event_schedule_thread(%struct.intr_event* %39)
  br label %41

41:                                               ; preds = %33, %26
  br label %42

42:                                               ; preds = %49, %41
  %43 = load %struct.intr_handler*, %struct.intr_handler** %2, align 8
  %44 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IH_CHANGED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.intr_handler*, %struct.intr_handler** %2, align 8
  %51 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %52 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %51, i32 0, i32 0
  %53 = call i32 @msleep(%struct.intr_handler* %50, i32* %52, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %42

54:                                               ; preds = %23, %42
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @intr_event_barrier(%struct.intr_event*) #1

declare dso_local i32 @intr_event_schedule_thread(%struct.intr_event*) #1

declare dso_local i32 @msleep(%struct.intr_handler*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
