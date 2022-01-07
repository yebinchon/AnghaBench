; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_suspend_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_lock.c_ttm_suspend_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_lock = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ttms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_suspend_lock(%struct.ttm_lock* %0) #0 {
  %2 = alloca %struct.ttm_lock*, align 8
  store %struct.ttm_lock* %0, %struct.ttm_lock** %2, align 8
  %3 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %4 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %3, i32 0, i32 0
  %5 = call i32 @mtx_lock(i32* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %8 = call i32 @__ttm_suspend_lock(%struct.ttm_lock* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %13 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %14 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %13, i32 0, i32 0
  %15 = call i32 @msleep(%struct.ttm_lock* %12, i32* %14, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %6

16:                                               ; preds = %6
  %17 = load %struct.ttm_lock*, %struct.ttm_lock** %2, align 8
  %18 = getelementptr inbounds %struct.ttm_lock, %struct.ttm_lock* %17, i32 0, i32 0
  %19 = call i32 @mtx_unlock(i32* %18)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @__ttm_suspend_lock(%struct.ttm_lock*) #1

declare dso_local i32 @msleep(%struct.ttm_lock*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
