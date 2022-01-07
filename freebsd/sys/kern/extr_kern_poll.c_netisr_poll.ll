; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_netisr_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_netisr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32)* }

@POLL_ONLY = common dso_local global i32 0, align 4
@poll_handlers = common dso_local global i32 0, align 4
@poll_mtx = common dso_local global i32 0, align 4
@netisr_poll_scheduled = common dso_local global i64 0, align 8
@phase = common dso_local global i32 0, align 4
@residual_burst = common dso_local global i32 0, align 4
@poll_start_t = common dso_local global i32 0, align 4
@reg_frac_count = common dso_local global i64 0, align 8
@reg_frac = common dso_local global i64 0, align 8
@POLL_AND_CHECK_STATUS = common dso_local global i32 0, align 4
@poll_burst = common dso_local global i32 0, align 4
@poll_each_burst = common dso_local global i32 0, align 4
@pr = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netisr_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @POLL_ONLY, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @poll_handlers, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %65

8:                                                ; preds = %0
  %9 = call i32 @mtx_lock(i32* @poll_mtx)
  %10 = load i64, i64* @netisr_poll_scheduled, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @mtx_unlock(i32* @poll_mtx)
  br label %65

14:                                               ; preds = %8
  store i64 0, i64* @netisr_poll_scheduled, align 8
  store i32 3, i32* @phase, align 4
  %15 = load i32, i32* @residual_burst, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = call i32 @microuptime(i32* @poll_start_t)
  %19 = load i64, i64* @reg_frac_count, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @reg_frac_count, align 8
  %21 = load i64, i64* @reg_frac, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @POLL_AND_CHECK_STATUS, align 4
  store i32 %24, i32* %3, align 4
  store i64 0, i64* @reg_frac_count, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* @poll_burst, align 4
  store i32 %26, i32* @residual_burst, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i32, i32* @residual_burst, align 4
  %29 = load i32, i32* @poll_each_burst, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @residual_burst, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @poll_each_burst, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @residual_burst, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* @residual_burst, align 4
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %60, %35
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @poll_handlers, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %49, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pr, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 %50(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %44
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %40

63:                                               ; preds = %40
  store i32 4, i32* @phase, align 4
  %64 = call i32 @mtx_unlock(i32* @poll_mtx)
  br label %65

65:                                               ; preds = %63, %12, %7
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @microuptime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
